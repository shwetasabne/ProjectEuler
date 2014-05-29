#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

# prepare a global array of the number with which we really need to test
## First get all the prime numbers in the range
## Then we will worry about other numbers

my $start = 1;
my $end = 20;

#my $prime_numbers = get_prime_numbers($start, $end);
#print Dumper ($prime_numbers);

my $hash = {};

#Start from the end, and get all the multiples of that number and add in a hash, and don't repeat the hash
for (my $p=$start; $p<=$end; $p++)
{
#	print "First has $p\n";
	$hash->{$p} = $p;	
}





for (my $k=$end; $k>=$start; $k--)
{
	#Start getting multiples in that range
        for (my $l=$start; $l<$k; $l++)
        {
		if ($k % $l == 0)
		{
#			print "Source: $k   Key: $l \n";			
			
			delete $hash->{$l};
			
		}
	}
	
}


# Merge the prime number array with the hash
#foreach (@{$prime_numbers})
#{
#	unless(exists $hash->{$_})
#	{
#		$hash->{$_} = $_;
#	}
#}

print Dumper $hash;

#Big Loop begins
my $num = $end+1;
my $found = 0;
my $count = 0;
my $final_cnt = (scalar keys %$hash);
while (!$found)
#$num = 232792560;
{
	$count = 0;
	for (keys %$hash)
	{
		
		if ($num % $_ == 0)
		{
	            print "Num is $num and divisible is $_ \n";

		    $count++;
		}
	}
	print "Count is $count\n";
#	print (scalar keys %$hash)."\n";
	if ($final_cnt == $count)
	{
		$found = 1;
		print "The number is $num\n";
		exit(0);
	}
	$num++;

}
		

#print Dumper $hash;
sub get_prime_numbers {
 
    my $state=0;
    my @prime = ();
    push @prime, 2, 3;
    for (my $i=$start; $i<=$end; $i++)
    {
	for (my $j=2; $j<= int(sqrt($i)); $j++)
        {
		$state = 1;
               if ($i % $j == 0)
               {
		    $state=0;
                    last;	
               }
	}
        unless ($state == 0){
        push @prime, $i;
	}
        
    }
    
    return \@prime;
}

get_prime_numbers;
