program array3
! Define 3 arrays, allocate values for them and access certain slices 
! of the arrays given in the problem sheet
  implicit none
  integer :: a(4), b(3,3), c(4,4), D(2), E(2,2), F(2,2) ! arrays 
  integer :: i, j ! do loop variable

  ! Assing and print out elements of the array

  ! Array a:
  do i = 1,4
     a(i) = i
  end do

  ! Array b:
  do i = 1,3
     do j = 1,3
        b(i,j) = j + i*3-3
     end do
  end do

  ! Array c:
  do i = 1,4
     do j = 1,4
        c(i,j) = j +i*4-4
     end do
  end do

  print *,
  print *, "Array a:"
  print *, a
  print *,
  print *, "Array b:"
  do i = 1,3
     print *, b(i,1:3)
  end do
  print *, 
  print *, "Array c:"
  do i = 1,4
     print *, c(i,1:4)
  end do
  print *,

  ! Take out the slices and print them out
  
  D = a(3:4)
  print *, "Slice of a:"
  print *, D
  print *,
  
  E(1,:) = [b(1,1), b(1,3)]
  E(2,:) = [b(3,1), b(3,3)]
  print *, "Slice of b:"
  do i = 1,2
     print *, E(i,:)
  end do

  F(1,:) = c(2,2:3)
  F(2,:) = c(3,2:3)
  print *, "Slice of c:"
  do i = 1,2
     print *, F(i,:)
  end do

  
  

end program array3
