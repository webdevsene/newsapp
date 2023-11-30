<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
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
                        "contenu"      => html_entity_decode($ressource->getContenu()),
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



    /**
     * Cette api methode sert à obtenir un post
     */
    #[Route("/article/{id}", name: "app_article_show", methods:["GET"])]
    public function show(EntityManagerInterface $doctrine, $id=""): Response
    {
        if (!$id) {
  
            return $this->json('No ressource found for id : [' . $id . "]", 404);
        }

        $res = $doctrine
            ->getRepository(Article::class)
            ->find($id);

  
        if (!$res) {
  
            return $this->json('No ressource found for id : [' . $id . "]", 404);
        }
  
        $data =  [
            'id' => $res->getId(),
            'titre'        => $res->getTitre(),
            'featuredText'     => $res->getFeaturedText(),
            "contenu"      => $res->getContenu(),
            "createdAt"  => $res->getCreatedAt(),    
            "categorie"  => $res->getCategories() != null ? $res->getCategories()->getLibelle() : "RAS",    
            "url_image"  =>  $res->getImage(),
            "pubDate"  => $res->getPublishedAt(),
            "etiquette"  => $res->getEtiquettes() != null ? $res->getEtiquettes()->getLibelle(): "PAS",
            "createdby" => $res->getCreatedBy() != null ? $res->getCreatedBy()->getNom()." ".$res->getCreatedBy()->getPrenom() : "pengouin" ,
        ];
          
        return $this->json($data, 200);
    }

    #[Route('/postsgrandeune', name: 'app_postsgrandeune', methods:["GET", "POST"])]
    public function postsgrandeune(EntityManagerInterface $doctrine): Response
    {

        // posts avec ettiquettes GRANDEUNE
        $posts =  $doctrine->getRepository(Article::class)
        ->findBy(['etiquettes'=>["2"]], array('createdAt'=>'DESC'),3,0);


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
    
            return $this->json($response);
    
        } catch (\Throwable $th) {
            $th = [
                'status' => $th->getCode(),
                'errors' => $th->getMessage(),
                ];
    
            return $this->json($th);
        }
    }


    /**
     * getHeadlines permet de recuperer les quatre derniers post avec l'etiquette UNE
     */
    #[Route("/headlines",name:"app_headlines", methods:["GET", "POST"])]
    public function getHeadlines(ArticleRepository $articleRepository): JsonResponse
    {
        $headlines = $articleRepository->findHeadlines();

        $data = []; $response = [];

        try {
            foreach ($headlines as $item) {
                $data [] = [
                    'id' => $item->getId(),
                    'titre'        => $item->getTitre(),
                    'featuredText'     => $item->getFeaturedText(),
                    "contenu"      => $item->getContenu(),
                    "createdAt"  => $item->getCreatedAt(),    
                    "categorie"  => $item->getCategories() != null ? $item->getCategories()->getLibelle() : "RAS",    
                    "url_image"  =>  $item->getImage(),
                    "pubDate"  => $item->getPublishedAt(),
                    "etiquette"  => $item->getEtiquettes() != null ? $item->getEtiquettes()->getLibelle(): "PAS",
                    "createdby" => $item->getCreatedBy() != null ? $item->getCreatedBy()->getNom()." ".$item->getCreatedBy()->getPrenom() : "pengouin" ,

                ];
            }

            
            $response["data"] = $data;
    
            return $this->json($response);


        } catch (\Throwable $th) {
            $th = [
                'status' => $th->getCode(),
                'errors' => $th->getMessage(),
                ];
    
            return $this->json($th);
        }

    }

}
