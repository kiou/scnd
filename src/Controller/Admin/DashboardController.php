<?php

namespace App\Controller\Admin;

use App\Entity\User;
use App\Entity\Block;
use App\Entity\Activite;
use App\Entity\Actualite;
use App\Entity\Formation;
use App\Entity\President;
use App\Entity\Partenaire;
use App\Entity\Statistique;
use App\Entity\Presentation;
use App\Entity\Etablissement;
use App\Entity\HeaderPortail;
use App\Entity\HeaderEtablissement;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\UserMenu;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use Symfony\Component\Security\Core\User\UserInterface;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<img src="../img/logo-notre-dame-sacre-coeur.svg" style="max-width:95%;">')
            ->setFaviconPath('img/favicon.png');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('Administration');
        yield MenuItem::linkToCrud('Utilisateurs', 'fas fa-dot-circle', User::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Etablissements', 'fas fa-dot-circle', Etablissement::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Blocks Contenu', 'fas fa-dot-circle', Block::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Partenaires', 'fas fa-dot-circle', Partenaire::class)->setDefaultSort(['id' => 'DESC']);

        yield MenuItem::section('Multisite');
        yield MenuItem::linkToCrud('En têtes', 'fas fa-dot-circle', HeaderEtablissement::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Présentations', 'fas fa-dot-circle', Presentation::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Formations', 'fas fa-dot-circle', Formation::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Activités', 'fas fa-dot-circle', Activite::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Statistiques', 'fas fa-dot-circle', Statistique::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Actualités', 'fas fa-dot-circle', Actualite::class)->setDefaultSort(['id' => 'DESC']);

        yield MenuItem::section('Portail');
        yield MenuItem::linkToCrud('En têtes', 'fas fa-dot-circle', HeaderPortail::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Mots du président', 'fas fa-dot-circle', President::class)->setDefaultSort(['id' => 'DESC']);
    }

    public function configureUserMenu(UserInterface $user): UserMenu
    {

        return parent::configureUserMenu($user)
            ->setGravatarEmail($user->getEmail())
            ->setName($user->getPrenom().' '.$user->getNom());
    }

    public function configureActions(): Actions
    {
        return parent::configureActions()
            ->add(Crud::PAGE_INDEX, Action::DETAIL);
    }
}
