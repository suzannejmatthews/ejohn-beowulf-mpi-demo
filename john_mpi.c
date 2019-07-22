#include <stdio.h>
#include <mpi.h>

int main(int argc, char ** argv){
  char * files[] = {"node_pass0.txt", "node_pass1.txt", "node_pass2.txt", "node_pass3.txt"};
  int size, rank,length;
  char myname[128];
  char cmd[512], cmd2[512];
  
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Get_processor_name(myname, &length);
  
  sprintf(cmd, "cd /home/linaro/parallella-examples/john/run && sudo -E LD_LIBRARY_PATH=$LD_LIBRARY_PATH ./john %s --wordlist=password.lst -form=bcrypt-parallella > out", files[rank]);
  printf("[process %d (%s)]: executing john\n", rank, myname);
  system(cmd);
  
  sprintf(cmd2, "cd /home/linaro/parallella-examples/john/run && sudo -E LD_LIBRARY_PATH=$LD_LIBRARY_PATH ./john %s --show -form=bcrypt-parallella > cracked%d.txt", files[rank], rank);
   printf("[process %d (%s)]: generating cracked password files\n", rank, myname);
  system(cmd2);
  
  MPI_Barrier(MPI_COMM_WORLD);
  
  if (rank == 0){
    printf("Done running john the ripper!\n");
  } 
  
  MPI_Finalize();
  return 0;
}
