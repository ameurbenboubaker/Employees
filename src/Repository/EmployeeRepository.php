<?php

namespace App\Repository;

use App\Entity\Employee;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Employee>
 *
 * @method Employee|null find($id, $lockMode = null, $lockVersion = null)
 * @method Employee|null findOneBy(array $criteria, array $orderBy = null)
 * @method Employee[]    findAll()
 * @method Employee[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EmployeeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Employee::class);
    }

    public function add(Employee $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    public function remove(Employee $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    public function findManagers(string $key): array
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT p
            FROM App\Entity\Employee p
            WHERE p.JOB = :key
            ORDER BY p.EMPNO ASC'
        )->setParameter('key', $key);

        // returns an array of Product objects
        return $query->getResult();
    }
    public function findChildrens(int $key): array
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT p
            FROM App\Entity\Employee p
            WHERE p.MGR = :key
            ORDER BY p.EMPNO ASC'
        )->setParameter('key', $key);

        // returns an array of Product objects
        return $query->getResult();
    }
    
    public function getDeepchildren(Employee $manager, int $sum): int
    {
        
        $arr = $this->findChildrens($manager->getEMPNO());
        if(sizeof($arr)>0)
        {
            $sum = $sum + sizeof($arr);
            foreach($arr as $k=>$m)
            {                    
                $sum = $this->getDeepchildren($m,$sum);
            }
        }
        return $sum;

    }



}