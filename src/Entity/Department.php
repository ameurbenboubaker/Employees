<?php

namespace App\Entity;

use App\Repository\DepartmentRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=DepartmentRepository::class)
 * @ORM\Table(name="dept")
 */
class Department
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer", name="DEPTNO")
     */
    private $DEPTNO;

    /**
     * @ORM\Column(type="string", length=20, nullable=false)
     */
    private $DNAME;

    /**
     * @ORM\Column(type="string", length=20, nullable=false)
     */
    private $LOC;

    /**
     * @ORM\OneToMany(targetEntity=Employee::class, mappedBy="DEPTNO")
     */
    private $employee;


    public function __construct()
    {
        $this->employees = new ArrayCollection();
    }

    public function getDEPTNO(): ?int
    {
        return $this->DEPTNO;
    }

    public function getDNAME(): ?string
    {
        return $this->DNAME;
    }

    public function setDNAME(string $DNAME): self
    {
        $this->DNAME = $DNAME;

        return $this;
    }

    public function getLOC(): ?string
    {
        return $this->LOC;
    }

    public function setLOC(string $LOC): self
    {
        $this->LOC = $LOC;

        return $this;
    }

    /**
     * @return Collection<int, Employee>
     */
    public function getEmployee(): Collection
    {
        return $this->employee;
    }
    public function addEmployee(Employee $emp): self
    {
        if (!$this->employee->contains($emp)) {
            $this->employee[] = $emp;
            $emp->setDEPTNO($this);
        }

        return $this;
    }
    public function removeEmployee(Employee $emp): self
    {
        if ($this->employee->removeElement($emp)) {
            // set the owning side to null (unless already changed)
            if ($emp->getDEPTNO() === $this) {
                $emp->setDEPTNO(null);
            }
        }

        return $this;
    }
    public function __toString()
    {
        return $this->DNAME;
    }

}