<?php

namespace App\Controller;

use App\Repository\ShopRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AffichageController extends AbstractController
{
    /**
     * @Route("/affichage", name="affichage")
     */
    public function index(ShopRepository $shopRepository):Response
    {
        $results = $shopRepository->findAll();

        return $this->render('affichage/index.html.twig', [

            'results'=>$results
        ]);
    }
}
