OPENQASM 2.0;
include "qelib1.inc";

qreg a[1];
qreg b[1];
qreg c[1];

creg a_c[1];
creg b_c[1];
creg c_c[1];

// bit states are contolled using Pauli gate (bit-flip)

// "XOR" operation on bits A and B (XOR operation on bits A and B using controlled-NOT gate)
cx a[0], b[0];

// "XOR" operation on "XOR" output of A and B bits and C bits and measure it
cx c[0], b[0];
measure b[0] -> a_c[0];

// "AND" operation on bits A and B (AND operation on bits A and B using controlled-controlled-NOT gate)
ccx a[0], b[1], a[2];