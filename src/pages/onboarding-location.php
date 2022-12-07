<?php
// Part A: Setup
declare(strict_types = 1);                                        // Use strict types
use Mentorfied\Validate\Validate;                                 // Import Validate namespace

// Initialize variable needed for the HTML page
 $locationChosen  = '';                                           // Initialize location variable
 $email           = '';                                           // Initialize email variable
 $password        = '';                                           // Initialize password
 $errors          = [];

$locations = $cms->getLocation()->getAll();                       // Get locations 

// Part B: Get and validate form data
if ($_SERVER['REQUEST_METHOD'] == 'POST') {                       // If form submitted

$locationChosen    = $_POST['location_id'];                      // Get LocationChosen
$email             = $_POST['email'];                            // Get email address
$password          = $_POST['password'];                         // Get password

// Check if all data was valid and create error messages if it is invalid
$errors['locationChosen'] = Validate::isLocationId($locationChosen, $locations)
        ? '' : 'Not a valid location';                           // Validate category
$errors['email']    = Validate::isEmail($email)
        ? '' : 'Please enter a valid email address';             // Validate email
$errors['password'] = Validate::isPassword($password)
        ? '' : 'Passwords must be at least 8 characters and have:<br> 
                A lowercase letter<br>An uppercase letter<br>A number 
                <br>And a special character';                  // Validate password

$invalid = implode($errors);                               // Join errors

if ($invalid) {                                            // If data is not valid
        $errors['message'] = 'Please try again.';              // Store error message
    } else {                                                   // If data was valid
        $member = $cms->getMember()->login($email, $password); // Get member details
        if ($member and $member['role'] == 'suspended') {      // If member is suspended
            $errors['message'] = 'Account suspended';          // Store message
        } elseif ($member) {                                   // Otherwise for members
            $cms->getSession()->create($member);               // Create session
            $cms->getLocation()->create([$locationChosen, $member['id']]); // Get location details
            redirect('onboarding-interest/');                  // Redirect to interest page
        } else {                                               // Otherwise
            $errors['message'] = 'Please try again.';          // Store error message
        }
    }
}


$data['email']          = $email;                            // Email address if validation failed
$data['errors']         = $errors;                           // Errors array
$data['locationChosen'] = $locationChosen;
$data['locations']      = $locations;


echo $twig->render('onboarding-location.html', $data);         // Render Twig template
