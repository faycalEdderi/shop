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

          
           $imageName = bin2hex(random_bytes(16));
           $uploadedFile = $product->getImage(); // renvoie un objet UploadedFile
           $extension = $uploadedFile->guessExtension();
           $uploadedFile->move('img/', "$imageName.$extension");

           // mise à jour de la propriété image avec le nouveau nom de l'image
           $product->setImage("$imageName.$extension");

           $manager->persist($product);
           $manager->flush();
        }

        return $this->render('formulaire/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
