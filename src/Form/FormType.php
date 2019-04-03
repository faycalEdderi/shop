<?php

namespace App\Form;

use App\Entity\Shop;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Image;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class FormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $entity = $options['data'];
		$constraintsImage = [
			new Image([
				'mimeTypes' => [ 'image/jpeg', 'image/gif', 'image/png', 'image/svg+xml', 'image/webp' ],
				'mimeTypesMessage' => "Formats d'image acceptés: jpeg, gif, png, webp."
			])
        ];
        
        $builder
            ->add('name')
            ->add('price')
            ->add('description')
            ->add('image', FileType::class, [
                'constraints'=> $constraintsImage,
                'help' => 'Veuillez sélectionner une image au format JPG, GIF, PNG, SVG ou WebP',
	            'data_class' => null
        
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Shop::class,
        ]);
    }
}
