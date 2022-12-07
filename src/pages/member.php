<?php
declare(strict_types = 1);                               // Use strict types

if (!$id) {                                              // If no valid id
    include APP_ROOT . '/src/pages/page-not-found.php';     // Page not found
}

$member = $cms->getMember()->get($id);                   // Get member data
if (!$member) {                                          // If array is empty
    include APP_ROOT . '/src/pages/page-not-found.php';     // Page not found
}


$data['navigation']  = $cms->getCategory()->getAll();               // Get categories
$data['member']      = $member;                                     // Member data
$data['success']     = $_GET['success'] ?? '';                      // Success message if present
$data['articles']    = $cms->getArticle()->getAll(true, null, $id); // Get member's articles
$data['location'] = $cms->getLocation()->get($id);                  // Get location followed
$data['department'] = $cms->getDepartment()->get($id); 
$data['level'] = $cms->getLevel()->get($id);                       // Get level followed
$data['interests'] = $cms->getInterest()->getInterestName($id);  // Get interests selected


echo $twig->render('member.html', $data);                           // Render Twig template