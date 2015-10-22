#!/usr/bin/perl

#use strict;
use warnings;

my $dir = '/Users/selcukorkmaz/Documents/PISA/pdb';
foreach my $fp (glob("$dir/00/*")) {
    printf "%s\n", $fp  ;

    system("ls $fp >> output.txt");
    
    
   
}

