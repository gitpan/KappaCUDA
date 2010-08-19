# File : Makefile.PL
use ExtUtils::MakeMaker;
use Config;

WriteMakefile(
	'AUTHOR' => 'Psi Lambda LLC',
        'ABSTRACT' => 'Module to give easy access to NVIDIA CUDA from Perl using the Kappa Library.',
        'VERSION_FROM' => 'KappaCUDA.pm',
	'NAME'    => 'KappaCUDA',                  # Name of package
        'DEFINE' => '-DUSE_OPENGL=1',
        'CC'      => ($Config{cc} eq 'cl') ? 'cl /EHsc' : 'g++',
        'LD'      => ($Config{cc} eq 'cl') ? $Config{ld} : 'g++',
        'INC'  => ($Config{osname} eq 'MSWin32') ? '-I/apps/cuda/include -I"/Program Files/Kappa/include" -I"/Program Files/Microsoft DirectX SDK (February 2010)/Include"' : '-I/usr/local/cuda/include',
	'LIBS'    => ($Config{osname} eq 'MSWin32') ? ['-L"/Program Files/Kappa/lib" -lKappa -lKappaConfig -lKappaParser -lKappaPlugin -lffi-3 -L/apps/cuda/lib -lcuda -lMSVCPRT'] : ['-lKappa -lKappaConfig -lKappaParser -lKappaPlugin -lffi -lcuda -lpcrecpp'],                    # Name of custom libraries
	'OBJECT'  => 'KappaCUDA_wrap.o'  # Object files
);
