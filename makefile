EXECS=mpi_hello_world mpi_window_create
MPICC?=mpicxx

all: ${EXECS}

mpi_hello_world: mpi_hello_world.c
	${MPICC} -o mpi_hello_world mpi_hello_world.c

mpi_window_create: mpi_window_create.c
	${MPICC} -o mpi_window_create mpi_window_create.c
clean:
	rm -f ${EXECS}
