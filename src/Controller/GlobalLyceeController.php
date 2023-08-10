<?php
namespace App\Controller;

use App\Repository\ActiviteRepository;
use App\Repository\ActualiteRepository;
use App\Repository\PartenaireRepository;
use App\Repository\StatistiqueRepository;
use App\Repository\PresentationRepository;
use App\Repository\EtablissementRepository;
use App\Repository\HeaderEtablissementRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalLyceeController extends AbstractController
{
    public function index(
            HeaderEtablissementRepository $HeaderEtablissementRepository,
            PresentationRepository $PresentationRepository,
            EtablissementRepository $EtablissementRepository,
            ActiviteRepository $ActiviteRepository,
            StatistiqueRepository $StatistiqueRepository,
            ActualiteRepository $ActualiteRepository,
            PartenaireRepository $PartenaireRepository
        )
    {
        $header = $HeaderEtablissementRepository->getAllHeader('lycee');
        $presentation = $PresentationRepository->getAllPresentation('lycee');
        $etablissement = $EtablissementRepository->getAllEtablissement('lycee');
        $activites = $ActiviteRepository->getAllActivite('lycee');
        $statistiques = $StatistiqueRepository->getAllStatistique('lycee');
        $lastActualite = $ActualiteRepository->getLastActualite('lycee');
        $nextActualites = $ActualiteRepository->getNextActualite('lycee');
        $partenaires = $PartenaireRepository->getAllPartenaire();

        return $this->render('indexlycee.html.twig',[
            'header' => $header,
            'presentation' => $presentation,
            'etablissement' => $etablissement,
            'activites' => $activites,
            'statistiques' => $statistiques,
            'lastActualite' => $lastActualite,
            'nextActualites' => $nextActualites,
            'partenaires' => $partenaires
        ]);
    }

}