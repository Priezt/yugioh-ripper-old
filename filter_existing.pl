#!/usr/bin/perl -w

use strict;

my $count = 0;
while(<>){
	chomp;
	next if -e 'data/'.$_;
	#print STDERR $_."\n";
	print;
	print "\n";
	$count++;
}
#print STDERR "Total $count pages to go\n";
