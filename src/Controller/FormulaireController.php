<?php

namespace App\Controller;

use App\Entity\Shop;
use App\Form\FormType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireController extends AbstractController
{
    /**
     * @Route("/formulaire", name="formulaire")
     */
    public function index(Request $request)
    {
        $manager = $this->getDoctrine()->getManager();
        $product = new Shop();
        $form = $this->createForm(FormType::class, $product);

        if($request->isMethod('POST') && $form->handleRequest($request)->isValid()){

           $manager->persist($product);
           $manager->flush();
        }

        return $this->render('formulaire/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
