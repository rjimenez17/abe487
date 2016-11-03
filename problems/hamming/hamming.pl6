#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str	$s2!) {

	my $str1 = $s1.chars;
	my $str2 = $s2.chars;
	my $hamming_distance = abs ($str1 - $str2);
	my @s1 = $s1.comb;
	my @s2 = $s2.comb;
	
	for 0..* -> $i  {
		last unless @s1[$i] && @s2[$i];
		if @s1[$i] ne @s2[$i] {
			$hamming_distance++;
		}
	}
	put $hamming_distance;
}
