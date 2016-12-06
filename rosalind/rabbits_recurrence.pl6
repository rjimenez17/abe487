#!/usr/bin/env perl6

sub MAIN(Int $n = 5, Int $k = 3) {
	my @fibonacci = 1, 1, * * $k + * ... *;
	say @fibonacci[$n-1];
}
