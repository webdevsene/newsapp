<?php

namespace App\Controller\Admin;

use App\Entity\Widget;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class WidgetCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Widget::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
                ->setPageTitle(Crud::PAGE_INDEX, 'Zone de widgets')
                ->setPageTitle(Crud::PAGE_NEW, 'Personnalisation - Widgets');
    }

    public function configureFields(string $pageName): iterable
    {

        $uploadsDir = $this->getParameter('medias_directory');

        return [

            
            FormField::addPanel('partie gauche')
                    ->addColumn('col-sm-2 '),
            
            FormField::addPanel('partie gauche')
                    ->addColumn('col-sm-6 '),
                    
            AssociationField::new('categorieWidget')
                        ->setLabel('Catégorie - Widgets')
                        ->setColumns('col-sm-12'),

            TextField::new('titre')->setLabel('Titre de l\'évènement'),
            
            TextareaField::new('imageFile')
                        ->setLabel('Image de mise en avant')
                        ->setRequired(false)
                        ->setFormType(VichImageType::class)
                        ->hideOnIndex()
                        ->setColumns('col-sm-6'),

            ImageField::new('urlImage')
                        ->setLabel('Image de mise en avant')
                        ->setBasePath($uploadsDir)
                        ->onlyOnDetail()
                        ->hideOnIndex()
                        ->hideOnForm()
                        ->setRequired(true)
                        ->setColumns('col-sm-6'),
        ];
    }

}
