<?php
function passGenerator($password_length=null) {
    $harfler="ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ";
    mb_substr($harfler,mt_rand(0,mb_strlen($harfler)-1),1);
   $password=null;
    for ($i=1; $i<=$password_length; $i++)
    {
    $password.=mb_substr($harfler,mt_rand(0,mb_strlen($harfler)-1),1);
    }
    return $password;
    }
    echo passGenerator(10);
?>