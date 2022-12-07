<?php
// Part A: Setup
declare(strict_types = 1);                                       // Use strict types
use Mentorfied\Validate\Validate;                                // Import Validate namespace

// Initialize variable needed for the HTML page
$departmentChosen  = '';                                           // Initialize department variable
$errors          = [];                                      

$departments = $cms->getDepartment()->getAll();                    // Get Departments 


// Part B: Get and validate form data
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

$departmentChosen   = $_POST['department_id'];                       // Get DepartmentChosen
    foreach ($_POST['department_id'] as $selected) {
        $dept = implode($_POST['department_id']);
    $cms->getDepartment()->create([$dept, $cms->getSession()->id]);    // Add Interest
    redirect('onboarding-level/');               // Redirect to interest page
    }
}

$data['departments']      = $departments;
$data['departmentChosen'] = $departmentChosen;

echo $twig->render('onboarding-department.html', $data);                    // Render Twig template
