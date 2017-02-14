program testcycle
! Summing squareroots of numbers given form command
! line with and without cylce-command
  implicit none
  integer :: n, i
  real, allocatable :: x(:) ! Array of those numbers
  real :: y ,z

  ! Read the amount of numbers to be given and allocate array x(:)
  print'(/,"How many numbers are you going to give?")'
  read *, n
  allocate(x(n))

  ! Read in the numbers
  do i=1,n
     print'(/,"Give number", x,  i3, ":")', i
     read *, x(i)
  end do
  print *,

  ! First number in the summing
  if (x(1)<0) then
     y = 0
     z = 0
  else
     y = sqrt(x(1))
     z = sqrt(x(1))
  end if

  ! Do the summing without cycle-command
  do i=2,n
     if (x(i)<0) then 
        y = y+0
     else
        y = y+sqrt(x(i))
     end if
  end do
  ! Print out the result
  print'("Result without cycle-command:")'
  print *, y

  ! Do the summing with cycle-command
  do i=2,n
     if (x(i)<0) cycle
     z = z+sqrt(x(i))
  end do
  ! Print out the result
  print'("Result with cycle command:")'
  print *, z

end program testcycle
  
