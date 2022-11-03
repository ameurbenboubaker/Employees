<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Employee;
use App\Repository\EmployeeRepository;

class AdminHomeController extends AbstractController
{    
    /**
     * @Route("/admin", name="admin_home")
     */
    public function index(): Response
    {
        $repo = $this->getDoctrine()->getRepository(Employee::class);
        $managers = $repo->findManagers('MANAGER');
       
        $nbEmployees = [];
        foreach($managers as $key=>$manager)
        {
            $nbEmployees[$manager->getEMPNO()] = $repo->getDeepchildren($manager,0);
        }
      
        return $this->render('admin_home/index.html.twig', ['managers'=>$managers,'nbemployees'=>$nbEmployees,
            'controller_name' => 'AdminHomeController',
        ]);
    }
}
