<?php
// Part A: Setup
declare(strict_types = 1);                                       // Use strict types
use Mentorfied\Validate\Validate;                                // Import Validate namespace

// Initialize variable needed for the HTML page
$interestChosen  = '';                                           // Initialize interest variable
$errors          = [];                                      

$interests = $cms->getInterest()->getAll();                      // Get Interests 

// Part B: Get and validate form data
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

$interestChosen   = $_POST['interest_id'];                       // Get InrerestChosen

$checked_count = count($_POST['interest_id']);


    foreach ($_POST['interest_id'] as $selected) {
    if ($checked_count <= 5) {
        $cms->getInterest()->create([$selected, $cms->getSession()->id]);    // Add Interest
            redirect('onboarding-department/');               // Redirect to department page
        } else {
    $errors['message'] = 'Please only select 3-5 interest.';
        }  
    }
}
$data['interests']      = $interests;
$data['interestChosen'] = $interestChosen;
$data['errors']         = $errors;

echo $twig->render('onboarding-interest.html', $data);                    // Render Twig template