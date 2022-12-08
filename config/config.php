<?php
define('DEV', false);                       // In development or live? Development = true | Live = false
define('DOMAIN', 'http://localhost');     // Domain (used to create links in emails)
define('ROOT_FOLDER', 'public');         // Name of document root folder (e.g. public, content, htdocs)

// DOC_ROOT is created because the download code has several versions of the sample site
// On a live site a single forward slash / would indicate the document root folder

define("DOC_ROOT", '/Mentorfied/');

/// Database settings
$type     = 'mysql';                 // Type of database
$server   = 'localhost';             // Server the database is on
$db       = 'mentorfied';             // Name of the database
$port     = '';                      // Port is usually 8889 in MAMP and 3306 in XAMPP
$charset  = 'utf8mb4';               // UTF-8 encoding using 4 bytes of data per character
$username = '******';              // Enter YOUR username here
$password = '******';         // Enter YOUR password here

// DO NOT CHANGE NEXT LINE
$dsn = "$type:host=$server;dbname=$db;port=$port;charset=$charset"; // Create DSN

// SMTP server settings
$email_config = [
    'server'      => 'smtp.gmail.com',
    'port'        => '',
    'username'    => '',
    'password'    => '',
    'security'    => 'ssl',
    'admin_email' => '',
    'debug'       => (DEV) ? 2 : 0,
];

// File upload settings
define('MEDIA_TYPES', ['image/jpeg', 'image/png', 'image/gif',]); // Allowed file types
define('FILE_EXTENSIONS', ['jpeg', 'jpg', 'png', 'gif',]);       // Allowed file extensions
define('MAX_SIZE', '5242880');                                    // Max file size
// DO NOT EDIT:
define('UPLOADS', dirname(__DIR__, 1) . DIRECTORY_SEPARATOR . ROOT_FOLDER . DIRECTORY_SEPARATOR . 'uploads' . DIRECTORY_SEPARATOR); // Image upload folder
