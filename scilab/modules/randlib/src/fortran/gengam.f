      DOUBLE PRECISION FUNCTION gengam(a,r)
C**********************************************************************
C
C     DOUBLE PRECISION FUNCTION GENGAM( A, R )
C           GENerates random deviates from GAMma distribution
C
C
C                              Function
C
C
C     Generates random deviates from the gamma distribution whose
C     density is
C          (A**R)/Gamma(R) * X**(R-1) * Exp(-A*X)
C
C
C                              Arguments
C
C
C     JJV added the argument ranges supported
C     A --> Location parameter of Gamma distribution
C                              DOUBLE PRECISION A ( A > 0 )
C
C     R --> Shape parameter of Gamma distribution
C                              DOUBLE PRECISION R ( R > 0 )
C
C
C                              Method
C
C
C     Renames SGAMMA from TOMS as slightly modified by BWB to use RANF
C     instead of SUNIF.
C
C     For details see:
C               (Case R >= 1.0)
C               Ahrens, J.H. and Dieter, U.
C               Generating Gamma Variates by a
C               Modified Rejection Technique.
C               Comm. ACM, 25,1 (Jan. 1982), 47 - 54.
C     Algorithm GD
C
C     JJV altered the following to reflect sgamma argument ranges
C               (Case 0.0 < R < 1.0)
C               Ahrens, J.H. and Dieter, U.
C               Computer Methods for Sampling from Gamma,
C               Beta, Poisson and Binomial Distributions.
C               Computing, 12 (1974), 223-246/
C     Adapted algorithm GS.
C
C**********************************************************************
C     .. Scalar Arguments ..
      DOUBLE PRECISION a,r
C     ..
C     .. External Functions ..
      DOUBLE PRECISION sgamma
      EXTERNAL sgamma
C     ..
C     .. Executable Statements ..

C     JJV added argument value checker
C     JPC : argument checks are moved in the interface 
C     JJV end addition

 10   gengam = sgamma(r)/a
C      gengam = gengam/a
      RETURN

      END
