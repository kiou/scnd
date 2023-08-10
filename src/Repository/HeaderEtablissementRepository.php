<?php

namespace App\Repository;

use App\Entity\HeaderEtablissement;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<HeaderEtablissement>
 *
 * @method HeaderEtablissement|null find($id, $lockMode = null, $lockVersion = null)
 * @method HeaderEtablissement|null findOneBy(array $criteria, array $orderBy = null)
 * @method HeaderEtablissement[]    findAll()
 * @method HeaderEtablissement[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HeaderEtablissementRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HeaderEtablissement::class);
    }

    public function save(HeaderEtablissement $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(HeaderEtablissement $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
    public function getAllHeader(string $site)
    {
        $qb = $this->createQueryBuilder('h');

        $qb->andWhere('h.isActive =  :isActive')
            ->setParameter('isActive', true);

        $qb->andWhere('h.site =  :site')
            ->setParameter('site', $site);

        $qb->orderBy('h.id', 'DESC')
            ->setMaxResults(1);
   
        return $qb->getQuery()->getOneOrNullResult();
    }
}
