#!/usr/bin/env perl6

sub MAIN (Str $file!) {
	die "Not a file ($file)" unless $file.IO.f;

my @all = $file.IO.lines;

	say @all.elems;

my $data = slurp $file;
	say $data.chars
}
