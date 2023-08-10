<?php

namespace App\Controller\Admin;

use Imagine\Image\Box;
use Imagine\Gd\Imagine;
use App\Entity\President;
use App\Utilities\Upload;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class PresidentCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return President::class;
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
            ->setEntityLabelInSingular('Mot du président')
            ->setEntityLabelInPlural('Mots du président')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('title', 'Titre');
        yield ImageField::new('image')
        ->setUploadDir('public/img/upload/')
        ->setBasePath('img/upload/')
        ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
        ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
            $upload = new Upload();

            $image = $upload->createName(
                $file->getClientOriginalName(),
                $this->getUploadRootDir().'/',
                $timestamp
            );

            $imagine = new Imagine();

            $size = new Box(382,382);
            $imagine->open($file)
                    ->thumbnail($size, 'inset')
                    ->save($this->getUploadRootDir().'upload/'.$image);

        });
        yield ChoiceField::new('categorie','Catégorie')
            ->autocomplete()->setChoices([
                'Hommage' => 'hommage'
        ]);
        yield TextareaField::new('resume','Résumé');
        yield TextEditorField::new('content','contenu')
            ->hideOnIndex()
            ->setColumns('col-sm-12 col-lg-12 col-xxl-12')
            ->setFormType(CKEditorType::class);
        yield BooleanField::new('isActive','Actif')->onlyOnIndex();
  
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }

}
