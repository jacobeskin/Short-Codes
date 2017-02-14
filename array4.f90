program array4
  implicit none
  integer :: a(10,10) ! This is our 10x10 array

  ! Assigning the elements in a checkerboard fasion
  ! using the array subobjects

  a = 0 ! All elements are put to zero

  ! Assigning the ones so to make the checkerboard
  a(2:10:2,1:10:2) = 1
  a(1:10:2,2:10:2) = 1
  
  ! And lets print out the array
  print'(10i1)', a

end program array4
