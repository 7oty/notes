#!/usr/bin/perl

$a = 100;
if($a < 20){
    printf "a is less than 20\n";
}else{
    printf "a is greater than 20\n";
}

print "value of a is : $a\n";

$a = "";

if($a){
    printf "a has a true value\n";
}else{
    printf "a has a false value\n";
}

print "value of a is : $a\n";
