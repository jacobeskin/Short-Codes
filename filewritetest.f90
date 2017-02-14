program filewritetest
  implicit none
  character(len=80) :: fname, arg ! Name if the file
  ! Variables for the power calculations and checking the number of inputs
  integer :: i1, i2, inputarg, i, d1, d2, d    
  real :: x

  ! Check if enough input arguments
  inputarg = command_argument_count()
  if (inputarg/=3) then
     print'("Error: need 3 input arguments")'
     print *,
     stop
  end if

  ! Read inputs to the program
  call get_command_argument(1, arg)
  read(arg,*) fname
  call get_command_argument(2, arg)
  read(arg,*) i1
  call get_command_argument(3, arg)
  read(arg,*) i2
  
  ! Writing on the file, also chekcing which is bigger i1 or i2

   open(unit=1, file=fname, status='unknown')
  
  if (i1>i2) then
     do i=i2,i1
        write(1, *) 2**(i2+i)
     end do
  else
     do i=i1,i2
        write(1, *) 2**(i1+i)
     end do
  end if
  close(unit=1, status='keep')
end program filewritetest
  
  
