program ceros
  ! hey hey
  a=-4
  b=4
  n=1000
  h=(b-a)/n
  do i=0,n
    xi=a+(h*i)
    xi1=a+(h*(i+1))
    fi=f(xi)
    fi1=f(xi1)
    mult=fi*fi1
    if (mult.gt.0) print*,'Hay una raíz entre',xi,'y',xi1,''
  enddo
end

function f(x)
  f= -19.*(x-.5)*(x-1.)+exp(x)-exp(-2.*x)
end function
!hello this is a test
