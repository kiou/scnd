<?php
namespace App\Utilities;

class BaseClass
{
    /* La liste des sites pour le choicefield */
    public function getSite()
    {
        return [
            'Etablissements Sacré Coeur Notre Dame' => 'portail',
            'Collège du Sacré Coeur' => 'college',
            'Lycée du Sacré Coeur' => 'lycee',
            'Lycée des métiers Notre Dame' => 'lyceepro',
            'Centre de formation' => 'formation'
        ];
    }

    public function getSiteReverse()
    {
        return [
            'portail' => 'Etablissements Sacré Coeur Notre Dame',
            'college' => 'Collège du Sacré Coeur',
            'lycee' => 'Lycée du Sacré Coeur',
            'lyceepro' => 'Lycée des métiers Notre Dame',
            'formation' => 'Centre de formation'
        ];
    }
}