<?php

namespace App\Entity;

use App\Repository\PresidentRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\DBAL\Types\Types;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Table(name : "president")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: PresidentRepository::class)]
class President
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "datetimetz", nullable:true)]
    private $changed;

    #[ORM\Column(type : "string", length : 255)]
    #[NotBlank(message : "Compléter le champ titre")]
    private ?string $title = null;
    
    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private ?string $categorie = null;

    #[ORM\Column(type : "text")]
    #[Assert\NotBlank(message : "Compléter le champ résumé")]
    private ?string $resume = null;

    #[ORM\Column(type : "text")]
    #[Assert\NotBlank(message : "Compléter le champ contenu")]
    private ?string $content = null;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $image;

    #[ORM\Column(name : "is_active", type : "boolean")]
    private $isActive;

    public function __construct()
    {
        $this->created = new \DateTime();
        $this->isActive = true;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    public function getCreated(): ?\DateTimeInterface
    {
        return $this->created;
    }

    public function setCreated(\DateTimeInterface $created): static
    {
        $this->created = $created;

        return $this;
    }

    public function getChanged(): ?\DateTimeInterface
    {
        return $this->changed;
    }

    public function setChanged(?\DateTimeInterface $changed): static
    {
        $this->changed = $changed;

        return $this;
    }

    #[ORM\PreUpdate()]
    public function preChanged()
    {
        $this->changed = new \DateTime();
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): static
    {
        $this->content = $content;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): static
    {
        $this->image = $image;

        return $this;
    }

    public function isIsActive(): ?bool
    {
        return $this->isActive;
    }

    public function setIsActive(bool $isActive): static
    {
        $this->isActive = $isActive;

        return $this;
    }

    public function getResume(): ?string
    {
        return $this->resume;
    }

    public function setResume(string $resume): static
    {
        $this->resume = $resume;

        return $this;
    }

    public function getCategorie(): ?string
    {
        return $this->categorie;
    }

    public function setCategorie(?string $categorie): static
    {
        $this->categorie = $categorie;

        return $this;
    }
}
