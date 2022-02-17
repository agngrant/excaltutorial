
Now you can try running an example program using BOUT++.

There are a number of examples provided with BOUT++ and you can try them out as you see fit.

To compile and run a specifc example, in this case the conduction example run the following:

`cmake --build build --target conduction`{{execute}}

Then switch into the directory for the example:

`cd build/examples/conduction/`{{execute}}

Now you can run this using the mpirun command, note the --allow-run-as-root is only for the purposes of this tutorial in Docker - should you be running on your own machine or other system, you can omit this if you aren't root:

`mpirun --allow-run-as-root -n 2 ./conduction`{{execute}}

Depending on your machine set up you may need to vary the -n 2 for number of processes.

The conduction example should execute now.

And that is BOUT++ in a container, you can now move on to looking at installing on another type of system and from there move onto using BOUT++ in your own simulations.

For reference, the output should look similar to this:

```bash
BOUT++ version 4.4.0
Revision: b2b564df84a7e232ce5a66f8d8d9cbc0b93aecfa
Code compiled on Jan 14 2022 at 11:11:54

B.Dudson (University of York), M.Umansky (LLNL) 2007
Based on BOUT by Xueqiao Xu, 1999

Processor number: 0 of 2

pid: 3099

Compile-time options:
        Checking enabled, level 2
        Signal handling enabled
        netCDF4 support enabled
        Parallel NetCDF support disabled
        OpenMP parallelisation disabled
        Compiled with flags : "-Wall -Wextra -Wnull-dereference -Wno-cast-function-type -DBOUT_VERSION_STRING=\"4.4.0\" -DBOUT_VERSION_DOUBLE=4.40 -DCHECK=2 -DBOUT_CHECK=2 -DSIGHANDLE -DBOUT_SIGHANDLE -DLOGCOLOR -DBOUT_LOGCOLOR -DTRACK -DBOUT_TRACK -DBACKTRACE -DBOUT_BACKTRACE -DREVISION=b2b564df84a7e232ce5a66f8d8d9cbc0b93aecfa -DBOUT_HAS_PVODE -DNCDF4 -DBOUT_HAS_NETCDF -DBOUT_HAS_FFTW -DLAPACK -DBOUT_HAS_LAPACK -DHAS_PRETTY_FUNCTION -DBOUT_HAS_PRETTY_FUNCTION -std=c++14-g"
        Command line options for this run : ./conduction 
Reading options file data/BOUT.inp
Writing options to file data/BOUT.settings

Getting grid data from options
        Option mesh:type = bout (default)
        Option mesh:StaggerGrids = 0 (default)
        Option mesh:maxregionblocksize = 64 (default)
        Option mesh:calcParallelSlices_on_communicate = 1 (default)
        Option mesh:ddz:fft_filter = 0 (default)
        Option mesh:symmetricGlobalX = 1 (default)
        Option mesh:symmetricglobaly = true (data/BOUT.inp)
Loading mesh
        Option input:transform_from_field_aligned = 1 (default)
        Option mesh:nx = 1 (data/BOUT.inp)
        Option mesh:ny = 100 (data/BOUT.inp)
        Option mesh:nz = 1 (data/BOUT.inp)
        Read nz from input grid file
        Grid size: 1 x 100 x 1
Variable 'MXG' not in mesh options. Setting to 0
        Option mxg = 0 (data/BOUT.inp)
Variable 'MYG' not in mesh options. Setting to 0
        Option MYG = 2 (default)
        Guard cells (x,y,z): 0, 2, 0
        Option mesh:ixseps1 = -1 (data/BOUT.inp)
        Option mesh:ixseps2 = -1 (data/BOUT.inp)
Variable 'jyseps1_1' not in mesh options. Setting to -1
Variable 'jyseps1_2' not in mesh options. Setting to 50
Variable 'jyseps2_1' not in mesh options. Setting to 50
Variable 'jyseps2_2' not in mesh options. Setting to 99
Variable 'ny_inner' not in mesh options. Setting to 50
Finding value for NXPE (ideal = 0.141421)
        Candidate value: 1
         -> Good value
        Domain split (NXPE=1, NYPE=2) into domains (localNx=1, localNy=50)
        Option IncIntShear = 0 (default)
        Option periodicX = 0 (default)
        Option async_send = 0 (default)
        Option ZMIN = 0 (default)
        Option ZMAX = 1 (default)
        EQUILIBRIUM IS SINGLE NULL (SND) 
        MYPE_IN_CORE = 0
        DXS = 0, DIN = -1. DOUT = -1
        UXS = 0, UIN = -1. UOUT = 1
        XIN = -1, XOUT = -1
        Twist-shift: 
        Option TwistShift = 0 (default)
Variable 'ShiftAngle' not in mesh options. Setting to empty vector
Boundary regions in this processor: lower_target, 
Constructing default regions
        Boundary region inner X
        Boundary region outer X
        Option mesh:extrapolate_x = 0 (default)
        Option mesh:extrapolate_y = 0 (default)
Variable 'dx' not in mesh options. Setting to 1.000000e+00
        Option mesh:dy = 0.2 (data/BOUT.inp)
        Option ZMIN = 0 (default)
        Option ZMAX = 1 (default)
Variable 'dz' not in mesh options. Setting to 6.28319
Variable 'g11' not in mesh options. Setting to 1.000000e+00
Variable 'g22' not in mesh options. Setting to 1.000000e+00
Variable 'g33' not in mesh options. Setting to 1.000000e+00
Variable 'g12' not in mesh options. Setting to 0.000000e+00
Variable 'g13' not in mesh options. Setting to 0.000000e+00
Variable 'g23' not in mesh options. Setting to 0.000000e+00
        Local maximum error in diagonal inversion is 0.000000e+00
        Local maximum error in off-diagonal inversion is 0.000000e+00
Variable 'J' not in mesh options. Setting to 0.000000e+00
        WARNING: Jacobian 'J' not found. Calculating from metric tensor
Variable 'Bxy' not in mesh options. Setting to 0.000000e+00
        WARNING: Magnitude of B field 'Bxy' not found. Calculating from metric tensor
Calculating differential geometry terms
        Communicating connection terms
        Option non_uniform = 1 (default)
Variable 'd2x' not in mesh options. Setting to 0.000000e+00
        WARNING: differencing quantity 'd2x' not found. Calculating from dx
Variable 'd2y' not in mesh options. Setting to 0.000000e+00
        WARNING: differencing quantity 'd2y' not found. Calculating from dy
Variable 'ShiftTorsion' not in mesh options. Setting to 0.000000e+00
        WARNING: No Torsion specified for zShift. Derivatives may not be correct
        Option mesh:paralleltransform = identity (default)
        done
        Option append = 0 (default)
        Option dump_format = nc (default)
Setting up output (dump) file
        Option output:parallel = 0 (default)
        Option output:flush = 1 (default)
        Option output:guards = 1 (default)
        Option output:floats = 0 (default)
        Option output:openclose = 1 (default)
        Option output:enabled = 1 (default)
        Option output:init_missing = 0 (default)
        Option output:shiftOutput = 0 (default)
        Option output:shiftInput = 0 (default)
        Option output:flushFrequency = 1 (default)
        Using NetCDF4 format for file 'data/BOUT.dmp.nc'
Variable 'grid_id' not in mesh options. Setting to 
Variable 'hypnotoad_version' not in mesh options. Setting to 
Variable 'hypnotoad_git_hash' not in mesh options. Setting to 
Variable 'hypnotoad_git_diff' not in mesh options. Setting to 
Variable 'hypnotoad_geqdsk_filename' not in mesh options. Setting to 
        Option restart:parallel = 0 (default)
        Option restart:flush = 1 (default)
        Option restart:guards = 1 (default)
        Option restart:floats = 0 (default)
        Option restart:openclose = 1 (default)
        Option restart:enabled = 1 (default)
        Option restart:init_missing = 0 (default)
        Option restart:shiftOutput = 0 (default)
        Option restart:shiftInput = 0 (default)
        Option restart:flushFrequency = 1 (default)
        Option solver:type = pvode (default)
        Option solver:monitor_timestep = 0 (default)
        Option solver:is_nonsplit_model_diffusive = 1 (default)
        Option solver:mms = 0 (default)
        Option solver:mms_initialise = 0 (default)
        Option restart = 0 (default)
        Option conduction:chi = 1 (data/BOUT.inp)
Setting boundary for variable T
        lower_target region:    Option t:bndry_all = dirichlet_o4(0.0) (data/BOUT.inp)

        Option input:transform_from_field_aligned = true (default)
        Option t:function = gauss(y-pi, 0.2) (data/BOUT.inp)
        Option t:scale = 1 (data/BOUT.inp)
        Option all:evolve_bndry = 0 (default)
        Option t:evolve_bndry = 0 (default)
        Option datadir = data ()
        Option dump_format = nc (default)
        Option restart_format = nc (default)
        Using NetCDF4 format for file 'data/BOUT.restart.nc'
Variable 'grid_id' not in mesh options. Setting to 
Variable 'hypnotoad_version' not in mesh options. Setting to 
Variable 'hypnotoad_git_hash' not in mesh options. Setting to 
Variable 'hypnotoad_git_diff' not in mesh options. Setting to 
Variable 'hypnotoad_geqdsk_filename' not in mesh options. Setting to 
        Using NetCDF4 format for file 'data/BOUT.restart.nc'
        Option solver:save_repeat_run_id = 0 (default)
        Option nout = 100 (data/BOUT.inp)
        Option timestep = 0.1 (data/BOUT.inp)
        Option solver:NOUT = 100 (default)
        Option solver:output_step = 0.1 (default)
Solver running for 100 outputs with output timestep of 1.000000e-01
Initialising solver
Initialising PVODE solver
        3d fields = 1, 2d fields = 0 neq=100, local_N=50
        Option solver:mudq = 3 (default)
        Option solver:mldq = 3 (default)
        Option solver:mukeep = 0 (default)
        Option solver:mlkeep = 0 (default)
        Option solver:ATOL = 1e-12 (default)
        Option solver:RTOL = 1e-05 (default)
        Option solver:use_precon = 0 (default)
        Option solver:precon_dimens = 50 (default)
        Option solver:precon_tol = 0.0001 (default)
        Option solver:mxstep = 500 (default)
Running simulation

Run ID: 17b180ee-ee21-48d7-b314-fb62f99f979a

Run started at  : Fri Jan 14 11:29:02 2022
        Option restart = false (default)
        Option append = false (default)
        Option dump_on_restart = 1 (default)
        Option wall_limit = -1 (default)
        Option stopCheck = 0 (default)
Sim Time  |  RHS evals  | Wall Time |  Calc    Inv   Comm    I/O   SOLVER

0.000e+00          2       5.72e-02   -15.9    0.0   32.9   67.5   15.5
1.000e-01        107       1.40e-01    48.0    0.0    1.4   30.2   20.5
2.000e-01         34       8.32e-02    41.4    0.0    0.9   37.0   20.7
3.000e-01         21       7.21e-02    24.1    0.0    0.7   48.6   26.6
4.000e-01         24       8.38e-02    21.6    0.0    0.6   41.6   36.2
5.000e-01         20       5.53e-02    23.4    0.0    0.6   49.3   26.6
6.000e-01         23       5.78e-02    22.0    0.0    0.9   46.4   30.7
7.000e-01         14       5.71e-02    16.8    0.0    0.5   50.0   32.7
8.000e-01         16       6.29e-02    16.6    0.0    0.5   42.5   40.5
9.000e-01         13       5.37e-02    14.1    0.0    0.5   49.4   36.0
1.000e+00         18       5.41e-02    19.8    0.0    0.7   44.8   34.7
1.100e+00         15       4.79e-02    16.6    0.0    0.5   58.2   24.7
1.200e+00         11       4.70e-02    12.6    0.0    0.4   56.2   30.8
1.300e+00         11       5.42e-02    12.7    0.0    0.4   56.1   30.9
1.400e+00         13       5.15e-02    16.5    0.0    0.7   55.8   27.0
1.500e+00         13       6.40e-02    22.8    0.0    0.5   46.2   30.5
1.600e+00          6       4.86e-02     7.9    0.0    0.2   62.1   29.9
1.700e+00         10       5.50e-02    12.4    0.0    0.4   60.6   26.7
1.800e+00          9       4.78e-02    11.0    0.0    0.4   60.2   28.5
1.900e+00          8       4.02e-02     9.7    0.0    0.4   60.0   30.0
2.000e+00          9       4.65e-02    12.4    0.0    0.4   52.3   35.0
2.100e+00          9       4.37e-02    12.1    0.0    0.4   57.6   29.9
2.200e+00          6       5.22e-02     7.7    0.0    0.2   68.4   23.7
2.300e+00          7       8.74e-02    15.7    0.0    4.3   57.1   22.9
2.400e+00         10       7.80e-02    10.8    0.0    5.6   42.6   41.0
2.500e+00          6       1.08e-01     4.2    0.0    0.1   32.6   63.1
2.600e+00          5       2.00e-01    10.6    0.0    0.1   66.0   23.4
2.700e+00          7       2.65e-01     9.7    0.0    0.1   59.8   30.5
2.800e+00          8       8.60e-02     6.4    0.0    0.3   57.6   35.7
2.900e+00          8       2.20e-01     2.5    0.0    3.8   62.5   31.2
3.000e+00          1       3.20e-01     0.2    0.0    5.3   68.9   25.5
3.100e+00          7       3.52e-01     7.5    0.0    6.8   49.3   36.4
3.200e+00          6       4.39e-01     7.9    0.0    1.2   30.1   60.8
3.300e+00          5       5.60e-02     5.7    0.0    0.2   50.0   44.0
3.400e+00          6       9.73e-02     3.9    0.0    0.2   29.6   66.4
3.500e+00          1       1.09e-01     3.0    0.0    0.0   74.6   22.4
3.600e+00          5       8.97e-02     5.6    0.0    0.3   64.8   29.3
3.700e+00          7       2.36e-01     3.8    0.0    0.1   52.8   43.3
3.800e+00          1       1.51e-01     0.5    0.0    0.0   79.8   19.8
3.900e+00          9       3.20e-01     6.3    0.0    1.9   48.8   43.0
4.000e+00          1       1.37e-01     1.3    0.0    0.0   71.7   26.9
4.100e+00         10       1.68e-01     7.0    0.0    0.2   43.0   49.8
4.200e+00          1       1.98e-01     4.8    0.0    0.1   63.0   32.2
4.300e+00          8       2.03e-01     3.2    0.0    0.1   64.8   31.9
4.400e+00          1       2.95e-01     0.4    0.0    0.0   76.0   23.6
4.500e+00          7       3.13e-01     2.6    0.0    3.6   27.8   66.1
4.600e+00          1       2.63e-01     0.3    0.0    0.0   64.5   35.1
4.700e+00          7       7.44e-01     3.5    0.0    3.8   35.2   57.5
4.800e+00          1       1.45e-01     2.0    0.0    4.5   64.5   29.1
4.900e+00          7       3.47e-01     2.2    0.0    3.4   40.0   54.4
5.000e+00          1       1.51e-01     0.3    0.0   14.4   65.5   19.7
5.100e+00          6       6.60e-02     4.2    0.0    0.2   50.4   45.3
5.200e+00          1       5.13e-02     1.5    0.0    0.1   71.5   26.9
5.300e+00          7       4.47e-02     8.3    0.0    0.3   60.5   31.0
5.400e+00          1       3.93e-02     1.2    0.0    0.1   65.2   33.5
5.500e+00          7       4.05e-02    10.4    0.0    0.4   58.6   30.5
5.600e+00          1       4.16e-02     1.7    0.0    0.1   69.1   29.1
5.700e+00          6       1.02e-01     3.1    0.0    0.2   80.2   16.6
5.800e+00          1       1.24e-01     0.6    0.0    0.0   55.3   44.0
5.900e+00          6       4.43e-02     8.8    0.0    0.3   56.7   34.3
6.000e+00          5       4.74e-02     7.7    0.0    0.2   65.4   26.7
6.100e+00          1       4.35e-02     1.4    0.0    0.1   57.0   41.6
6.200e+00         10       4.89e-02    12.9    0.0    0.4   58.6   28.1
6.300e+00          1       3.92e-02     1.5    0.0    0.1   66.6   31.7
6.400e+00          1       3.80e-02     2.0    0.0    0.1   70.8   27.1
6.500e+00          1       4.29e-02     1.4    0.0    0.1   64.3   34.2
6.600e+00         11       4.95e-02    14.0    0.0    0.4   59.6   26.0
6.700e+00          1       4.04e-02     1.8    0.0    0.1   66.8   31.3
6.800e+00          1       4.37e-02     1.4    0.0    0.1   65.9   32.7
6.900e+00         11       4.14e-02    13.5    0.0    0.6   54.9   31.0
7.000e+00          1       4.38e-02     1.6    0.0    0.1   62.4   35.9
7.100e+00          1       4.12e-02     1.6    0.0    0.1   66.6   31.7
7.200e+00          9       4.51e-02    13.3    0.0    0.4   59.0   27.3
7.300e+00          1       4.04e-02     1.5    0.0    0.1   64.7   33.8
7.400e+00          1       4.17e-02     1.6    0.0    0.1   66.8   31.5
7.500e+00          7       3.72e-02     7.5    0.0    0.3   58.7   33.5
7.600e+00          1       3.25e-02     1.8    0.0    0.1   62.2   35.9
7.700e+00          1       3.58e-02     1.4    0.0    0.1   68.4   30.2
7.800e+00          1       3.67e-02     1.7    0.0    0.1   71.4   26.7
7.900e+00          9       4.74e-02    10.2    0.0    0.3   54.5   35.0
8.000e+00          1       3.91e-02     2.0    0.0    0.1   70.4   27.4
8.100e+00          1       3.48e-02     1.9    0.0    0.1   66.1   32.0
8.200e+00          7       4.54e-02     8.7    0.0    0.3   53.5   37.4
8.300e+00          1       4.06e-02     1.6    0.0    0.1   65.5   32.8
8.400e+00          1       4.12e-02     1.8    0.0    0.1   56.0   42.1
8.500e+00         11       4.82e-02    15.7    0.0    0.5   56.3   27.5
8.600e+00          1       4.01e-02     1.6    0.0    0.1   68.8   29.5
8.700e+00          1       3.33e-02     1.8    0.0    0.1   65.6   32.5
8.800e+00          1       3.52e-02     1.9    0.0    0.1   69.6   28.4
8.900e+00          1       3.42e-02     2.1    0.0    0.1   62.0   35.9
9.000e+00         16       5.00e-02    16.8    0.0    0.6   55.5   27.1
9.100e+00          1       3.82e-02     1.4    0.0    0.1   67.4   31.2
9.200e+00          1       4.45e-02     1.1    0.0    0.1   64.7   34.1
9.300e+00          1       4.07e-02     1.4    0.0    0.1   66.9   31.6
9.400e+00          1       4.75e-02     1.6    0.0    0.1   65.0   33.2
9.500e+00         15       4.96e-02    17.6    0.0    0.7   55.6   26.1
9.600e+00          1       3.97e-02     1.5    0.0    0.1   68.8   29.6
9.700e+00          1       4.42e-02     1.7    0.0    0.1   66.0   32.2
9.800e+00          1       4.34e-02     1.7    0.0    0.1   69.2   28.9
9.900e+00          1       3.93e-02     1.3    0.0    0.1   64.9   33.7
1.000e+01         10       5.74e-02    12.3    0.0    0.4   53.5   33.8
|  Step 100 of 100. Elapsed 0:00:09.8 ETA 0:00:00.0
Run finished at  : Fri Jan 14 11:29:12 2022
Run time : 10 s
        Option datadir = data ()
        Option settingsfile = BOUT.settings ()
Writing options to file data/BOUT.settings
        Option time_report:show = 0 (default)
```
