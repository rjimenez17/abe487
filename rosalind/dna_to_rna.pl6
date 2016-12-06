#!/usr/bin/env perl6

sub MAIN(Str $dataset = "GATGGAACTTGACTACGTAAATT") {
	.trans('T' => 'U').say given $dataset;
}
