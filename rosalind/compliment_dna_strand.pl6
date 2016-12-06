#!/usr/bin/env perl6

sub MAIN($dataset = "AAAACCCGGT") {
	.flip.trans('ACGT' => 'TGCA').say given $dataset;
}
