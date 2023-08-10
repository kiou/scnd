<?php

namespace App\Form\Type;

use App\Entity\Contact;
use App\Utilities\BaseClass;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class ContactType extends AbstractType
{
    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }

    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('etablissement', ChoiceType::class, [
                'choices'  => $this->base->getSite()
            ])
            ->add('sujet', TextType::class,[
                'attr' => [ 'placeholder' => 'Sujet *'],
            ])
            ->add('nom', TextType::class,[
                'attr' => [ 'placeholder' => 'Nom *'],
            ])
            ->add('prenom', TextType::class,[
                'attr' => [ 'placeholder' => 'Prénom *'],
            ])
            ->add('telephone', TextType::class,[
                'attr' => [ 'placeholder' => 'Téléphone *'],
            ])
            ->add('email', EmailType::class,[
                'attr' => [ 'placeholder' => 'Email *'],
            ])
            ->add('message', TextareaType::class,[
                'attr' => [ 'placeholder' => 'Votre message *'],
            ])
            ->add('Envoyer', SubmitType::class,[
                'label' => 'envoyer votre message',
                'attr' => ['class' => 'btn btnSubmit']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class
        ]);
    }
}
