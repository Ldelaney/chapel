config const reps = 100;
proc main(){
  param x = 1;
  var k : int(64);
  for a in 1..reps{
        k = a % 30;
        k = k + 31;
        k = x << k;
        if k < 5 then writeln("less than 5");
  }
  writeln("DONE");
}
