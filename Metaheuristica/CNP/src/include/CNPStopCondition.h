/*
 * CNPStopCondition.h
 *
 * Fichero que define la clase CNPStopCondition. Forma parte del código esqueleto para el problema de las múltiples mochilas cuadráticas, ofrecido para las prácticas de la asignatura Metaheurísticas del Grado de Ingeniería Informática de la Universidad de Córdoba
 *
 * @author Carlos García cgarcia@uco.es
 */
#ifndef INCLUDE_CNPSTOPCONDITION_H_
#define INCLUDE_CNPSTOPCONDITION_H_

#include "CNPEvaluator.h"
#include <Timer.h>

/**
 * Clase que define algunas condiciones de parada bastante comunes en las metaheurísticas, e informa del requerimiento de pararla cuando se cumple alguna de ellas
 */
class CNPStopCondition{
	/**
	 * Variables miembro de la clase
	 * _maxEvaluations unsigned Máximo número de evaluaciones de soluciones
	 * _maxIterations unsigned Máximo número de iteraciones de la metaheurística
	 * _maxTime double que indica el máximo tiempo de ejecución de la metaheurística, medido en segundos
	 * _numIterations unsigned Cuenta el número de iteraciones ejecutadas
	 * _time Objeto de la clase Timer que cuenta los segundos de ejecución de la metaheurística
	 */
	unsigned _maxEvaluations;
	unsigned _maxIterations;
	double _maxTime;
	unsigned _numIterations;
	Timer _time;

public:
	/**
	 * Constructor
	 */
	CNPStopCondition(){
		_maxEvaluations = 0;
		_maxIterations = 0;
		_maxTime = 0;
		_numIterations = 0;
		_time.reset(); 
	}

	/**
	 * Destructor
	 */
	virtual ~CNPStopCondition(){};

	virtual bool reached(){
		bool result = false;

		if (_maxEvaluations > 0 && CNPEvaluator::getNumEvaluations() >= _maxEvaluations)
			result = true;

		if (_maxIterations > 0 && _numIterations >= _maxIterations)
			result = true;

		if (_maxTime > 0 && _time.elapsed_time(Timer::VIRTUAL) >= _maxTime)
			result = true;

		return result;
	}

	/**
	 * Función que inicializa las variables miembro
	 * @param[in] maxEvaluations Máximo número de evaluaciones de soluciones
	 * @param[in] maxIterations Máximo número de iteraciones de la metaheurística
	 * @param[in] maxTime Máximo tiempo de ejecución de la metaheurística, medido en segundos
	 */
	void setConditions(unsigned maxEvaluations, unsigned maxIterations, double maxTime){
		_maxEvaluations = maxEvaluations;
		_maxIterations = maxIterations;
		_maxTime = maxTime;
		_time.reset();
	}

	/**
	 * Función que notifica al objeto condición de parada que se ha ejecutado una nueva iteración de la metaheurística
	 */
	void notifyIteration(){
		_numIterations++;
	}
};

#endif /* INCLUDE_CNPSTOPCONDITION_H_ */

