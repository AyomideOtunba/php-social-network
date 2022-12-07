<?php
declare(strict_types = 1);                               // Use strict types

if (!$id or $session->id == 0) {                         // If no valid id
    include APP_ROOT . '/src/pages/page-not-found.php';  // Page not found
}

$interested = $cms->getInterest()->get([$id, $session->id]);      // Does member like
if ($interested) {                                        // If they like it already
    $cms->getInterest()->delete([$id, $session->id]);    // Remove like
} else {                                                 // Otherwise
    $cms->getInterest()->create([$id, $session->id]);    // Add like
}

redirect('onboarding-interest/' . $parts[1]);      // parts 1 means id variable