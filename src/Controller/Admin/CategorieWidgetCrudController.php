<?php

namespace App\Controller\Admin;

use App\Entity\CategorieWidget;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class CategorieWidgetCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return CategorieWidget::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
                ->setPageTitle(Crud::PAGE_NEW, 'Je configure les types de Widgets')
                ->setPageTitle(Crud::PAGE_INDEX, 'Type de Widgets');
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            

            FormField::addPanel('partie gauche')
                     ->addColumn('col-sm-2'),
            
            
            FormField::addPanel('partie droite')
                     ->addColumn('col-sm-6'),


            TextField::new('libelle')
                        ->setLabel('Libellé du Widget')
                        ->setColumns('col-sm-12'),
            TextField::new('description')
                        ->setLabel('Description du Widget')
                        ->setColumns('col-sm-12'),
        ];
    }
    
}
