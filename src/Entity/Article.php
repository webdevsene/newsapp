<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
use Doctrine\DBAL\Types\Type;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\Mapping\Id;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;


#[ORM\Entity(repositoryClass: ArticleRepository::class)]
#[Vich\Uploadable]
class Article
{
    #[ORM\Id]
    #[ORM\Column(length: 255, nullable: false, unique: true)]
    private ?string $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $titre = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $slug = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $contenu = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $featuredText = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $createdAt = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $updatedAt = null;

    #[ORM\ManyToOne(inversedBy: 'articles', targetEntity: Category::class, fetch:"EXTRA_LAZY")]
    private ?Category $categories = null;

    #[ORM\ManyToOne(inversedBy: 'articles', targetEntity: Media::class, fetch:"EXTRA_LAZY")]
    private ?Media $featuredImage = null;


    #[ORM\OneToOne(inversedBy: 'article', targetEntity: Thumbnail::class, cascade: ['persist', 'remove'])]
    private ?Thumbnail $thumbnail = null;


    #[ORM\Column(type: "string", length: 255)]
    private ?string $image = null;
 
    #[Vich\UploadableField(mapping: "post_thumbnail", fileNameProperty: "image")]
    private ?File $imageFile = null;

    #[ORM\ManyToOne(inversedBy: 'articles', targetEntity: Statut::class, fetch:"EXTRA_LAZY")]
    private ?Statut $status = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $publishedAt = null;

    #[ORM\Column(nullable: true)]
    private ?bool $etat = null;

    #[ORM\ManyToOne(inversedBy: 'articles', targetEntity: Etiquette::class, fetch:"EXTRA_LAZY")]
    private ?Etiquette $etiquettes = null;

    #[ORM\ManyToOne(inversedBy: 'articles')]
    private ?User $createdBy = null;

    public function __construct() {
        $this->id = uniqid();
        $this->createdAt = new \DateTime();
        $this->updatedAt = new \DateTime();
    }

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(?string $titre): static
    {
        $this->titre = $titre;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(?string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }

    public function getContenu(): ?string
    {
        return $this->contenu;
    }

    public function setContenu(?string $contenu): static
    {
        $this->contenu = $contenu;

        return $this;
    }

    public function getFeaturedText(): ?string
    {
        return $this->featuredText;
    }

    public function setFeaturedText(?string $featuredText): static
    {
        $this->featuredText = $featuredText;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(?\DateTimeInterface $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(?\DateTimeInterface $updatedAt): static
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getCategories(): ?Category
    {
        return $this->categories;
    }

    public function setCategories(?Category $categories): static
    {
        $this->categories = $categories;

        return $this;
    }

    public function getFeaturedImage(): ?Media
    {
        return $this->featuredImage;
    }

    public function setFeaturedImage(?Media $featuredImage): static
    {
        $this->featuredImage = $featuredImage;

        return $this;
    }


    public function getThumbnail(): ?Thumbnail
    {
        return $this->thumbnail;
    }

    public function setThumbnail(?Thumbnail $thumbnail): self
    {
        $this->thumbnail = $thumbnail;

        return $this;
    }


    public function getImage(): ?string
    {
        return $this->image;
    }
 
    public function setImage(?string $image): self
    {
        $this->image = $image;
 
        return $this;
    }

     
    public function setImageFile(?File $image = null): void
    {
        $this->imageFile = $image;
        if ($image) {
            $this->updatedAt = new \DateTime('now');
        }
    }
 
    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    public function getStatus(): ?Statut
    {
        return $this->status;
    }

    public function setStatus(?Statut $status): static
    {
        $this->status = $status;

        return $this;
    }

    public function getPublishedAt(): ?\DateTimeInterface
    {
        return $this->publishedAt;
    }

    public function setPublishedAt(?\DateTimeInterface $publishedAt): static
    {
        $this->publishedAt = $publishedAt;

        return $this;
    }

    public function isEtat(): ?bool
    {
        return $this->etat;
    }

    public function setEtat(?bool $etat): static
    {
        $this->etat = $etat;

        return $this;
    }

    public function getEtiquettes(): ?Etiquette
    {
        return $this->etiquettes;
    }

    public function setEtiquettes(?Etiquette $etiquettes): static
    {
        $this->etiquettes = $etiquettes;

        return $this;
    }

    public function getCreatedBy(): ?User
    {
        return $this->createdBy;
    }

    public function setCreatedBy(?User $createdBy): static
    {
        $this->createdBy = $createdBy;

        return $this;
    }

}
