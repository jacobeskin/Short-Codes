program in2mm
! Inch to mm
  implicit none
  real :: inch(25), mm(25) ! Arrays that hold the values 
  integer :: i

  ! Creating the inch- vector
  inch = 0
  do i = 1,24
     inch(i+1) = 0.5*i
  end do
  
  ! Creating the mm- vector
  mm = 25.4*inch

  ! Printing the table
  do i = 1,25
     print'(f4.1, x, "inch", x, "=", x, f5.1, "mm")', inch(i), mm(i)
  end do

end program in2mm
