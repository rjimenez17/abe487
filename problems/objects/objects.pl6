#!/usr/bin/env perl6

class Player {
        has Str $.first_name is required;
        has Str $.last_name is required;
        has Str $.num_goals is required;
        has Str $.num_assists is required;
        has Str $.games_played is required;
        method name_and_stats { join ' ', $!first_name, $!last_name, $!num_goals, $!num_assists, $!games_played }
}

my $cristiano = Player.new(first_name => 'Cristiano', last_name => 'Ronaldo;', num_goals => '40 goals,', num_assists => '20 assists,', games_played => '50 games played');
my $neymar = Player.new(first_name => 'Neymar', last_name => 'Jr;', num_goals => '40 goals,', num_assists => '20 assists,', games_played => '50 games played');
my $messi = Player.new(first_name => 'Lionel', last_name => 'Messi;', num_goals => '40 goals,', num_assists => '20 assists,', games_played => '50 games played');

for $cristiano, $neymar, $messi { put "Name and Stats: ", .name_and_stats }

