program array1
! Playing with array ranks and sizes  
  implicit none
  ! Define a rank 7 array with 2 elements to each rank
  integer, dimension(2,2,2,2,2,2,2) :: a

  ! Printing the values for size(a) and shape(a), that is number of 
  ! elements in a and size of a in each direction:

  print *, "Number of elements in a:", size(a)
  print *, "Size of a in each direction:"
  print *, shape(a)

end program array1
  
