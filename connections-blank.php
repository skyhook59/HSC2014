<?php
// DB Connection Details
// rename this file to connections.php 
// DB Connection Details
$host = "localhost";
$dbusername = "";
$password = "";
$database = "skyhook59_supercontest2014";
$emailpassword = ""; //password for smtp


// Set the $week variable based on the date
$week = 1;
date_default_timezone_set('America/Toronto');
$thedate = date('Y-m-d H:i:s');

 
if (($thedate > '2014-09-04 00:00:00' )  && ($thedate < '2014-09-10 00:00:00' ))
{
$week = 1;

}
elseif (($thedate > '2014-09-11 00:00:00' )  && ($thedate < '2014-09-17 00:00:00' ))
{
$week = 2;
}
elseif (($thedate > '2014-09-18 00:00:00' )  && ($thedate < '2014-09-24 00:00:00' ))
{
$week = 3;
}
elseif (($thedate > '2014-09-25 00:00:00' )  && ($thedate < '2014-10-01 00:00:00' ))
{
$week = 4;
}
elseif (($thedate > '2014-10-02 00:00:00' )  && ($thedate < '2014-10-08 00:00:00' ))
{
$week = 5;
}
elseif (($thedate > '2014-10-09 00:00:01' )  && ($thedate < '2014-10-15 00:00:00' ))
{
$week = 6;
}
elseif (($thedate > '2014-10-16 00:00:01' )  && ($thedate < '2014-10-22 00:00:00' ))
{
$week = 7;
}
elseif (($thedate > '2014-10-23 00:00:01' )  && ($thedate < '2014-10-29 00:00:00' ))
{
$week = 8;
}
elseif (($thedate > '2014-10-30 00:00:01' )  && ($thedate < '2014-11-05 00:00:00' ))
{
$week = 9;
}
elseif (($thedate > '2014-11-06 00:00:01' )  && ($thedate < '2014-11-12 00:00:00' ))
{
$week = 10;
}
elseif (($thedate > '2014-11-13 00:00:01' )  && ($thedate < '2014-11-19 00:00:00' ))
{
$week = 11;
}
elseif (($thedate > '2014-11-20 00:00:01' )  && ($thedate < '2014-11-26 00:00:00' ))
{
$week = 12;
}
elseif (($thedate > '2014-11-27 00:00:01' )  && ($thedate < '2014-12-03 00:00:00' ))
{
$week = 13;
}
elseif (($thedate > '2014-12-04 00:00:01' )  && ($thedate < '2014-12-10 00:00:00' ))
{
$week = 14;
}
elseif (($thedate > '2014-12-11 00:00:01' )  && ($thedate < '2014-12-17 00:00:00' ))
{
$week = 15;
}
elseif (($thedate > '2014-12-18 00:00:01' )  && ($thedate < '2014-12-24 00:00:00' ))
{
$week = 16;
}
elseif (($thedate > '2014-12-25 00:00:01' )  && ($thedate < '2014-12-31 23:59:58' ))
{
$week = 17;
}

elseif (($thedate > '2014-12-31 23:59:59') )
{
$week = 99;
}

?>


?>