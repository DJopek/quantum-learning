OPENQASM 2.0;
include "qelib1.inc";

qreg a[1];
qreg b[1];
qreg c[1];
qreg d[1];

creg sum[1];
creg carry[1];

ccx a[0], b[0], d[0];

cx a[0], b[0];

ccx b[0], c[0], d[0];

cx b[0], c[0];

cx a[0], b[0];

measure c[0] -> sum[0];
measure d[0] -> carry[0];