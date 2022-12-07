<?php
namespace Mentorfied\CMS;                                   // Namespace declaration

class Level
{
    protected $db;                                       // Holds ref to Database object

    public function __construct(Database $db)
    {
        $this->db = $db;                                 // Add ref to Database object
    }

    public function create(array $level): bool
    {
        $sql = "INSERT INTO level (member_id, name)
                VALUES (:member_id, :name);";
        $this->db->runSQL($sql, $level);
        return true;
    }

     public function get(int $id)
    {
        $sql = "SELECT member_id,name
                  FROM level 
                 WHERE level.member_id = :id;";                       // SQL to get one category
        return $this->db->runSQL($sql, [$id])->fetch();  // Return category data
    }
}

