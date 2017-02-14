program avespeed
! Calculate average speed from inputs
! Input: Time (seconds), Distance (meters)
! Output: Average speed in kilometers per hour
  implicit none
  real :: m, s, km_h ! m, s input variables, km_h is output

  ! Input
  print '("Give a distance (in meters):")'
  read(5,*) m
  print '("Give the elapsed time (in seconds):")'
  read(5,*) s

  ! Average speed on kilometers per hour
  km_h = (m/s)*3.6 ! To go from m/s to km/h, multiply by 3.6

  ! Output
  print '("The average speed was", x, f10.7, ".")', km_h

end program avespeed
