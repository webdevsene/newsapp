<?php

namespace App\Controller\Admin;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\Field;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserCrudController extends AbstractCrudController
{
    private UserPasswordHasherInterface $passwordEncoder;
    private EntityManagerInterface $em;

    public function __construct( EntityManagerInterface $em, UserPasswordHasherInterface $passwordEncoder ) {
        $this->passwordEncoder = $passwordEncoder;
        $this->em = $em;
    }

    public static function getEntityFqcn(): string
    {
        return User::class;
    }

    public function configureCrud(Crud $crud): Crud
    
    {
        return $crud
                ->renderSidebarMinimized();
    }

    public function configureFields( string $pageName ): iterable 
    {
        yield FormField::addPanel( 'User data' )->setIcon( 'fa fa-user' );
        yield TextField::new( 'username' )->onlyWhenCreating();
        yield EmailField::new( 'email' )->onlyWhenUpdating()->setDisabled();
        yield EmailField::new( 'email' )->onlyWhenCreating();
        yield TextField::new( 'email' )->onlyOnIndex();
        $roles = [ 'ROLE_ADMIN', 'ROLE_EDITOR', 'ROLE_USER' ];
        yield ChoiceField::new( 'roles' )
                         ->setChoices( array_combine( $roles, $roles ) )
                         ->allowMultipleChoices()
                         ->renderAsBadges();
        yield FormField::addPanel( 'Change password' )->setIcon( 'fa fa-key' );
        yield Field::new( 'password', 'New password' )->onlyWhenCreating()->setRequired( true )
                   ->setFormType( RepeatedType::class )
                   ->setFormTypeOptions( [
                       'type'            => PasswordType::class,
                       'first_options'   => [ 'label' => 'New password' ],
                       'second_options'  => [ 'label' => 'Repeat password' ],
                       'error_bubbling'  => true,
                       'invalid_message' => 'The password fields do not match.',
                   ] );
        yield Field::new( 'password', 'New password' )->onlyWhenUpdating()->setRequired( false )
                   ->setFormType( RepeatedType::class )
                   ->setFormTypeOptions( [
                       'type'            => PasswordType::class,
                       'first_options'   => [ 'label' => 'New password' ],
                       'second_options'  => [ 'label' => 'Repeat password' ],
                       'error_bubbling'  => true,
                       'invalid_message' => 'The password fields do not match.',
                   ] );
    }

    public function persistUserEntity($user)
    {
        // Avec FOSUserBundle, on faisait comme ça :
        // $this->get('fos_user.user_manager')->updateUser($user, false);
        $this->updatePassword($user);
        parent::persistEntity($this->em , $user);
    }

    public function updatePassword(User $user)
    {
        if (!empty($user->getPlainPassword())) {
            $user->setPassword($this->passwordEncoder->hashPassword($user, $user->getPlainPassword()));
        }
    }

}
