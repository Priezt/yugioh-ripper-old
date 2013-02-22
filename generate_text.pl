#!/usr/bin/perl -w

use strict;

$| = 1;
while(<>){
	chomp;
	my $name = $_;
	open INFILE,"<","data/$name";
	my $content = join "", <INFILE>;
	close INFILE;
	my @match = ($content =~ /<pre>(.+?)<\/pre>/igs);
	print "$name ".scalar(@match)."\n";
	next unless @match;
	open OUTFILE,">","text/$name";
	print OUTFILE join "\n\n", @match;
	close OUTFILE;
}
	
