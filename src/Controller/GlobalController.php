<?php
namespace App\Controller;

use App\Repository\ActualiteRepository;
use App\Repository\PresidentRepository;
use App\Repository\PartenaireRepository;
use App\Repository\StatistiqueRepository;
use App\Repository\EtablissementRepository;
use App\Repository\HeaderPortailRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalController extends AbstractController
{
    public function index(
            HeaderPortailRepository $HeaderPortailRepository,
            PresidentRepository $PresidentRepositopry,
            EtablissementRepository $EtablissementRepository,
            StatistiqueRepository $StatistiqueRepository,
            ActualiteRepository $ActualiteRepository,
            PartenaireRepository $PartenaireRepository
        )
    {

        $headers = $HeaderPortailRepository->getAllHeaderPortail();
        $president = $PresidentRepositopry->getAllPresident();
        $etablissements = $EtablissementRepository->getAllEtablissement();
        $statistiques = $StatistiqueRepository->getAllStatistique('portail');
        $lastActualite = $ActualiteRepository->getLastActualite();
        $nextActualites = $ActualiteRepository->getNextActualite();
        $partenaires = $PartenaireRepository->getAllPartenaire();

        return $this->render('index.html.twig',[
            'action' => 'accueil',
            'headers' => $headers,
            'president' => $president,
            'etablissements' => $etablissements,
            'statistiques' => $statistiques,
            'lastActualite' => $lastActualite,
            'nextActualites' => $nextActualites,
            'partenaires' => $partenaires
        ]);
    }

}