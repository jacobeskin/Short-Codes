program filereadtest
  implicit none
  character(len=80) :: fname ! Variable for the file name
  integer :: i               ! For do loop in printing
  real :: x(5)               ! Real valued array for reading the data

  ! Reading the data
  call get_command_argument(1,fname)
  open(unit=1, file=fname, status='old')
  read(1,*) x

  ! Printing the data on screen
  do i=1,5
     print *, 2**x(i)
  end do

end program filereadtest
