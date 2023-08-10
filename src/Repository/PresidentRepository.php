<?php

namespace App\Repository;

use App\Entity\President;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<President>
 *
 * @method President|null find($id, $lockMode = null, $lockVersion = null)
 * @method President|null findOneBy(array $criteria, array $orderBy = null)
 * @method President[]    findAll()
 * @method President[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PresidentRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, President::class);
    }

    public function save(President $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(President $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function getAllPresident()
    {
        $qb = $this->createQueryBuilder('p');

        $qb->andWhere('p.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('p.id', 'DESC')
            ->setMaxResults(1);
   
        return $qb->getQuery()->getOneOrNullResult();
    }
}
