<?php
declare(strict_types = 1);                                        // Use strict types

$levelChosen  = '';                                           // Initialize location variable
$errors       = [];                                      

if ($_SERVER['REQUEST_METHOD'] == 'POST') {                       // If form submitted
	if (!empty($_POST['radio'])) {
		$levelChosen=$_POST['radio'];
		$cms->getLevel()->create([$cms->getSession()->id, $levelChosen]);    // Add 
        redirect('onboarding-photo/');               // Redirect to upload page		
	} else {
    $errors['message'] = 'Please select your level.';
    }  
}

$data['levelChosen']    = $levelChosen;
$data['errors']         = $errors;

echo $twig->render('onboarding-level.html', $data);                    // Render Twig template


