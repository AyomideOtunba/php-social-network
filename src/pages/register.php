<?php
declare(strict_types = 1);                               // Use strict types
use Mentorfied\Validate\Validate;                           // Import Validate class

$member = [];                                            // Initialize member array
$errors = [];                                            // Initialize errors array

if ($_SERVER['REQUEST_METHOD'] == 'POST') {              // If form was posted
    // Get form data
    $member['forename'] = $_POST['forename'];            // Get forename
    $member['surname']  = $_POST['surname'];             // Get surname
    $member['email']    = $_POST['email'];               // Get email
    $member['password'] = $_POST['password'];            // Get password
    $confirm            = $_POST['confirm'];             // Get password confirmation

    // Validate form data
    $errors['forename'] = Validate::isText($member['forename'], 1, 254)
        ? '' : 'Forename must be 1-254 characters';
    $errors['surname']  = Validate::isText($member['surname'], 1, 254)
        ? '' : 'Surname must be 1-254 characters';
    $errors['email']    = Validate::isEmail($member['email'])
        ? '' : 'Please enter a valid email';
    $errors['password'] = Validate::isPassword($member['password'])
        ? '' : 'Passwords must be at least 8 characters and have:<br> 
                A lowercase letter<br>An uppercase letter<br>A number 
                <br>And a special character';
    $errors['confirm']  = ($member['password'] = $confirm)
        ? '' : 'Passwords do not match';
    $invalid            = implode($errors);                  // Join error messages

    if (!$invalid) {                                         // If no errors
        $result = $cms->getMember()->create($member);        // Create member + store result
        if ($result === false) {                             // If result is false
            $errors['email'] = 'Email address already used'; // Store a warning
        } else {                                             // Otherwise send to login
            $id = $cms->getMember()->getIdByEmail($member['email']);      // Get member id 
            if ($id) {                                          // If id found
            $token   = $cms->getToken()->create($id, 'email_verification');     // Token
            $link  = DOMAIN . DOC_ROOT . 'onboarding-location/?token=' . $token; // Link
            $subject = 'Email Verification';               // Email subject
            $body    = 'To verify your email click: <a href="' . $link . '">' . $link . '</a>'; // Email body
            $mail    = new \Mentorfied\Email\Email($email_config);   // Email object
            $mail->sendEmail($email_config['admin_email'], $member['email'], $subject, $body);         // Send
            redirect('email-sent/', ['success'=>'Thanks for registering!']);
            }   
        } 
    }
}

$data['navigation'] = $cms->getCategory()->getAll();         // All categories for nav
$data['member']     = $member;                               // Member data
$data['errors']     = $errors;                               // Error messages

echo $twig->render('register.html', $data);                  // Render Twig template