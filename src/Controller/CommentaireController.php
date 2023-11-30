<?php

namespace App\Controller;

use App\Entity\Article;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route("/api")]
class CommentaireController extends AbstractController
{
    private EntityManagerInterface $query;

    public function __construct(EntityManagerInterface $query) {
        $this->query = $query;
    }


    #[Route('/commentaire', name: 'app_commentaire')]
    public function index(): Response
    {
        return $this->render('commentaire/index.html.twig', [
            'controller_name' => 'CommentaireController',
        ]);
    }


    /**
     * Cette methode sert à recuperer les commentaires relatifs à un article
     */
    #[Route("/articles/{articleId}/comments",name:"app_comments_by_article", methods:["GET", "POST"])]
    public function getCommentsByArticle($articleId): JsonResponse
    {        
        // Votre logique pour récupérer les commentaires d'un article
        $article = $this->query->getRepository(Article::class)->find($articleId);
        
        if (!$article) {
            return new JsonResponse(['message' => 'Article not found.'], 404);
        }
        
        $comments = $article->getCommentaires();
        
        // Convertir les commentaires en tableau pour la réponse JSON
        $commentsArray = [];
        foreach ($comments as $comment) {
            $commentsArray[] = [
                'id' => $comment->getId(),
                'contenu' => $comment->getContenu(),
                'createdAt' => $comment->getCreatedAt()->format('Y-m-d H:i:s'),
                // Ajoutez d'autres propriétés de commentaire si nécessaire
            ];
        }

        return new JsonResponse(['comments' => $commentsArray]);
    }
}
