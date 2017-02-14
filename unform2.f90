program unform2
! Reading unformatted data
  implicit none
  integer :: ios, i, j
  integer, parameter :: n=100
  real :: x(n)
 

  ! Opening and reading from the file
  open(unit=1, file="ex5p3a", iostat=ios, status="old", access="stream", &
       form="unformatted")
  i = 1
  do
     read(1,iostat=ios) x(i)
     if (ios<0) exit
     i = i+1
  end do
  close(1)
  
  ! Printing out contents of the file
  do j = 1,i-1
     print *, x(i)
  end do

end program unform2

