program floops
! Studying how the do- loops work
  implicit none
  integer :: n=0, i ! n counts the number of iterations, i is the loop variable

  ! First do- loop
  
  print '(/,"First do- loop, i goes from 1 to 5")'
  print '("n counts the iterations",/)'
  do i=1,5
     print '("i=",i2)',i
     n = n+1
  end do
  print '(/,"Iterations in first loop, n=",i2)',n
  print '("After the first loop i=",i2,/)',i

  n = 0 ! reset the loop counter

  ! Second do- loop

  print '("Second do- loop, i goes from 5 to 0 in increments of -1")'
  print '("n counts the iterations",/)'
  do i=5,0,-1
     print '("i=",i2)',i
     n = n+1
  end do
  print '(/,"Iterations in second loop, n=",i2)',n
  print '("After the second loop i=",i2,/)',i

  n = 0 ! reset the coutner

  ! Third loop

  print '("Third do- loop, i goes from 10 to 1 in increments of -2")'
  print '("n counts the iterations",/)'
  do i=10,1,-2
     print '("i=",i2)',i
     n = n+1
  end do
  print '(/,"Iterations in third loop, n=",i2)',n
  print '("After the third loop i=",i2,/)',i

  n = 0 ! reset the counter

  ! Fourth loop

  print '("Fourth do- loop, i goes from 0 to 30 in increments of 7")'
  print '("n counts the iterations",/)'
  do i=0,30,7
     print '("i=",i2)',i
     n = n+1
  end do
  print '(/,"Iterations in fourth loop, n=",i2)',n
  print '("After the fourth loop i=",i2,/)',i

end program floops
  
