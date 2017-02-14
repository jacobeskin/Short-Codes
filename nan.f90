program nan
! Producing NaN by taking a square root of -1 and by dividing 0/0. Then 
! also demosntrating that NaN does not equal Nan 
  implicit none
  real :: x, y, k ,l 

  ! Assign variables
  x = 0
  y = -1
  
  ! Produce NaN two ways and print out the results
  print *,
  print *, "Square root of -1 is", sqrt(y)
  print *, "Zero divided by zero is", x/x
  print *,

  ! Make three if statements testing if NaN is NaN
  
  print *, "Testing if 0/0 equals 0/0" 
  if ((x/x)==(x/x)) then
  print *, "0/0 == 0/0; NaN equals NaN!"
  else 
     print *, "0/0 /= 0/0; NaN does not equal NaN."
  end if
  print *,

  print *, "Testing if sqrt(-1) equals sqrt(-1)"
  if (sqrt(y)==sqrt(y)) then
  print *, "sqrt(-1) == sqrt(-1); NaN equals NaN!"
  else 
     print *, "sqrt(-1) /= sqrt(-1); NaN does not equal NaN"
  end if
  print *,

  print *, "Testing if 0/0 equals sqrt(-1)"
  if ((x/x)==sqrt(y)) then
  print *, "0/0 == sqrt(-1); NaN equals NaN!"
  else 
     print *, "0/0 /= sqrt(-1); NaN does not equal NaN"
  end if

end program nan
