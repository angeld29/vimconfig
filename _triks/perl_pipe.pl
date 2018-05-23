#!/usr/bin/perl

use strict;
use warnings;

my $file = shift;

my $pipecmd = "zcat $file | tar  -O -xf -"; # -O, extract files to standard output

open(my $PIPEIN, '-|', $pipecmd) or die "Opening pipe [$pipecmd]: $!\n";

while ( my $line = <$PIPEIN> )
{
    chomp $line;
    print "$line\n"; # do parsing here
}