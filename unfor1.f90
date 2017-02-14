program unfor1
! Creating unformatted data
  implicit none
  integer :: x(10), j, I ! Our 10 element array

  ! Input data to our array x
  x = (/(I,I=1,10)/)
 
  ! Create our file
  open(unit=1, file="ex5p3a", status="new", access='stream', &
       form='unformatted')
  do j=1,10
     write(1) x(j)
  end do
  close(1)

end program unfor1
