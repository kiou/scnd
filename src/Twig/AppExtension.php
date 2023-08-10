<?php

    namespace App\Twig;

    use Twig\Extension\AbstractExtension;
    use Twig\TwigFunction;
    use App\Utilities\BaseClass;

    class AppExtension extends AbstractExtension
    {

        private $base;

        public function __construct(BaseClass $base)
        {
            $this->base = $base;
        }

        public function getFunctions(): array
        {
            return [
                new TwigFunction('get_site', [$this, 'getSite']),
            ];
        }

        public function getSite($key = null)
        {
            $sites = $this->base->getSiteReverse();

            if ($key === null) {
                return $sites;
            }

            return $sites[$key] ?? null;
        }
    }

?>