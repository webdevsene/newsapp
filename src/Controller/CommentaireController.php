<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Commentaire;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
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
                'createdAt' => $comment->getCreatedAt()->format('d-m-Y H:i'),
                'createdBy' => $comment->getUser() != "" ? $comment->getUser()->getPrenom().' '.$comment->getUser()->getNom() : 'mbonate anonymous',
                // Ajoutez d'autres propriétés de commentaire si nécessaire
                
            ];
        }

        return new JsonResponse(['comments' => $commentsArray]);
    }


    /**
     * Ajouter un commentaire
     * celà necessite une api /service pour mapper les donnees en bd
     * cette methode permet de repondre à cette exigence
     */
    #[Route("/comments/add", name:"app_comment_add", methods:["POST"])]
    public function ajouterComment(Request $request): Response
    {
        // Créez un nouvel objet Comment
        $comment = new Commentaire();
        $comment->setContenu($request->request->get('contenu'));
        $comment->setUser($this->getUser()); // Assurez-vous d'avoir un système d'authentification en place

        //recuperer l'article correspondant 
        $article = $this->query->getRepository(Article::class)->find($request->request->get('article_id'));

        $comment->setArticle($article);
        $comment->setCreatedAt(new \DateTime());

        // Enregistrez le commentaire dans la base de données
        $this->query->persist($comment);
        $this->query->flush();

        return new JsonResponse(['message' => 'Commentaire ajouté avec succès.'], 201);
    }
}
