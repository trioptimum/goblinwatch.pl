#!/usr/bin/perl

# initial system state:
# all six doors are closed.
my $initial_state = '000000';

# recurse away.
recurse( $initial_state, "", "" );

print "Done.\n";

sub recurse {
	
	my ( $state, $string, $seen ) = @_;
	
	# are we at the solution state?
	if ( $state eq '111111' ) {
		# great! output this.
		print $string."SOLVED\n";
		return;
	}
	
	# have we seen this state before?
	if ( $seen =~ /$state\./ ) {
		# loop detected, abort.
		return;
	}
	
	$seen .= $state.".";
	
	unless ( $string =~ /B/ ) {
		my ( $new_state, $new_string ) = B( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /C/ ) {
		my ( $new_state, $new_string ) = C( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /D/ ) {
		my ( $new_state, $new_string ) = D( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /E/ ) {
		my ( $new_state, $new_string ) = E( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /F/ ) {
		my ( $new_state, $new_string ) = F( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /G/ ) {
		my ( $new_state, $new_string ) = G( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /H/ ) {
		my ( $new_state, $new_string ) = H( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /I/ ) {
		my ( $new_state, $new_string ) = I( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /J/ ) {
		my ( $new_state, $new_string ) = J( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /K/ ) {
		my ( $new_state, $new_string ) = K( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /L/ ) {
		my ( $new_state, $new_string ) = L( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /N/ ) {
		my ( $new_state, $new_string ) = N( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
	unless ( $string =~ /O/ ) {
		my ( $new_state, $new_string ) = O( $state, $string ); recurse( $new_state, $new_string, $seen );
	}
}



sub B {
	my ( $state, $string ) = @_;
	$string .= "B->";
	
	# opens door 4, closes door 5
	substr( $state, 3, 1 ) = '1';
	substr( $state, 4, 1 ) = '0';
	
	return ( $state, $string );
}

sub C {
	my ( $state, $string ) = @_;
	$string .= "C->";
	
	# opens door 5, closes door 4
	substr( $state, 4, 1 ) = '1';
	substr( $state, 3, 1 ) = '0';
	
	return ( $state, $string );
}

sub D {
	my ( $state, $string ) = @_;
	$string .= "D->";
	
	# opens door 1, closes door 5
	substr( $state, 0, 1 ) = '1';
	substr( $state, 4, 1 ) = '0';
	
	return ( $state, $string );
}

sub E {
	my ( $state, $string ) = @_;
	$string .= "E->";
	
	# opens door 5, closes door 1
	substr( $state, 4, 1 ) = '1';
	substr( $state, 0, 1 ) = '0';
	
	return ( $state, $string );
}

sub F {
	my ( $state, $string ) = @_;
	$string .= "F->";
	
	# opens door 2, closes door 4
	substr( $state, 1, 1 ) = '1';
	substr( $state, 3, 1 ) = '0';
	
	return ( $state, $string );
}

sub G {
	my ( $state, $string ) = @_;
	$string .= "G->";
	
	# opens door 6
	substr( $state, 5, 1 ) = '1';
	
	return ( $state, $string );
}

sub H {
	my ( $state, $string ) = @_;
	$string .= "H->";
	
	# opens door 3, closes door 2
	substr( $state, 2, 1 ) = '1';
	substr( $state, 1, 1 ) = '0';
	
	return ( $state, $string );
}

sub I {
	my ( $state, $string ) = @_;
	$string .= "I->";
	
	# opens door 2, closes door 3
	substr( $state, 1, 1 ) = '1';
	substr( $state, 2, 1 ) = '0';
	
	return ( $state, $string );
}

sub J {
	my ( $state, $string ) = @_;
	$string .= "J->";
	
	# opens door 2, closes door 1
	substr( $state, 1, 1 ) = '1';
	substr( $state, 0, 1 ) = '0';
	
	return ( $state, $string );
}

sub K {
	my ( $state, $string ) = @_;
	$string .= "K->";
	
	# opens door 6, closes door 5
	substr( $state, 5, 1 ) = '1';
	substr( $state, 4, 1 ) = '0';
	
	return ( $state, $string );
}

sub L {
	my ( $state, $string ) = @_;
	$string .= "L->";
	
	# opens door 3, closes door 4
	substr( $state, 2, 1 ) = '1';
	substr( $state, 3, 1 ) = '0';
	
	return ( $state, $string );
}

sub N {
	my ( $state, $string ) = @_;
	$string .= "N->";
	
	# opens door 1, closes door 2
	substr( $state, 0, 1 ) = '1';
	substr( $state, 1, 1 ) = '0';
	
	return ( $state, $string );
}

sub O {
	my ( $state, $string ) = @_;
	$string .= "O->";
	
	# opens door 5, closes door 6
	substr( $state, 4, 1 ) = '1';
	substr( $state, 5, 1 ) = '0';
	
	return ( $state, $string );
}
