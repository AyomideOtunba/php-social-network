<?php
namespace Mentorfied\CMS;                                   // Declare namespace

class Interest
{                                                        // Define Interest class
    protected $db;                                       // Holds reference to Database object

    public function __construct(Database $db)            // Runs when object created using class
    {
        $this->db = $db;                                 // Store Database object in $db property
    }

public function getAll(): array
    {
        $sql = "SELECT id, name, navigation, seo_name 
          FROM interest;";                                 // SQL to get all interest
        return $this->db->runSQL($sql)->fetchAll();      // Return all interest
    }

    public function get(array $interest): bool
    {
        $sql = "SELECT COUNT(*)
                  FROM follow_interest
                 WHERE interest_id = :id 
                   AND member_id = :member_id;";               
        return $this->db->runSQL($sql, $interest)->fetchColumn();  
    }
    
    public function create(array $interest): bool
    {
        $sql = "INSERT INTO follow_interest (interest_id, member_id) 
                VALUES (:interest_id, :member_id);";            // SQL
        $this->db->runSQL($sql, $interest);                        // Run SQL
        return true;                                           // Return true
    }

    public function delete(array $interest): bool
    {
        $sql = "DELETE FROM follow_interest
                 WHERE interest_id = :interest_id 
                   AND member_id = :member_id;";               // SQL
        $this->db->runSQL($sql, $interest);                        // Run SQL
        return true;                                           // Return true
    }
    
    //public function getInterestName($id){
       // $sql = "SELECT follow_interest.interest_id, interest.name AS name
        //        (SELECT COUNT(interest_id)
         //       FROM follow_interest
          //      JOIN interest ON follow_interest.interest_id = interest.id
           //     WHERE follow_interest.interest_id = interest.id) AS names                           
         //GROUP BY :id;";                           // Add GROUP BY clause

            //              return $this->db->runSQL($sql, $id)->fetch();        // Run and return location

    //}
    public function getInterestName($id, $limit = 5): array
    {
     $arguments['id'] = $id;
     $arguments['limit']  = $limit;
      $sql = "SELECT follow_interest.interest_id, interest.name
                  FROM follow_interest
                  JOIN interest ON follow_interest.interest_id = interest.id
                 WHERE follow_interest.member_id = :id
                 ORDER BY follow_interest.interest_id 
                 DESC LIMIT :limit;";
     return $this->db->runSQL($sql, $arguments)->fetchAll();    
  }
}

