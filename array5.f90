program array5
  implicit none
  integer :: a(3,4) ! Declaring the integer array

  ! Assigning the asked values to each row

  a(1,:) = [1,2,3,4] ! First row
  a(2,:) = [5,6,7,8] ! Second row
  a(3,:) = -2        ! Third row

  ! Printing out the rows

  print *,
  print '(4i1, /, 4i1, /, 4i2, /)', a(1,:), a(2,:), a(3,:)
  print *,

end program array5
