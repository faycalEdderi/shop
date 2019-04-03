<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PullController extends AbstractController
{ 
    private $liste = [
        ['name'=>'Jean','price'=>'10','description'=>'flexible','image'=>'heels.jpeg'],

        ['name'=>'pantalon','price'=>'15','description'=>'Coton','image'=>'1c3a138d0858ab588f34a4180d41e549.png'],

        ['name'=>'T-shirt','price'=>'20','description'=>'Cool','image'=>'6fb9c770c61503a2cb3178bb5715052d.png'],

        ['name'=>'T-shirt','price'=>'30','description'=>'Fashion','image'=>'409476d6311aacbb7ef632431cfb88a2.jpeg'],

        ['name'=>'All Star','price'=>'59','description'=>'Urbain','image'=>'315c52c95b74fde93773746254cb78c4.png'],

        ['name'=>'Virgule','price'=>'109','description'=>'Sport','image'=>'ab82f4917043ae6e28d0cb3a3c61bb39.jpeg'],

        ['name'=>'short','price'=>'99','description'=>'Leather','image'=>'0d7e1d0995e01385ba5e7d4fd8b6a600.png'],

        ['name'=>'Suit','price'=>'150','description'=>'Buisness','image'=>'b699dd75b0648cf376cf9751c2cdffce.jpeg'],

        ['name'=>'Heel','price'=>'99','description'=>'Famous','image'=>'44c58a1a32055b11c71c7316734eb27f.jpeg'],
   ];
    /**
     * @Route("/", name="")
     */
    
     public function index(){
        
         return $this->render("pull/index.html.twig", [
            'liste' => $this->liste
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
