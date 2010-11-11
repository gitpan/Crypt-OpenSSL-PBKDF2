package Crypt::OpenSSL::PBKDF2;

use strict;
use Carp;

use vars qw($VERSION @ISA @EXPORT @EXPORT_OK $AUTOLOAD);

require Exporter;
require DynaLoader;
use AutoLoader;

@ISA = qw(Exporter DynaLoader);

@EXPORT_OK = qw( derive );

$VERSION = '0.02';

bootstrap Crypt::OpenSSL::PBKDF2 $VERSION;

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__

=head1 NAME

Crypt::OpenSSL::PBKDF2 - wrapper for PBKDF2 keys derivation function of the OpenSSL library

=head1 SYNOPSIS

  use Crypt::OpenSSL::PBKDF2;

  my $key = Crypt::OpenSSL::PBKDF2::derive($pass, $salt, $salt_len, $iter, $key_len);

=head1 DESCRIPTION

Crypt::OpenSSL::PBKDF2 provides the ability to derive a key from a passphrase using OpenSSL library's PBKDF2 function

=head2 EXPORT

None by default.

=head1 Static Methods

=over 2

=item derive

This function, returns a derived key that is supposed to be cryptographically strong.
It's been generated from a passphrase B<$pass>, a salt block B<$salt> (usually binary data) having a given length B<$salt_len>, and a number of iterations B<$iter> (usually > 1000, suggested 4000). The result will be a binary data string of requested length B<$out_len>; the derive function croaks if an error occurs.

=back 

=head1 SUPPORT

Bugs should be reported via mailing list at

L<http://www.opendiogene.it/mailman/listinfo/opendiogene-bugs>

Some help may be obtained via mailing list at

L<http://www.opendiogene.it/mailman/listinfo/opendiogene-users>

=head1 AUTHOR

Riccardo Scussat - OpenDiogene Project E<lt>rscussat@dsplabs.netE<gt>

=head1 LICENSE

The code in this module is released under GNU GPLv2.

This program is free software; you can redistribute
it and/or modify it under the terms of supplied license.

The full text of the license can be found in the
LICENSE file included with this module.

=head1 COPYRIGHT

Copyright 2009-2010 R.Scussat - OpenDiogene Project.
=cut
