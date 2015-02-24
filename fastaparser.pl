#!/usr/bin/perl
use warnings;
use strict;

my  %sequence=();
my $key="";

my  $filename="fasta.fa";
open FASTA, $filename or die "$filename.$!";
while (<FASTA>)
{
    if ($_=~/^>/) 
    {
	$sequence{"$_"}="";
	$key=$_;
    }
    else
    {
	$sequence{$key}=$sequence{$key}.$_;

    }
}

close FASTA;
