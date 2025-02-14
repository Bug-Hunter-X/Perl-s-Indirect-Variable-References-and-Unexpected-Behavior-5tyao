my $var = 10;
my $ref = \$var;
# To avoid unexpected modification, use a copy:
my $varCopy = $var;
$$ref = 20; # Modifies $var indirectly
print "Original Value: ",$var; # Output: 20
print "Copied Value: ",$varCopy; # Output: 10

#Alternatively, explicitly declare the reference as a constant to avoid accidental modification
use constant MY_VAR => 10; # Declare a constant variable
my $ref = \MY_VAR; # Reference to the constant variable
# Trying to modify will cause an error.
#$$ref = 20; # This will cause an error because you cannot modify a constant.