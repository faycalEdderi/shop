<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PullController extends AbstractController
{
    /**
     * @Route("/", name="")
     */
    public function index()
    {
        return $this->render('pull/index.html.twig', [
            'controller_name' => 'PullController',
        ]);
    }

        /**
     * @Route("/hauts", name="HAUTS")
     */
    public function hauts()
    {
        return $this->render('pull/hauts.html.twig', [

        ]);
    }

        /**
     * @Route("/bas", name="BAS")
     */
    public function bas()
    {
        return $this->render('pull/bas.html.twig', [

        ]);
    }

        /**
     * @Route("/chaussures", name="CHAUSSURES")
     */
    public function chaussures()
    {
        return $this->render('pull/chaussures.html.twig', [

        ]);
    }
}
