#!/usr/bin/perl -w

use strict;


while(<>){
	chomp;
	next if -e 'finish/'.$_;
	system("touch finish/".$_);
	#print STDERR "\>\>\>".$_."\n";
	print;
	print "\n";
}

