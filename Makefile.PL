use strict;
use warnings;
use ExtUtils::MakeMaker;

my $dist = {
	COMPRESS => 'gzip -9f',	# Compress tarball using gzip
	SUFFIX => 'gz',	# File suffix for tarball
};

if($^O eq 'darwin') {
	$dist->{'TAR'} = 'gtar';
}

WriteMakefile(
	NAME            => 'Geo::Address::Parser::Country',
	AUTHOR          => 'Nigel Horne <njh@nigelhorne.com>',
	VERSION_FROM    => 'lib/Geo/Address/Parser/Country.pm',
	ABSTRACT_FROM   => 'lib/Geo/Address/Parser/Country.pm',
	LICENSE         => 'gpl_2',
	MIN_PERL_VERSION => '5.010',
	PREREQ_PM => {
		'Carp'                    => 0,
		'Locale::AU'              => 0,
		'Locale::CA'              => 0,
		'Locale::Object::Country' => 0,
		'Locale::US'              => 0,
		'Object::Configure' => 0,
		'Params::Get'             => 0.13,
		'Params::Validate::Strict' => 0.10,
		'Return::Set'             => 0,
	},
	CONFIGURE_REQUIRES => {
		'ExtUtils::MakeMaker' => 6.64,	# Minimum version for TEST_REQUIRES
	}, TEST_REQUIRES => {
		'Test::Most' => 0,
	}, META_MERGE => {	# https://perldoc.perl.org/CPAN::Meta::Spec
		'meta-spec' => { version => 2 },
		resources => {
			homepage => 'https://metacpan.org/pod/Data::Hash::Diff::Smart',
			repository => {
				repository => 'https://github.com/nigelhorne/Data-Hash-Diff-Smart',
				type => 'git',
				url => 'git://github.com/nigelhorne/Data-Hash-Diff-Smart.git',
				web => 'https://github.com/nigelhorne/Data-Hash-Diff-Smart',
				# license => 'http://dev.perl.org/licenses/',
			}, bugtracker => {
				web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Data-Hash-Diff-Smart',
				url => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Data-Hash-Diff-Smart',
				# web => 'https://github.com/nigelhorne/Data-Hash-Diff-Smart/issues',
				# url => 'https://github.com/nigelhorne/Data-Hash-Diff-Smart/issues',
				mailto => 'bug-Data-Hash-Diff-Smart@rt.cpan.org'
			}
		},
	},
	dist => $dist,
	clean => { FILES   => 'Geo-Address-Parser-Country-*' },
);
