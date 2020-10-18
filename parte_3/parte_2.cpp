// Librer�as
#include <iostream>
#include <iomanip> 
#include <cmath>
#include <stdio.h>
#include <conio.h>
#include <string>


using namespace std;

// Declaraci�n de las funciones del programa
void newton_H_m1();
void newton_H_m2();
void newton_G_m1();
void newton_G_m2();

double f(double x);	// Retorna el valor de la funci�n evaluada en x
double f_derivada(double x); // Retorna la derivada de la funci�n evaluada en x

// Men� principal, en donde se llaman las 4 funciones principales
int main(){
	newton_H_m1();
	newton_H_m2();
	newton_G_m1();
	newton_G_m2();
}

	
//Funci�n para retornar el valor de la funci�n evaluada en un x	
double f(double x)
{
	return  cos(x) - x ;
	//retorna cos(x) - x
}

//Funci�n para retornar el valor de la primera derivada de la funci�n evaluada en un x	
double f_derivada(double x)
{
	return - sin(x) - 1;
	//retorna -sen(x) - 1
}

//Funci�n para retornar el valor de la segunda derivada de la funci�n evaluada en un x	
double f_derivada2(double x)
{
	return - cos(x) ;
	//retorna -cos(x)
}

//Funci�n para retornar el valor de la funci�n H(u) = 1 / (1 + (b*u)) evaluada en un u y con un valor de b	
double Hu2(double u, double b)
{
	return 1 / (1 + (b*u)) ;
}

//Funci�n para retornar el valor de la funci�n G(w) = 2 / (2 - w) evaluada en un w
double Gw1(double w)
{
	return 2 / (2 - w) ;
}

//Funci�n para retornar el valor de la funci�n G(w) = 1 + (0.5 * w) evaluada en un w
double Gw2(double w)
{
	return 1 + (0.5 * w) ;
}


// Funcion newton_H_m1

// Par�metros de salida:
//  Xk: aproximaci�n al cero de la funci�n
//  k: numero de iteracciones que realiz� para encontrar un valor con la tolerancia dada
//  error: |f(Xk)|
void newton_H_m1 (){
	
	double tol;	// Tolerancia
	double x0; // Valor inicial
	double xk; // Siguiente aproximaci�n
	double error;	// Diferencia entre dos aproximaciones sucesivas: xk - x0
	int iterMax; // Cantidad de iteracciones m�ximas
	int k; // N�mero de iteraciones
	int Hu; // Funci�n H(u)
	float denominador; // Derivada de la funci�n
	
	
	tol = 0.00001; // Se define una tolerancia de 10^-5
	iterMax = 500; // Se define una cantidad de iteracciones m�ximas igual a 500
	x0 = 1; // Se define el valor inicial igual a 1
	k= 0; // Se define que el contador para las iteraciones del m�todo
	error = tol + 1; // Se define el error 
	
	
	// Ciclo while que se repite mientras que el error sea mayor o igual a la tolerancia y 
	// mientras que k sea menor que la cantidad iteracciones m�ximas
	while ((error >= tol) && (k < iterMax)){
		
		denominador = f_derivada(x0); // Se define el denominador como la derivada de la funci�n a evaluar
		
		// Si el denominador es igual a 0, muestra un mensaje de error		
		if (denominador == 0){
			printf ("Error: el denominador (derivada de la funci�n) no puede ser 0");
    		getch();
		}
		
		// Si no, entra a realizar las iteracciones y busca el cero de la funci�n a evaluar	
		else{
			Hu = 1; // Se define la funci�n H(u) igual a 1
			xk = x0 - (Hu*((f(x0))/(f_derivada(x0)))); // Se calcula el valor Xk, cero aproximado en cada iteracci�n
			error = abs(xk - x0); // Se calcula el error igual al valor absoluto de Xk - X0
			x0 = xk; // Se asigna el valor de Xk a X0
			k = k + 1; // Se incrementa el contador de iteraciones del m�todo
		}
		
	}
	
	// Datos que se muestran en consola, salidas de la funci�n
	cout << "---------------------------------------------------------------" << endl<< "\n";
	cout << "Nombre del m�todo: Newton -> newton_H_m1  " << endl<< "\n";
	cout << "Funci�n a la que se le desea calcular el cero:  cos(x) - x"  << endl<< "\n";
	cout << "Xk:  " << x0 << endl<< "\n";
    cout << "K:  " << k << endl<< "\n";
    cout << "Error:  " << error << endl<< "\n";

}


// Funcion newton_H_m2

// Con H(u) = 1 / (1 + bu)

// Par�metros de salida:
//  Xk: aproximaci�n al cero de la funci�n
//  k: numero de iteracciones que realiz� para encontrar un valor con la tolerancia dada
//  error: |f(Xk)|
void newton_H_m2 (){
	
	double tol;	// Tolerancia
	double x0; // Valor inicial
	double xk; // Siguiente aproximaci�n
	double error;	// Diferencia entre dos aproximaciones sucesivas: xk - x0
	int iterMax; // Cantidad de iteracciones m�xima
	int k; // N�mero de iteraciones
	double Hu; // Valor de la funci�n H(u) = 1 / (1 + (b*u)), evaluada en el valor de u(x)
	float denominador; // Derivada de la funci�n
	double b; // Valor b para la funci�n H(u)
	double u; // Valor de la funci�n u(x) = f(x) / f'(x), evaluada en X0
	
	
	tol = 0.00001; // Se define una tolerancia de 10^-5
	iterMax = 500; // Se define una cantidad de iteracciones m�ximas igual a 500
	x0 = 1; // Se define el valor inicial igual a 1
	b = 1; // Se define el valor de b igual a 1
	k= 0; // Se define que el contador para las iteraciones del m�todo
	error = tol + 1; // Se define el error 
	
	
	// Ciclo while que se repite mientras que el error sea mayor o igual a la tolerancia y 
	// mientras que k sea menor que la cantidad iteracciones m�ximas
	while ((error >= tol) && (k < iterMax)){
		
		denominador = f_derivada(x0); // Se define el denominador como la derivada de la funci�n a evaluar
				
		// Si el denominador es igual a 0, muestra un mensaje de error		
		if (denominador == 0){
			printf ("Error: el denominador (derivada de la funci�n) no puede ser 0");
    		getch();
		}
		
		// Si no, entra a realizar las iteracciones y busca el cero de la funci�n a evaluar
		else{
			u = (f(x0))/(f_derivada(x0)); // Se define la funci�n u(x) igual a f(x) / f�(x)
			Hu = Hu2(u, b); // Se define la funci�n H(u) igual a 1 / (1 + (b*u))
			xk = x0 - (Hu*((f(x0))/(f_derivada(x0)))); // Se calcula el valor Xk, cero aproximado en cada iteracci�n
			error = abs(xk - x0); // Se calcula el error igual al valor absoluto de Xk - X0
			x0 = xk; // Se asigna el valor de Xk a X0
			k = k + 1; // Se incrementa el contador de iteraciones del m�todo
		}
		
	}
	
	// Datos que se muestran en consola, salidas de la funci�n	
	cout << "---------------------------------------------------------------" << endl<< "\n";
	cout << "Nombre del m�todo: Kanwar Tomar -> newton_H_m2 " << endl<< "\n";
	cout << "Funci�n a la que se le desea calcular el cero:  cos(x) - x"  << endl<< "\n";
	cout << "Xk:  " << x0 << endl<< "\n";
    cout << "K:  " << k << endl<< "\n";
    cout << "Error:  " << error << endl<< "\n";

}


// Funcion newton_G_m1

// Con G(w) = 2 / (2 - w)

// Par�metros de salida:
//  Xk: aproximaci�n al cero de la funci�n
//  k: numero de iteracciones que realiz� para encontrar un valor con la tolerancia dada
//  error: |f(Xk)|
void newton_G_m1 (){
	
	double tol;	// Tolerancia
	double x0; // Valor inicial
	double xk; // Siguiente aproximaci�n
	double error;	// Diferencia entre dos aproximaciones sucesivas: xk - x0
	int iterMax; // Cantidad de iteracciones m�xima
	int k; // N�mero de iteraciones
	float denominador; // Derivada de la funci�n
	double Gw; // Valor de la funci�n G(w) = 2 / (2 - w), evaluada en el valor de w(x)
	double w; // Valor de la funci�n w(x) = (f(x) * f''(x)) / (f'(x) * f'(x)), evaluada en X0
	
	
	tol = 0.00001; // Se define una tolerancia de 10^-5
	iterMax = 500; // Se define una cantidad de iteracciones m�ximas igual a 500
	x0 = 1; // Se define el valor inicial igual a 1
	k= 0; // Se define que el contador para las iteraciones del m�todo
	error = tol + 1; // Se define el error 
	
	
	// Ciclo while que se repite mientras que el error sea mayor o igual a la tolerancia y 
	// mientras que k sea menor que la cantidad iteracciones m�ximas
	while ((error >= tol) && (k < iterMax)){
		
		denominador = f_derivada(x0); // Se define el denominador como la derivada de la funci�n a evaluar
		
		// Si el denominador es igual a 0, muestra un mensaje de error		
		if (denominador == 0){
			printf ("Error: el denominador (derivada de la funci�n) no puede ser 0");
    		getch();
		}
		
		// Si no, entra a realizar las iteracciones y busca el cero de la funci�n a evaluar		
		else{
    
			w = (f(x0) * f_derivada2(x0))/(f_derivada(x0) * f_derivada(x0)); // Se define la funci�n w(x) = (f(x) * f''(x)) / (f'(x) * f'(x))
			Gw = Gw1(w); // Se define la funci�n G(w) = 2 / (2 - w)
			xk = x0 - (Gw*((f(x0))/(f_derivada(x0)))); // Se calcula el valor Xk, cero aproximado en cada iteracci�n
			error = abs(xk - x0); // Se calcula el error igual al valor absoluto de Xk - X0
			x0 = xk; // Se asigna el valor de Xk a X0
			k = k + 1; // Se incrementa el contador de iteraciones del m�todo
		}
		
	}
	
	// Datos que se muestran en consola, salidas de la funci�n	
	cout << "---------------------------------------------------------------" << endl<< "\n";
	cout << "Nombre del m�todo: Halley -> newton_G_m1  " << endl<< "\n";
	cout << "Funci�n a la que se le desea calcular el cero:  cos(x) - x"  << endl<< "\n";
	cout << "Xk:  " << x0 << endl<< "\n";
    cout << "K:  " << k << endl<< "\n";
    cout << "Error:  " << error << endl<< "\n";

}



// Funcion newton_G_m2

// Con G(w) = 1 + (0.5 * w)

// Par�metros de salida:
//  Xk: aproximaci�n al cero de la funci�n
//  k: numero de iteracciones que realiz� para encontrar un valor con la tolerancia dada
//  error: |f(Xk)|
void newton_G_m2 (){
	
	double tol;	// Tolerancia
	double x0; // Valor inicial
	double xk; // Siguiente aproximaci�n
	double error;	// Diferencia entre dos aproximaciones sucesivas: xk - x0
	int iterMax; // Cantidad de iteracciones m�xima
	int k; // N�mero de iteraciones
	float denominador; // Derivada de la funci�n
	double Gw; // Valor de la funci�n G(w) = 1 + (0.5 * w), evaluada en el valor de w(x)
	double w; // Valor de la funci�n w(x) = (f(x) * f''(x)) / (f'(x) * f'(x)), evaluada en X0
	
	
	tol = 0.00001; // Se define una tolerancia de 10^-5
	iterMax = 500; // Se define una cantidad de iteracciones m�ximas igual a 500
	x0 = 1; // Se define el valor inicial igual a 1
	k= 0; // Se define que el contador para las iteraciones del m�todo
	error = tol + 1; // Se define el error 
	
	
	// Ciclo while que se repite mientras que el error sea mayor o igual a la tolerancia y 
	// mientras que k sea menor que la cantidad iteracciones m�ximas
	while ((error >= tol) && (k < iterMax)){
		
		denominador = f_derivada(x0); // Se define el denominador como la derivada de la funci�n a evaluar

		// Si el denominador es igual a 0, muestra un mensaje de error		
		if (denominador == 0){
			printf ("Error: el denominador (derivada de la funci�n) no puede ser 0");
    		getch();
		}
		
		// Si no, entra a realizar las iteracciones y busca el cero de la funci�n a evaluar
		else{
    
			w = (f(x0) * f_derivada2(x0))/(f_derivada(x0) * f_derivada(x0)); // Se define la funci�n w(x) = (f(x) * f''(x)) / (f'(x) * f'(x))
			Gw = Gw2(w); // Se define la funci�n G(w) = 1 + (0.5 * w)
			xk = x0 - (Gw*((f(x0))/(f_derivada(x0)))); // Se calcula el valor Xk, cero aproximado en cada iteracci�n
			error = abs(xk - x0); // Se calcula el error igual al valor absoluto de Xk - X0
			x0 = xk; // Se asigna el valor de Xk a X0
			k = k + 1; // Se incrementa el contador de iteraciones del m�todo
		}
		
	}
	
	// Datos que se muestran en consola, salidas de la funci�n
	cout << "---------------------------------------------------------------" << endl<< "\n";
	cout << "Nombre del m�todo: Chebyshev -> newton_G_m2  " << endl<< "\n";
	cout << "Funci�n a la que se le desea calcular el cero:  cos(x) - x"  << endl<< "\n";
	cout << "Xk:  " << x0 << endl<< "\n";
    cout << "K:  " << k << endl<< "\n";
    cout << "Error:  " << error << endl<< "\n";

}
