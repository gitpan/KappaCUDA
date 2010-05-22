# File : Makefile.PL
use ExtUtils::MakeMaker;
WriteMakefile(
        'ABSTRACT' => 'Module to give easy access to NVIDIA CUDA from Perl using the Kappa Library.',
        'VERSION_FROM' => 'KappaCUDA.pm',
	'NAME'    => 'KappaCUDA',                  # Name of package
        'CC'      => 'g++',
        'LD'      => 'g++',
        'INC'  => '-I/usr/local/cuda/include',
	'LIBS'    => ['-lKappa -lKappaConfig -lKappaParser -lKappaPlugin -lffi -lcuda -lmuparser -lpcrecpp'],                    # Name of custom libraries
	'OBJECT'  => 'KappaCUDA_wrap.o'  # Object files
);
