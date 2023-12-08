<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * #[Route('/', name: 'app_home')]
     * 
     */
    #[Route('/site/{reactRouting}', name: 'app_home', requirements:["reactRouting"=>"^(?!api).+"], defaults:["reactRouting"=>null])]
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
        ]);
    }

    #[Route('/', name: 'app_welcome', methods:["GET"])]
    public function welcome(): Response
    {
        return $this->redirectToRoute('app_home', [], 302);
        
    }


    #[Route('/postdetails/{id}', name: 'app_postdetails')]
    public function postdetails(): Response
    {
        return $this->render('home/postdetails.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

}
