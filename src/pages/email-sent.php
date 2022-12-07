<?php
declare(strict_types = 1);                               // Use strict types
use Mentorfied\Validate\Validate;                        // Import Validate class

$success = $_GET['success'] ?? null;                     // Get success message

$data['navigation'] = $cms->getCategory()->getAll();     // Get navigation categories
$data['success']    = $success;                          // Success message

echo $twig->render('email-sent.html', $data);                // Render Twig template