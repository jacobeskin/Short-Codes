integer function Collf(i)
  ! Function takes as input argument the starting integer for Collatz iteration
  ! and returns the number of iteration steps needed to reach i=1
  implicit none
  integer :: i
  integer :: n 

  n = 1

  ! Iteration
  do
     if (mod(i,2)==0) then
        i = i/2
     elseif (mod(i,2)==1) then 
        i = 3*i+1
     end if
     if (i==1) exit
     n = n+1
  end do

  Collf = n

end function Collf
