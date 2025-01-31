#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>
#include <time.h>

#define ITER	100
#define N	10

int bufer[N];
int indice=0;
sem_t empty;
sem_t full;
sem_t mutex;

/*
wait() => sem_wait (sem_t *)
signal() => sem_post (sem_t *)
init() => sem_init (sem_t *, int, int)
*/

int main()
{
	extern sem_t mutex;
	extern sem_t empty;
	extern sem_t full;
	sem_init(&mutex, 0,1); //El segundo parametro indica si es hilo(0) o proceso (1)
	sem_init(&full, 0,0);//Numero de elementos del bufer
	sem_init(&empty,0,N);//Numero de posiciones del bufer libres
	pthread_t hilos[2];
	int i,status;
	srand(time(NULL));
	void productor();
	void consumidor();

	// Create NHILOS threads
	if ((status = pthread_create(&hilos[0], NULL,(void *) productor, NULL)))
	    exit(status);

	if ((status = pthread_create(&hilos[1], NULL,(void *) consumidor, NULL)))
	    exit(status);
	// Wait threads
	for (i = 0; i < 2; i++) 
	{
		pthread_join(hilos[i], NULL);
    	}
	return 0;
}
void productor()
{
	extern int indice;
	extern int bufer[N];
	extern sem_t mutex;
	extern sem_t empty;
	extern sem_t full;
	int dato,i,suma=0;

	for(i=0;i<ITER;i++)
	{
		sem_wait(&empty);
		sem_wait(&mutex);
		dato=rand()%1000;
		bufer[i]=dato;		
		sem_post(&mutex);
		sem_post(&full);
		printf("Produce %d\n",dato);
		indice++;
		suma+=dato;
	}
	printf("Produce total: %d\n",suma);
	pthread_exit(NULL);
}

void consumidor()
{
	extern int indice;
	extern int bufer[N];
	extern sem_t mutex;
	extern sem_t empty;
	extern sem_t full;
	int dato,suma=0,i;

	for(i=0;i<ITER;i++)
	{
		sem_wait(&full);
		sem_wait(&mutex);
		dato=bufer[i];
		sem_post(&mutex);
		sem_post(&empty);
		suma+=dato;
		printf("Consume %d\n",dato);
		indice--;
	}
	printf("Consumo total: %d\n",suma);
	pthread_exit(NULL);
}
