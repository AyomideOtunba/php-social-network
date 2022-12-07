<?php
namespace Mentorfied\CMS;                                   // Declare namespace

class Department
{                                                        // Define Member class
    protected $db;                                       // Holds reference to Database object

    public function __construct(Database $db)            // Runs when object created using class
    {
        $this->db = $db;                                 // Store Database object in $db property
    }

    public function getAll(): array
    {
        $sql = "SELECT id, name, seo_name, navigation 
          FROM department;";                                 // SQL to get all location
        return $this->db->runSQL($sql)->fetchAll();      // Return all location
    }
    
    public function create(array $department): bool
    {
        $sql = "INSERT INTO follow_department (department_id, member_id) 
                VALUES (:department_id, :member_id);";            // SQL
        $this->db->runSQL($sql, $department);                        // Run SQL
        return true;                                           // Return true
    }

    public function get(int $id)
    {
        $sql = "SELECT follow_department.department_id, department.name
                  FROM follow_department
                  JOIN department ON follow_department.department_id = department.id
                 WHERE follow_department.member_id = :id;";               // SQL
        return $this->db->runSQL($sql, [$id])->fetch();        // Run and return location
    }

}