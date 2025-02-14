my $var = 10;
my $ref = \$var;
$$ref = 20; # Modifies $var indirectly
print \$var; # Output: 20