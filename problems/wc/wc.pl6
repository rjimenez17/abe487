#!/usr/bin/env perl6

sub MAIN (Str $file!) {
	die "Not a file ($file)" unless $file.IO.f;

        my $lines = $file.IO.lines.elems;

        my $words = $file.IO.lines.words.elems;

        my $data = slurp $file;

        put "lines ($lines) words ($words) chars ({$data.chars})";
}
