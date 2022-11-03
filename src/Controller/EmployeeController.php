<?php

namespace App\Controller;

use App\Entity\Employee;
use App\Form\EmployeeType;
use App\Repository\EmployeeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/employee")
 */
class EmployeeController extends AbstractController
{
    /**
     * @Route("/", name="app_employee_index", methods={"GET"})
     */
    public function index(EmployeeRepository $employeeRepository): Response
    {
        $resemp = $employeeRepository->findAll();        
        $res = [];
        $resid = [];
        $i=0;
        $initilsize = sizeof($resemp)+1;        
        while(count($resemp) != 0) 
        {
            if($i==$initilsize)
                $i=0;           
            if(!isset($resemp[$i])){
                $i+=1;
                continue;
            }
            if( sizeof($res)==0  || !$resemp[$i]->getMGR()->getEMPNO())
            {                
                $siz = sizeof($res);
                $res[$siz] = $resemp[$i];
                $res[$siz]->setLEVEL(1);
                $resid[$siz] = $resemp[$i]->getEMPNO();
                unset($resemp[$i]);
                $i+=1;
            }                
            else
            {
                $mgr = $resemp[$i]->getMGR()->getEMPNO();
                if(in_array($mgr, $resid))
                {
                    $j = array_search($mgr, $resid,true);                    
                    $copyres = $res;
                    $res[$j+1] = $resemp[$i];

                    $res[$j+1]->setLEVEL($res[$j]->getLEVEL() + 1); 
                    $resid[$j+1] = $resemp[$i]->getEMPNO();
                    unset($resemp[$i]);      
                    while($j+2<= sizeof($copyres))
                    {
                        $res[$j+2] = $copyres[$j+1];
                        $resid[$j+2] = $copyres[$j+1]->getEMPNO();
                        $j+=1;
                    }                    
                    $i+=1;
                }
                else{
                    $i+=1;                
                }                    
            }
        }
        return $this->render('employee/index.html.twig', [
            'employees' => $res, 'title'=>'Liste des employés'
        ]);
    }

    /**
     * @Route("/new", name="app_employee_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $employee = new Employee();
        $form = $this->createForm(EmployeeType::class, $employee);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($employee);
            $entityManager->flush();

            return $this->redirectToRoute('app_employee_index');
        }

        return $this->render('employee/new.html.twig', [
            'employee' => $employee,
            'form' => $form->createView(),
            'title'=>'créer employé'
        ]);
    }

    /**
     * @Route("/new", name="app_employee_new", methods={"GET", "POST"})
     */
/*    public function new(Request $request, EmployeeRepository $employeeRepository): Response
    {
        $employee = new Employee();
        $form = $this->createForm(EmployeeType::class, $employee);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $employeeRepository->add($employee, true);

            return $this->redirectToRoute('app_employee_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('employee/new.html.twig', [
            'employee' => $employee,
            'form' => $form,
        ]);
    }
*/
    /**
     * @Route("/{EMPNO}", name="app_employee_show", methods={"GET"})
     */
    public function show(Employee $employee): Response
    {
        return $this->render('employee/show.html.twig', [
            'employee' => $employee,
            'title'=>'Employé'
        ]);
    }

    /**
     * @Route("/{EMPNO}/edit", name="app_employee_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Employee $employee): Response
    {
        $form = $this->createForm(EmployeeType::class, $employee);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('app_employee_index');
        }

        return $this->render('employee/edit.html.twig', [
            'employee' => $employee,
            'form' => $form->createView(),
            'title'=>'Editer employé'
        ]);
    }
  /*  public function edit(Request $request, Employee $employee, EmployeeRepository $employeeRepository): Response
    {
        $form = $this->createForm(EmployeeType::class, $employee);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $employeeRepository->add($employee, true);

            return $this->redirectToRoute('app_employee_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('employee/edit.html.twig', [
            'employee' => $employee,
            'form' => $form,
        ]);
    }*/

    /**
     * @Route("/{EMPNO}", name="app_employee_delete", methods={"POST"})
     */
    public function delete(Request $request, Employee $employee, EmployeeRepository $employeeRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$employee->getEMPNO(), $request->request->get('_token'))) {
            $employeeRepository->remove($employee, true);
        }

        return $this->redirectToRoute('app_employee_index', [], Response::HTTP_SEE_OTHER);
    }
}
