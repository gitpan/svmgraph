use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'svmgraph',
    PREREQ_PM => {
        'GraphViz'              => 1.99,
        'Solaris::Disk::SVM'   => 0,
    },
    PM => { },
    VERSION_FROM   => 'bin/svmgraph',
    PL_FILES  => {},
    EXE_FILES => ['bin/svmgraph'],
    AUTHOR    => 'Jérôme Fenal <jfenal@free.fr>',
    ABSTRACT  => 'Graph Solaris Volume Manager objects using GraphViz',
    clean     => { FILES => '*~ */*~ */*/*~ */*/*/*~' },
    dist      => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);

