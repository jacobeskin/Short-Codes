// Compilation: g++ -Wall windchill2.cpp -o a -lm

/* Calculates wind chill for wind speeds 2*j m/s and temperatures 10-j*5 
   Celsius where j=0,1,2,3,4 and prints the results on screen in a table */

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
  int i,j;
  double M [6][6];
  
  // Creating an array of wind chills for different T and V
  for (i=0;i<6;i++) // Row
    {
      for (j=1;j<6;j++) // Columns
	{
	  // Assigning the first row
	  if (i==0)
	    {
	      M [0][0] = 0;
	      M [0][j] = 10-(j-1)*5;
	    }
	  // Rest of the rows
	  if (i>0)
	    {
	      M [i][0] = 2*(i-1);
	      M [i][j] = WindChill(10-(j-1)*5,2*(i-1));
	    }
	}
    }

  // Printing the matrix M row by row
  for (i=0;i<6;i++) 
    {
      cout.precision(3);
      cout<<setw(6)<<M[i][0]<<" "<<setw(6)<<M[i][1]<<" "<<setw(6)<<M[i][2]<<" ";
      cout<<setw(6)<<M[i][3]<<" "<<setw(6)<<M[i][4]<<" "<<setw(6)<<M[i][5]<<" ";
      cout<<endl;
    }
}
