<?php

namespace App\Controller;

use App\Entity\Article;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route("/api", name:"api_")]
class ArticleController extends AbstractController
{
    #[Route('/article', name: 'app_article', methods:["GET"])]
    public function index(EntityManagerInterface $doctrine): Response
    {

        $posts =  $doctrine->getRepository(Article::class)
        ->findBy([], array('createdAt'=>'DESC'),6,0);


        $data = [];
        
        $response = [];
        
        try {
    
            foreach ($posts as $ressource) {
    
                $data [] = [
                        'id' => $ressource->getId(),
                        'titre'        => $ressource->getTitre(),
                        'featuredText'     => $ressource->getFeaturedText(),
                        "contenu"      => $ressource->getContenu(),
                        "createdAt"  => $ressource->getCreatedAt(),    
                        "categorie"  => $ressource->getCategories() != null ? $ressource->getCategories()->getLibelle() : "RAS",    
                        "url_image"  =>  $ressource->getImage(),
                        "pubDate"  => $ressource->getPublishedAt(),
                        "etiquette"  => $ressource->getEtiquettes() != null ? $ressource->getEtiquettes()->getLibelle(): "PAS",

                    ];
            }
    
            $response["data"] = $data;
    
            return $this->json($data);
    
        } catch (\Throwable $th) {
            $th = [
                'status' => $th->getCode(),
                'errors' => $th->getMessage(),
                ];
    
            return $this->json($th);
        }
    }
}
