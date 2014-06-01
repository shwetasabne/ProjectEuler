#!/usr/bin/perl

use 5.12.0;
use strict;
use warnings;
use Data::Dumper;


## Borrowing the solution from stackoverflow
## Using Euclid's formula for estimating triplets
## a^2 + b^2 = (m^2 -n^2)^2  + (2mn)^2 = (m^2 + n^2) = c^2 where m > n
## so we go on iterating, till we find such a tripet that satisfies the formula with sum = 1000

## Since sum of the numbers is 1000, we will stop iteration at 1000. We may find the answer much sooner
my $m=1 ;
my $n=0;
my $sum = 0;
my $product = 0;
my $a;
my $b;
my $c;

for ($m=1; $m<1000; $m++)
{
	for($n=0; $n<1000; $n++)
	{
		while($m > $n)
		{
			$a = ($m * $m) - ($n * $n);
			$b = 2 * $m * $n ;
			$c = ($m * $m) + ($n * $n);
			print "Processing $a $b $c\n";
			if (($a + $b + $c) == 1000)
			{
				print "Triplet is a=$a b=$b c=$c\n";
				print "Product is ".($a * $b *$c)."\n" ;
				exit(0);
			}
			last;
		}
	}
}