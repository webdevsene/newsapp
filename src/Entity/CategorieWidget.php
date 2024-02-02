<?php

namespace App\Entity;

use App\Repository\CategorieWidgetRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategorieWidgetRepository::class)]
class CategorieWidget
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 100, nullable: true)]
    private ?string $libelle = null;

    #[ORM\Column(length: 100, nullable: true)]
    private ?string $description = null;

    #[ORM\OneToMany(mappedBy: 'categorieWidget', targetEntity: Widget::class)]
    private Collection $widgets;

    public function __construct()
    {
        $this->widgets = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(?string $libelle): static
    {
        $this->libelle = $libelle;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    /**
     * @return Collection<int, Widget>
     */
    public function getWidgets(): Collection
    {
        return $this->widgets;
    }

    public function addWidget(Widget $widget): static
    {
        if (!$this->widgets->contains($widget)) {
            $this->widgets->add($widget);
            $widget->setCategorieWidget($this);
        }

        return $this;
    }

    public function removeWidget(Widget $widget): static
    {
        if ($this->widgets->removeElement($widget)) {
            // set the owning side to null (unless already changed)
            if ($widget->getCategorieWidget() === $this) {
                $widget->setCategorieWidget(null);
            }
        }

        return $this;
    }

    public function __toString(): string
    {
       return $this->libelle; 
    }
}