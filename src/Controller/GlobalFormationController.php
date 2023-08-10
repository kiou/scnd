<?php
namespace App\Controller;

use App\Repository\ActiviteRepository;
use App\Repository\ActualiteRepository;
use App\Repository\FormationRepository;
use App\Repository\PartenaireRepository;
use App\Repository\StatistiqueRepository;
use App\Repository\PresentationRepository;
use App\Repository\EtablissementRepository;
use App\Repository\HeaderEtablissementRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalFormationController extends AbstractController
{
    public function index(
            HeaderEtablissementRepository $HeaderEtablissementRepository,
            PresentationRepository $PresentationRepository,
            EtablissementRepository $EtablissementRepository,
            StatistiqueRepository $StatistiqueRepository,
            ActualiteRepository $ActualiteRepository,
            PartenaireRepository $PartenaireRepository,
            FormationRepository $FormationRepostiroy
        )
    {
        $header = $HeaderEtablissementRepository->getAllHeader('formation');
        $presentation = $PresentationRepository->getAllPresentation('formation');
        $etablissement = $EtablissementRepository->getAllEtablissement('formation');
        $formations = $FormationRepostiroy->getAllFormation('formation');
        $statistiques = $StatistiqueRepository->getAllStatistique('formation');
        $lastActualite = $ActualiteRepository->getLastActualite('formation');
        $nextActualites = $ActualiteRepository->getNextActualite('formation');
        $partenaires = $PartenaireRepository->getAllPartenaire();

        return $this->render('indexformation.html.twig',[
            'header' => $header,
            'presentation' => $presentation,
            'etablissement' => $etablissement,
            'formations' => $formations,
            'statistiques' => $statistiques,
            'lastActualite' => $lastActualite,
            'nextActualites' => $nextActualites,
            'partenaires' => $partenaires
        ]);
    }

}