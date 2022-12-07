<?php
namespace Mentorfied\CMS;                                   // Namespace declaration

class Upload
{
    protected $db;                                       // Holds ref to Database object

    public function __construct(Database $db)
    {
        $this->db = $db;                                 // Add ref to Database object
    }

    public function pictureCreate(int $id, string $filename, string $temporary, string $destination): bool
    {
        if ($temporary) {                                    // If an image was uploaded
            $image = new \Imagick($temporary);               // Object to represent image
            $image->cropThumbnailImage(350, 350);            // Create cropped image
            $saved = $image->writeImage($destination);       // Save file
            if ($saved == false) {                           // If save failed
                throw new Exception('Unable to save image'); // Throw an exception
            }
        }
        $filename = basename($destination);
        $sql = "UPDATE upload 
                SET picture = :picture 
                WHERE id = :id;";        // SQL to create picture
        $this->db->runSQL($sql, ['id'=>$id, 'picture'=>$filename],); // Run SQL pass in user id and filename
        return true;                                                 // Done return true
    }
}

