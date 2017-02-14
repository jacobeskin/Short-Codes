program moontrip
! Calculates the time it takes to reach the moon
  implicit none
  integer, parameter :: rk=selected_real_kind(10,40)
  integer :: n
  real(kind=rk) :: x, x1, v, v1,  t, dt, A, c, b, g
  character(len=80) :: arg

  ! Time step from command line
  call get_command_argument(1,arg)
  read(arg,*) dt
  
  ! Starting values
  x1 = 6571000 ! Distance in the beginning
  v1 = 12012   ! Velocity in the beginning times 1.1
  ! Calculate acceleration
  c = (5.974E24)/(x1**2)
  b = (7.348E22)/(((38444E5)-x1)**2)
  g = 6.674E-11
  A = g*(b-c)
  ! Number of iterations
  n = 0
  
  ! Iterate until we reach moon
  do
     n = n+1
     
     ! New distance
     x = x1+v1*dt
     ! New velocity
     c = (5.974E24)/(x1**2)
     b = (7.348E22)/(((3844E5)-x1)**2)
     A = g*(b-c)
     v = v1+A*dt
     ! Update velocity and location for next iteration step
     v1 = v
     x1 = x
     
     ! If moon is reached, calculate flight time
     if (x>=(376000000)) then
        t = (n*dt)/3600
        exit
     end if

  end do

  ! Print flight time
  print *,
  print *, "Travel time is ", t, "hours."
  print *,

end program moontrip
     
     
     
  

  
