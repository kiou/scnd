<?php

namespace App\Controller\Admin;

use App\Entity\Statistique;
use App\Utilities\BaseClass;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class StatistiqueCrudController extends AbstractCrudController
{

    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }

    public static function getEntityFqcn(): string
    {
        return Statistique::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('title')
            ->add('site')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Statistique')
            ->setEntityLabelInPlural('Statistiques')
            ->setDefaultSort(['id' => 'DESC'])
        ;
    }

    public function configureFields(string $pageName): iterable
    {

        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('title', 'Titre');
        yield TextField::new('chiffre', 'Chiffre');
        yield ChoiceField::new('site','Site')
            ->autocomplete()->setChoices($this->base->getSite());
        yield ChoiceField::new('categorie','Catégorie')
            ->autocomplete()->setChoices([
                'Sport' => 'sport',
                'Education' => 'education',
                'Etablissement' => 'etablissement',
                'Classe' => 'classe'
            ]);

        yield TextareaField::new('contenu','Contenu');
        yield BooleanField::new('isActive','Actif')->onlyOnIndex();
  
    }

}
