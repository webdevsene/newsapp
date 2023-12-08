<?php

namespace App\Service;

use NewsdataIO\NewsdataApi;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Validator\Constraints\Length;

class TrendsService
{
    public function __construct(
        private RequestStack $requestStack,
        private ParameterBagInterface $param
    ) {

    }

    public function getTrendsNewsData(?array $data = [])
    {

        
        // Pass your desired strings in an array with unique key
        //$data = array("country" => "sn", "category" =>"top");
        
        if (!$data) {
            return false;
        }
        
        $newsdataApiObj = new NewsdataApi($this->param->get('NEWSDATA_API_KEY'));

        $response = $newsdataApiObj->get_latest_news($data);

        return $response;
    }
}