program ceros
  real mult
  a=-10
  b=10
  n=1000000
  h=(b-a)/n
  do i=0,n
    xi=a+(h*i)
    xi1=a+(h*(i+1))
    fi=f(xi)
    fi1=f(xi1)
    mult=fi*fi1
!    write(*,*) xi, xi1,fi,fi1,mult
    if (mult.lt.0) print*,'Hay una raíz entre',xi,'y',xi1,''
  enddo
end

function f(x)
  f= -19.*(x-.5)*(x-1.)+exp(x)-exp(-2.*x)
end function
