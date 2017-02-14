program testpow
! Testing the order of calculation of the power operator **
  implicit none
  integer, parameter :: ik=selected_int_kind(19)
  integer(kind=ik) :: x=2, y=3, z=4, xyz1, xyz2, xyz3

  ! making calculations
  xyz1 = x**y**z
  xyz2 = (x**y)**z
  xyz3 = x**(y**z)

  ! printing out results
  print '("x=", i1, /, "y=", i1, /, "z=", i1)', x,y,z 
  print *,"x**y**z=", xyz1
  print *,"(x**y)**z=", xyz2
  print *,"x**(y**z)=", xyz3

end program testpow
  
