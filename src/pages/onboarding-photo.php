<?php
declare(strict_types = 1);                               // Use strict types
$errors  = '';                                           // Error messages

$id = $cms->getSession()->id;                            // Get user's id from session
if ($id === 0) {                                         // If not logged in
    redirect('login/');                                  // Page not found
}
$member = $cms->getMember()->get($id);                   // Get member data

$delete = $_POST['delete'] ?? '';                        // Check if deleting image
if ($delete === 'delete') {                              // If so
    $cms->getMember()->pictureDelete($member, UPLOADS);  // Update article
    redirect('member/' . $member['id'] . '/', ['success'=>'Picture deleted',]); // Reload page
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {              // Form submitted
    $temp = $_FILES['image']['tmp_name'] ?? '';          // Temporary image
    if (is_uploaded_file($temp) and $_FILES['image']['error'] == 0) {  // If file OK
        $errors  = in_array(mime_content_type($temp), MEDIA_TYPES) 
            ? '' : 'Wrong file type. ';                  // Validate type
        $extension = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION)); // File extension in lowercase
        $errors .= in_array($extension, FILE_EXTENSIONS)
            ? '' : 'Wrong file extension. ';             // File extension
        $errors .= ($_FILES['image']['size'] <= MAX_SIZE)
            ? '' : 'File too big. ';                     // Validate size

var_dump($extension);

        if (!$errors) {                                                          // If invalid data
            $filename = create_filename($_FILES['image']['name'], UPLOADS);               // Create filename
            $cms->getMember()->pictureCreate($id, $filename, $temp, UPLOADS . $filename);   // Save + update image
            redirect('member/' . $id . '/', ['success'=>'Picture updated',]);  // Reload page
        } else {                                                                 // Otherwise
            $errors .= 'Please try again.';                        // Message
        }

    } else {                                                                      // Otherwise
        $errors = 'Please upload a profile picture.';                              // Store message
    }
}

$data['member']     = $member;                           // Member
$data['errors']     = $errors;                           // Errors

echo $twig->render('onboarding-photo.html', $data);   // Render Twig template