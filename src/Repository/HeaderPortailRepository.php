<?php

namespace App\Repository;

use App\Entity\HeaderPortail;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<HeaderPortail>
 *
 * @method HeaderPortail|null find($id, $lockMode = null, $lockVersion = null)
 * @method HeaderPortail|null findOneBy(array $criteria, array $orderBy = null)
 * @method HeaderPortail[]    findAll()
 * @method HeaderPortail[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HeaderPortailRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HeaderPortail::class);
    }

    public function save(HeaderPortail $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(HeaderPortail $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function getAllHeaderPortail()
    {
        $qb = $this->createQueryBuilder('h');

        $qb->andWhere('h.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('h.id', 'DESC');
   
        return $qb->getQuery()->getResult();
    }
}
