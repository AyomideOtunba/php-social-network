<?php
namespace Mentorfied\CMS;                        // Declare namespace

class Location                                  // Define Location class
{
    protected $db;                             // Holds ref to Database object

    public function __construct(Database $db)            // Runs when object created using class
    {
        $this->db = $db;                                 // Store Database object in $db property
    }
    
    // Get all locations
    public function getAll(): array
    {
        $sql = "SELECT id, name, navigation, seo_name 
          FROM location;";                                 // SQL to get all location
        return $this->db->runSQL($sql)->fetchAll();      // Return all location
    }

    // Create new location
    public function create(array $location): bool
    {
        $sql = "INSERT INTO follow_location (location_id, member_id)
                VALUES (:location_id, :member_id);";                    // SQL
        $this->db->runSQL($sql, $location);                      // Run SQL
        return true; 
    }

    public function get(int $id)
    {
        $sql = "SELECT follow_location.location_id, location.name
                  FROM follow_location
                  JOIN location ON follow_location.location_id = location.id
                 WHERE follow_location.member_id = :id;";               // SQL
        return $this->db->runSQL($sql, [$id])->fetch();        // Run and return location
    }

}
