var tuple: (int, int) = (4, 5);
var tuple2: (real, int) = (7.8, 9);

writeln("hand-indexing tuple is: ", tuple(1), " ", tuple(2));
writeln("tuple is: ", tuple);

//BLC: This wasn't working when I checked in and didn't seem worth
// creating another future for.
writeln("hand-indexing tuple2 is: ", tuple2(1), " ", tuple2(2));
writeln("tuple2 is: ", tuple2);
