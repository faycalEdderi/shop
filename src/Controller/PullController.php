<?php

namespace App\Controller;

use App\Repository\ShopRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PullController extends AbstractController
{ 
   
    /**
     * @Route("/", name="homepage")
     */
    
    public function index(ShopRepository $shopRepository):Response
    {
        $results = $shopRepository->findAll();

        return $this->render('pull/index.html.twig', [

            'results'=>$results
        ]);
    }
    
        /**
     * @Route("/hauts", name="HAUTS")
     */
    public function hauts(ShopRepository $shopRepository):Response
    {
        $results = $shopRepository->findByCategory("hauts");
        //dd($results);
        return $this->render('pull/hauts.html.twig', [

            'results'=>$results
        ]);
    }

        /**
     * @Route("/bas", name="BAS")
     */
    public function bas(ShopRepository $shopRepository):Response
    {
        $results = $shopRepository->findByCategory("bas");
        dd($results);
        return $this->render('pull/bas.html.twig', [

            'results'=>$results
        ]);
    }

     /**
	 * @Route("/chaussures", name="chaussures")
	 */
    public function chaussures(ShopRepository $shopRepository):Response
    {
        $results = $shopRepository->findAll();

        return $this->render('pull/chaussures.html.twig', [

            'results'=>$results
        ]);
    }
}
