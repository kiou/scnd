<?php

namespace App\Controller\Admin;

use App\Entity\Block;
use App\Utilities\BaseClass;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class BlockCrudController extends AbstractCrudController
{

    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }

    public static function getEntityFqcn(): string
    {
        return Block::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('title')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Block')
            ->setEntityLabelInPlural('Blocks')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('title', 'Titre');
        yield ChoiceField::new('site','Site')
        ->autocomplete()->setChoices($this->base->getSite());
        yield TextEditorField::new('content')
            ->hideOnIndex()
            ->setFormType(CKEditorType::class);       

    }

}
