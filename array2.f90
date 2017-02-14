program array2
! Define an array of shape 2x2, print it out with values squared 
! given by the user
  implicit none
  integer, dimension(2,2) :: a ! 2x2 integer array
  integer :: a_11, a_12, a_21, a_22 ! elements of array a

  ! User input for elemnts of a
  print *, 
  print *, "a is a 2x2 array."
  print *, "Plug in the elements for a:"
  print *,
  print *, "a_11:"
  read(5,*) a_11
  print *, "a_12:"
  read(5,*) a_12
  print *, "a_21:"
  read(5,*) a_21
  print *, "a_22:"
  read(5,*) a_22
  print *,

  ! Square the input and print out the array

  a(1,1) = a_11**2
  a(1,2) = a_12**2
  a(2,1) = a_21**2
  a(2,2) = a_22**2

  print *, "Array a:"
  print *, a
  print *,
  print *, "Or in a more familiar matrix from:"
  print *, a(1,1:2)
  print *, a(2,1:2)

end program array2

  
