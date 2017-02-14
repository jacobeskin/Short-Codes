program CollP
! Collatz iteration program
  implicit none
  integer :: i, n

  ! Starting integer
  print *,
  print'("Input starting positive integer for Collatz iteration:")'
  read *, n
  print *,
  
  ! In case starting integer is negative
  if (n<0) then
     print'("Starting integer must be positive!!")'
     print *,
     stop
  end if

  ! Do the iteration, exit when n=1
  i = 1                         
  do
     if (mod(n,2)==0) then       ! If n==0 mod(2)
        n = n/2
     else if (mod(n,2)==1) then  ! If n==1 mod(2)
        n = 3*n+1
     end if
     if (n==1) exit              ! If we reached n==1!!!
     i = i+1                     ! Iteration counter
  end do

  ! printing out the results
  print'("Number of iterations with this inital n:")'
  print *, i
  print *,

end program CollP
