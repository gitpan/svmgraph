use Module::Build;
my $build = Module::Build->new(
#    module_name    => 'Solaris::Disk::SVM',
    dist_name=> 'svmgraph',
    dist_version_from   => 'bin/svmgraph',
    dist_abstract_from   => 'bin/svmgraph',
    script_files   => 'bin/svmgraph',
    license        => 'perl',
    requires       => { 'perl' => '5.6.1', GraphViz => '1.99',
        'Solaris::Disk::SVM' => '0.01' },
    add_to_cleanup => [ '*~', '*/*~', '*/*/*/*~' ],
    gzip           => 'gzip -9f',
#    recommends => { 'Test::More' => '0', },
);
$build->create_build_script;
