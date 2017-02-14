program epsminus
! Testing machine epsilon, this time subtracting 
  implicit none
  ! Lets initiate some numbers of the kinds 4, 8, 10 and 16 as we got in P3
  real(kind=4) :: r4 = 1.0, e4
  real(kind=8) :: r8 = 1.0, e8
  real(kind=10) :: r10 = 1.0, e10
  real(kind=16) :: r16 = 1.0, e16

  ! Lets calculate epsilon(x)-1 and epsilon(x)/2-1 and print out the results

  ! For kind=4
  print '(/,"For kind=4:")'
  e4 = epsilon(r4)-r4
  print '("epsilon(x)-1=")'
  print *,e4
  e4 = (epsilon(r4)/2)-r4
  print '("epsilon(x)/2-1=")'
  print *,e4

  ! For kind=8
  print '(/,"For kind=8:")'
  e8 = epsilon(r8)-r8
  print '("epsilon(x)-1=")'
  print *,e8
  e8 = (epsilon(r8)/2)-r8
  print '("epsilon(x)/2-1=")'
  print *,e8

  ! For kind=10
  print '(/,"For kind=10:")'
  e10 = epsilon(r10)-r10
  print '("epsilon(x)-1=")'
  print *,e10
  e10 = (epsilon(r10)/2)-r10
  print '("epsilon(x)/2-1=")'
  print *,e10

  ! For kind=16
  print '(/,"For kind=16:")'
  e16 = epsilon(r16)-r16
  print '("epsilon(x)-1=")'
  print *,e16
  e16 = (epsilon(r16)/2)-r16
  print '("epsilon(x)/2-1=")'
  print *,e16

  print *,

end program epsminus
  

  
