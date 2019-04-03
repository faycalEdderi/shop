<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PullController extends AbstractController
{
    /**
     * @Route("/pull", name="pull")
     */
    public function index()
    {
        return $this->render('pull/index.html.twig', [
            'controller_name' => 'PullController',
        ]);
    }
}
