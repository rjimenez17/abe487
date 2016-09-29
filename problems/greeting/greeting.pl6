#!/usr/bin/env perl6

sub MAIN (Str:D $name!, $numchars = $name.chars) {

	put "Hello, $name, your name has $numchars characters."

}
