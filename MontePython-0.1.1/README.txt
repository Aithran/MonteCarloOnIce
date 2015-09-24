MontePython is (a module for) an efficient Quantum Diffusion Monte Carlo
implementation for python.

Getting Started
===============

PRE-REQUISITES: (on all nodes)

  Native C/C++ compiler
  Native MPI C/C++ library (e.g. http://www-unix.mcs.anl.gov/mpi/mpich2/)
  Python >= 2.3 (http://www.python.org/)
  SWIG >= 1.3.23 (http://www.swig.org/)
  numpy >= 1.0rc1 (http://sourceforge.net/projects/numpy/)
  SPRNG 2.0a (http://sprng.cs.fsu.edu/Version2.0/sprng2.0a.tgz) [1]
  pypar_1_9_2_numpy (included)

  MontePython has been tested on the following platforms:
    MPICH2/OpenMPI, gcc 4.1 on Fedora Core 5
    MPICH2/OpenMPI, gcc 3.4 on RedHat Enterprice Linux 4
    MPICH2/ScaMPI, icc 9.0 on Rocks 4.0

  [1] SPRNG may be omitted by setting use_sprng=False in setup.py.
      This will set the random generator to L'Ecuyer's generator,
      RngStream. However, sprng is highly recommended, as it is safer
      in parallel.

INSTALL:

  UNIX Platforms:

  Install pypar_1_9_2_numpy from pypar/pypar_1_9_2_numpy using
    'python setup.py install'
  or to nonstandard path as described bellow

  Edit setup.py with the correct paths for mpi library, pypar and
  sprng.

  To build, run:
    'python setup.py build'

  To install, run:
    'python setup.py install'

  or, if you want to install in a non-standard path, don't have root
  password or just enjoy exporting paths:
    'python setup.py --prefix=/some/special/place'

  Remember to set correct search path for python and ld, i.e.:
    'export PYTHONPATH=/some/special/place:$PYTHONPATH'
    'export LD_LIBRARY_PATH=/some/special/place:$LD_LIBRARY_PATH'

TESTING:

  Run:
    'python src/Python/MontePython.py'

  No output means that everything is working as it should (at least
  for 1 process)


USAGE:

  In src/example/ there is a script diffusion.py for running Diffusion
  Monte Carlo using MontePython and a (very) simple test init file,
  initialize.dat, for simulating 2 particles in a harmonic
  oscillator.

  Do:
    'python diffusion.py initialize.dat'

  to run the example as one process. To run as e.g. 4 processes, do:
    'mpirun -np 4 diffusion.py initialize.dat'

  Mark that diffusion.py generates some output files, so you may want
  to run this in a separate directory. Have fun!

