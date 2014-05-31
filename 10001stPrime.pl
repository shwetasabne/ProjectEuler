#!/usr/bin/perl

use 5.12.0;
use strict;
#use warnings; ## Suppressing warnings
use Data::Dumper;
use feature 'say';

#### SOLUTION #######
#### ANSWER IS 104743 ####

####NOTES######
#### USING THE REGEX METHOD TAKES A LOT OF TIME ####
#### HENCE USE ITERATION FROM 3 TO SQRT(NUM) TO DETERMINE IF PRIME #####

#### This method won't work in this case, the following error is thrown on screen
## Complex regular subexpression recursion limit (32766) exceeded at ./10001stPrime.pl line 18.
## Processing 6622 : 66383
## This has been fixed in perl 5.12, hence trying with that
sub is_number_prime {
	
	my $num = $_[0];
	#Convert the number to unary string
	#Eg: unary(7) = 1111111 i.e. 1*7 
	
	# Then use magic perl expression invented by Abigail, and use it to determine if prime or not
	# The explanation of the expression can be found at : http://www.noulakaz.net/weblog/2007/03/18/a-regular-expression-to-check-for-prime-numbers/
	
	my $unary_string = _unary($num);
	unless ($unary_string =~ /^1?$|^(11+?)\1+$/)
	{
		return 1; # As long as the string doesn't match return 1, indicating the number is prime
	}
	else
	{
		return 0; # String matches hence number is composite
	}
}

sub _unary {
	
	my $num = $_[0];
	my $cnt = 0;
	my $str='';
	for ($cnt=0; $cnt<$num; $cnt++)
	{
		$str=$str.'1';
	}
	$str =~ s/^\s+|\s+$//g;
	return $str;
}

sub main {
	
	# Code to find 10001st prime number
	my $prime_num_cnt=1;
	my $j=2;
	
	while ($prime_num_cnt <= 10002)
	{
		if (is_number_prime($j))
		{
			$prime_num_cnt++;
			print "Processing $prime_num_cnt : $j\n";
		}
		$j++;
	}
	
	print "10001st prime number is ".$j."\n";
}

main();