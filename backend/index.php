<?php

http_response_code(200);
header('Cache-Control: no-transform,public,max-age=300,s-maxage=900');
header('Content-Type: application/json');
echo json_encode(array(
    "data" => array(
        array(
            'name' => 'Kresna',
            'github' => 'kresnasatya',
            'blog' => 'kresna.me'
        )
    )
));