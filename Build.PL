
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'send an email on dist release',
  'dist_author' => [
    'Sawyer X <xsawyerx@cpan.org>'
  ],
  'dist_name' => 'Dist-Zilla-Plugin-EmailNotify',
  'dist_version' => '0.002',
  'license' => 'perl',
  'module_name' => 'Dist::Zilla::Plugin::EmailNotify',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Dist::Zilla::Role::Releaser' => '0',
    'Email::Stuff' => '0',
    'Moose' => '0',
    'namespace::autoclean' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
