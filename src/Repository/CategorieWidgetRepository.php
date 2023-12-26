<?php

namespace App\Repository;

use App\Entity\CategorieWidget;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<CategorieWidget>
 *
 * @method CategorieWidget|null find($id, $lockMode = null, $lockVersion = null)
 * @method CategorieWidget|null findOneBy(array $criteria, array $orderBy = null)
 * @method CategorieWidget[]    findAll()
 * @method CategorieWidget[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CategorieWidgetRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CategorieWidget::class);
    }

//    /**
//     * @return CategorieWidget[] Returns an array of CategorieWidget objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?CategorieWidget
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
