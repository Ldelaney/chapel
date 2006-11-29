module Norm{
  def norm(x: [], p) where x.rank == 1 {

    if (p == 2) {
      return sqrt(+ reduce (x*x));
    } else if (p == 1) {
      return + reduce abs(x);
    } else if ((p == 'inf') || (p == 'INF') || (p == 'Inf')) {
      return max reduce abs(x);
    } else return -1;
  }

  def norm(x:[?D], p) where x.rank == 2 {
  
    if (p == 1) {
      var maxColSum = abs(x(1,1));
      for j in D(2) {
        maxColSum = max(maxColSum,+ reduce abs(x[D(1),j]));
      }
      return maxColSum;
    } else if ((p == 'inf') || (p == 'INF') || (p == 'Inf')) {
      var maxRowSum = abs(x(1,1));
      for i in D(1) {
        maxRowSum = max(maxRowSum,+ reduce abs(x[i,D(2)]));
      }
      return maxRowSum;
    } else if ((p == 'frob') || (p == 'FROB') || (p == 'Frob')) {
      return sqrt(+ reduce abs(x));
    } else return -1;
  }

  def norm(x: []) {
    if (x.rank == 1) then return norm(x,2);
    else if (x.rank == 2) then return norm(x,'frob');
    else return -1;
  }
}

