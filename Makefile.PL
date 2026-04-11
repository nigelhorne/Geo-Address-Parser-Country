use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME             => 'Geo::Address::Parser::Country',
	AUTHOR           => 'Nigel Horne <njh@bandsman.co.uk>',
	VERSION_FROM     => 'lib/Geo/Address/Parser/Country.pm',
	ABSTRACT_FROM    => 'lib/Geo/Address/Parser/Country.pm',
	LICENSE          => 'gpl_2',
	MIN_PERL_VERSION => '5.010',
	PREREQ_PM => {
		'Carp'                     => 0,
		'Locale::AU'               => 0,
		'Locale::CA'               => 0,
		'Locale::Object::Country'  => 0,
		'Locale::US'               => 0,
		'Params::Get'              => 0.13,
		'Params::Validate::Strict' => 0.10,
		'Return::Set'              => 0,
	},
	CONFIGURE_REQUIRES => {
		'ExtUtils::MakeMaker' => 0,
	},
	TEST_REQUIRES => {
		'Test::Most' => 0,
	},
	META_MERGE => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'https://github.com/nigelhorne/Geo-Address-Parser-Country.git',
				web  => 'https://github.com/nigelhorne/Geo-Address-Parser-Country',
			},
			bugtracker => {
				web => 'https://github.com/nigelhorne/Geo-Address-Parser-Country/issues',
			},
		},
	},
	dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
	clean => { FILES    => 'Geo-Address-Parser-Country-*' },
);
