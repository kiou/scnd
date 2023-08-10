<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class Contact
{

    #[Assert\NotBlank(message : "Compléter le champ Etablissement")]
    private ?string $etablissement = null;

    #[Assert\NotBlank(message : "Compléter le champ Sujet")]
    private ?string $sujet = null;

    #[Assert\NotBlank(message : "Compléter le champ Nom")]
    private ?string $nom = null;

    #[Assert\NotBlank(message : "Compléter le champ Prénom")]
    private ?string $prenom = null;

    #[Assert\NotBlank(message : "Compléter le champ Email")]
    #[Assert\Email(
        message: "L'email '{{ value }}' n'est pas une adresse email valide."
    )]
    private ?string $email = null;

    #[Assert\NotBlank(message : "Compléter le champ Téléphone")]
    private ?string $telephone = null;

    #[Assert\NotBlank(message : "Compléter le champ Message")]
    private ?string $message = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEtablissement(): ?string
    {
        return $this->etablissement;
    }

    public function setEtablissement(string $etablissement): static
    {
        $this->etablissement = $etablissement;

        return $this;
    }

    public function getSujet(): ?string
    {
        return $this->sujet;
    }

    public function setSujet(string $sujet): static
    {
        $this->sujet = $sujet;

        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getPrenom(): ?string
    {
        return $this->prenom;
    }

    public function setPrenom(string $prenom): static
    {
        $this->prenom = $prenom;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(string $telephone): static
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getMessage(): ?string
    {
        return $this->message;
    }

    public function setMessage(string $message): static
    {
        $this->message = $message;

        return $this;
    }
}
