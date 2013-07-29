#! /usr/bin/perl
use strict;
use warnings;


# $a - integer number
# $b - integer number >= $a
sub sum {

    my ($a, $b) = @_;
    my $i = 0;
    my (%hash, $sum);
 
    if  (@_ != 2)  {
        die "Must be EXACTLY 2 arguments";
    } 
   
    if ($b < $a) {
       die "$a can't be less then $b!";
    }
   
    foreach ($a .. $b) {
       $hash{$_} = $i  if ($i % 2 == 0);
       $i++;
    }
      
    foreach my $key (keys %hash) {
       $sum += $key * $hash{$key};
    }
   
    return $sum;
}
  
my $result = sum (10, 20);

print $result, "\n";
      
   
   