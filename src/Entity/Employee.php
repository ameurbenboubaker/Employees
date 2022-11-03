<?php

namespace App\Entity;

use App\Repository\EmployeeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EmployeeRepository::class)
 * @ORM\Table(name="emp")
 */
class Employee
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer", name="EMPNO")
     */
    private $EMPNO ;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $ENAME;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $JOB;

    /**
     * @ORM\ManyToOne(targetEntity=Employee::class, inversedBy="employees")
     * @ORM\JoinColumn(name="MGR", referencedColumnName="EMPNO")
     */
    private $MGR ;

    /**
     * @ORM\Column(type="date", nullable=false)
     */
    private $HIREDATE;

    /**
     * @ORM\Column(type="integer", nullable=false)
     */
    private $SAL ;

    /**
     * @ORM\Column(type="integer", nullable=true, options={"default" : NULL})
     */
    private $COMM;

    public $LEVEL;

    /**
     * @ORM\ManyToOne(targetEntity=Department::class, inversedBy="employees")
     * @ORM\JoinColumn(name="DEPTNO", referencedColumnName="DEPTNO", nullable=false)
     */
    private $DEPTNO;

    /**
     * @ORM\OneToMany(targetEntity=Employee::class, mappedBy="MGR")
     */
    private $employees;

    public function __construct()
    {
        $this->employees = new ArrayCollection();
    }



    public function getEMPNO(): ?int
    {
        return $this->EMPNO;
    }
    public function setEMPNO(int $EMPNO): self
    {
        $this->EMPNO = $EMPNO;

        return $this;
    }
    public function getLEVEL(): ?int
    {
        return $this->LEVEL;
    }
    public function setLEVEL(int $LEVEL): self
    {
        $this->LEVEL = $LEVEL;
        return $this;
    }

    public function getENAME(): ?string
    {
        return $this->ENAME;
    }

    public function setENAME(string $ENAME): self
    {
        $this->ENAME = $ENAME;

        return $this;
    }

    public function getJOB(): ?string
    {
        return $this->JOB;
    }

    public function setJOB(string $JOB): self
    {
        $this->JOB = $JOB;

        return $this;
    }

    public function getMGR (): ?Employee
    {
        return $this->MGR ;
    }

    public function setMGR (Employee $MGR ): void
    {
        $this->addEmployee($this) ;

        $this->MGR = $MGR;
    }

    public function getHIREDATE(): ?\DateTimeInterface
    {
        return $this->HIREDATE;
    }

    public function setHIREDATE(?\DateTimeInterface $HIREDATE): self
    {
        $this->HIREDATE = $HIREDATE;

        return $this;
    }

    public function getSAL (): ?int
    {
        return $this->SAL ;
    }

    public function setSAL (int $SAL ): self
    {
        $this->SAL = $SAL ;

        return $this;
    }

    public function getCOMM (): ?int
    {
        return $this->COMM;
    }

    public function setCOMM (int $COMM ): self
    {
        $this->COMM = $COMM ;

        return $this;
    }

    public function getDEPTNO (): ?Department
    {
        return $this->DEPTNO ;
    }

    public function setDEPTNO (Department $DEPTNO ): self
    {
        $this->DEPTNO = $DEPTNO ;

        return $this;
    }

    /**
     * @return Collection<int, Employee>
     */
    public function getEmployees(): Collection
    {
        return $this->employees;
    }
    /**
     * @param Employee $e
     */
    public function addEmployee(Employee $e)
    {
        if(!$this->employees->contains($e)){
            $this->employees[] = $e;
        }

    }

    

    public function __toString()
    {
        return $this->ENAME;
    }


}