program harmonicsum
! This program calcutales the harmonic sum up to n = 5 million
  implicit none
  ! r_x and onex are the results of the sum and number 1 of
  ! the desired kind respectively
  real(kind=4) :: r_4=1.0, one4=1.0
  real(kind=8) :: r_8=1.0, one8=1.0
  real(kind=10) :: r_10=1.0, one10=1.0
  real(kind=16) :: r_16=1.0, one16=1.0 
  integer :: i, m=5000000 ! Range of the sum

  ! The loop starts at i=2, because i=1 is just r_x
  do i=2,m
     r_4 = one4/real(i,4)+r_4
     r_8 = one8/real(i,8)+r_8
     r_10 = one10/real(i,10)+r_10
     r_16 = one16/real(i,16)+r_16
  end do
  
  ! Printing out the results
  print '(/,"Sum with kind=4")'
  print *,r_4
  print '(/,"Sum with kind=8")'
  print *,r_8
  print '(/,"Sum with kind=10")'
  print *,r_10
  print '(/,"Sum with kind=16")'
  print *,r_16

 end program harmonicsum
