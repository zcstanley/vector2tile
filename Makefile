# Makefile 
#
.SUFFIXES:
.SUFFIXES: .o .f90

include ./user_build_config

OBJS =	vector2tile_converter.o
	
all:	vector2tile_converter.exe

.f90.o:
	$(COMPILERF90) -c $(F90FLAGS) $(FREESOURCE) $(NETCDFMOD) $(*).f90

vector2tile_converter.exe: $(OBJS)
	$(COMPILERF90) -o $(@) $(F90FLAGS) $(FREESOURCE) $(NETCDFMOD) $(OBJS) $(NETCDFLIB)

clean:
	rm -f *.o *.mod *.exe


#
# Dependencies:
#
