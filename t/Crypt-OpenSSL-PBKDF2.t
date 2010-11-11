use Test::More tests => 2;
BEGIN { use_ok('Crypt::OpenSSL::PBKDF2') };

SCOPE: {
	$a = Crypt::OpenSSL::PBKDF2::derive('aaaa', 'bbbb', 4, 1000, 20);
	cmp_ok( join('', unpack('H*', $a)), 'eq', '423ae23fae32cafb9dd8d0439e5caa6b54fda74e', "generate PBKDF2 hash" );
}

