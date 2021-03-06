C/MEMBR ADD NAME=FNORM,SSI=0
      double precision function fnorm (n, a, w)
clll. optimize
c-----------------------------------------------------------------------
c%purpose
c this function computes the norm of a full n by n matrix,
c stored in the array a, that is consistent with the weighted max-norm
c on vectors, with weights stored in the array w..
c   fnorm = max(i=1,...,n) ( w(i) * sum(j=1,...,n) abs(a(i,j))/w(j) )
c!
c-----------------------------------------------------------------------
      integer n,   i, j
      double precision a,   w, an, sum
      dimension a(n,n), w(n)
      an = 0.0d+0
      do 20 i = 1,n
        sum = 0.0d+0
        do 10 j = 1,n
 10       sum = sum + abs(a(i,j))/w(j)
        an = max(an,sum*w(i))
 20     continue
      fnorm = an
      return
c----------------------- end of function fnorm -------------------------
      end
