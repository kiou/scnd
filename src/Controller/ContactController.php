<?php
namespace App\Controller;

use App\Entity\Contact;
use App\Form\Type\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactController extends AbstractController
{
    public function index($selection = 'all')
    {
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact);

        if ($form->isSubmitted() && $form->isValid()) {

        }

        return $this->render('include/contact.html.twig',[
            'form' => $form->createView(),
            'selection' => $selection
        ]);
    }

}