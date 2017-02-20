// Compilation: g++ -Wall windchill.cpp -o a -lm

/* Calculates wind chill. Inputs are temperature in Celcius and wind speed in 
   km/h. Output is new temperature in Celcius with wind chill factored in. */ 

#include <string>
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

// Defining the function WindChill
double WindChill(double T, double V)
{
  double WC;
  WC = 0.045*(5.27*pow(V,0.5)+10.45-0.28*V)*(T-33)+33;
  return WC;
}

int main()
{
  double T,V, WC;

  // Input
  cout<<"\nEnter temperature T in Celsius:"; 
  cin>>T;
  cout<<"Enter wind speed V in km/h:";
  cin>>V; 
   
  WC = WindChill(T,V); // Calculate new temperature

  // Output
  cout<<"Wind Chill for T="<<T<<" and V="<<V<<" is "<<WC<<" Celsius.\n\n";
}
  
