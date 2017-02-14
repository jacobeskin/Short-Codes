program infty
! Produce infinity and -infinity and
! calculate infinity/infinity and -infinity/infinity
  implicit none
  real :: x ,y

  ! Assigning the values 0 and 1 to variables so I can do the division
  x = 0.0
  y = 1.0

  ! Divisions and results
  print *,
  print *, "infinity =" , y/x
  print *, "negative infinity =", -y/x
  print *,
  print *, "infinity/infinity =", (y/x)/(y/x)
  print *, "-infinity/infinity =", (-y/x)/(y/x)
  print *,

end program infty
