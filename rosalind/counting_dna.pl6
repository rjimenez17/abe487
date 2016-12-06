#!/usr/bin/env perl6

my $dataset = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";

sub MAIN($input = $dataset) {
	"{<A C G T>.map({ +$input.comb(/$_/) })}".say;
}
