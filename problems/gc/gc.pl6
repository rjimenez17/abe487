#!/usr/bin/env perl6

sub MAIN(Str $file, :$threshold=0.3) {
	die "Not a file ($file)" unless $file.IO.f;

	for $file.IO.lines.map(*.lc) -> $line {
		if $line.grep(/<[>]>/) { next; }

	my ($GCcontent, $length) = 0,0;

	for $line.comb {
		when 'g' { $GCcontent++ }
		when 'c' { $GCcontent++ }

	}
	
	$length = $line.chars;

	$threshold <= $GCcontent/$length ?? \
		(printf "%.2f: burkholderia\n", $GCcontent/$length) !! (printf "%.2f: anthrax\n", $GCcontent/$length);
	}
}
