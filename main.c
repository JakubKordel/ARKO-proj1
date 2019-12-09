#include <stdio.h>
#include "f.h"

int main(int argc, char* argv[]){
	if(argc<3){
		printf("Arg.missing\n");
		return 0;
	}
	printf(func(argv[1], *argv[2] ));
	printf("\n");
	return 0;
	

}
