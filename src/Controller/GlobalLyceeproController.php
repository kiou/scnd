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

class GlobalLyceeproController extends AbstractController
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
        $header = $HeaderEtablissementRepository->getAllHeader('lyceepro');
        $presentation = $PresentationRepository->getAllPresentation('lyceepro');
        $etablissement = $EtablissementRepository->getAllEtablissement('lyceepro');
        $formations = $FormationRepostiroy->getAllFormation('lyceepro');
        $statistiques = $StatistiqueRepository->getAllStatistique('lyceepro');
        $lastActualite = $ActualiteRepository->getLastActualite('lyceepro');
        $nextActualites = $ActualiteRepository->getNextActualite('lyceepro');
        $partenaires = $PartenaireRepository->getAllPartenaire();

        return $this->render('indexlyceepro.html.twig',[
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