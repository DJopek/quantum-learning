OPENQASM 2.0;
include "qelib1.inc";

qreg a[2];
qreg b[1];
creg c[2];

// Set a = 1 and b = 0
x a[0];
x a[1];

// Perform addition
cx a[0], b[0];
cx a[1], b[0];
measure b[0] -> c[0];
measure a[0] -> c[1];