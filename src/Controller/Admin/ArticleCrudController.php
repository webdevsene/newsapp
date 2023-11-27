<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ArticleCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Article::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
                ->renderSidebarMinimized()
                ->setEntityLabelInSingular('article du site')
                ->setEntityLabelInPlural('articles du site')
                ->setPageTitle(Crud::PAGE_INDEX, 'Liste des articles ')
                ->setPageTitle(Crud::PAGE_EDIT, 'Édition de l\'article')
                ->setDefaultSort(['createdAt' => 'ASC'])
                ->setPaginatorPageSize(6)
                ->addFormTheme("@FOSCKEditor/Form/ckeditor_widget.html.twig")
        ;

    }

    
    public function configureFields(string $pageName): iterable
    {

        $uploadsDir = $this->getParameter('medias_directory');

        return [

            FormField::addPanel()->addCssClass('col-md-8'),
            TextField::new('titre')->setLabel('Titre de l\'article')
            ->setColumns('col-sm-9 col-xxl-9'),
            TextEditorField::new('contenu', 'Contenu')
            ->setFormType(CKEditorType::class)
            ->setLabel('Contenu de l\'article')
            ->hideOnIndex()
            ->setColumns('col-sm-12 col-xxl-12'),

            FormField::addPanel('Options article')
                    ->addCssClass('col-md-4 sidebar'),
            DateTimeField::new('publishedAt')
                         ->setLabel('Publier le')
                         ->setFormat('dd/MM/YYY HH:mm')
                         ->setColumns('col-sm-12 col-xxl-12'),
            AssociationField::new('categories')
                            ->setRequired(true)
                            ->setLabel('Rubrique')
                            ->setColumns('col-sm-12 col-xxl-12'),
            
            TextField::new('featuredText')
                ->setLabel('Texte de mise en avant')
                ->hideOnIndex()
                ->setColumns('col-sm-12 col-xxl-12'),
                
            AssociationField::new('etiquettes')
                            ->setLabel('étiquette')
                            ->setColumns('col-sm-12 col-xxl-12'),
            
            TextareaField::new('imageFile')
                        ->setLabel('Image de mise en avant')
                        ->setRequired(false)
                        ->setFormType(VichImageType::class)
                        ->hideOnIndex(),
            ImageField::new('image')
                        ->setLabel('Image de mise en avant')
                        ->setBasePath($uploadsDir)
                        ->onlyOnDetail()
                        ->hideOnIndex()
                        ->hideOnForm()
                        ->setRequired(true),
                        
            BooleanField::new('etat')
                        ->setLabel('Article en ligne')
                        ->setHelp('Si cocher l\'article est en ligne à la date de publication.'),
        ];

        
    }


}
