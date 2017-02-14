recursive function Ackerf(m,n) result(Acker)
! Recursive Ackermann function 
  implicit none
  integer, parameter :: ik=selected_int_kind(12)
  integer(kind=ik), intent(in) :: m,n
  integer(kind=ik) :: Acker

  if (m==0) then
     Acker = n+1
   else if (n==0) then
     Acker = Ackerf(m-1,1_ik)
   else
     Acker = Ackerf(m-1, Ackerf(m,n-1))    
   end if

 end function Ackerf
