program reals
! Properties of different "kinds" of real numbers
  implicit none
  ! Lets initiate some numbers of the kinds 4, 8, 10 and 16 as we got in P3
  real(kind=4) :: r4 = 1.0
  real(kind=8) :: r8 = 1.0
  real(kind=10) :: r10 = 1.0
  real(kind=16) :: r16 = 1.0

  ! Print the properties of the different types
  print '(/,"Properties for kind=4")'
  print '("Largest number:")'
  print *, huge(r4)
  print '("Smallest positive number:")'
  print *, tiny(r4)

  print '(/,"Properties for kind=8")'
  print '("Largest number:")'
  print *, huge(r8)
  print '("Smallest positive number:")'
  print *, tiny(r8)

  print '(/,"Properties for kind=10")'
  print '("Largest number:")'
  print *, huge(r10)
  print '("Smallest positive number:")'
  print *, tiny(r10)

  print '(/,"Properties for kind=16")'
  print '("Largest number:")'
  print *, huge(r16)
  print '("Smallest positive number:")'
  print *, tiny(r16)
  
  print *, 

end program reals
