OPENQASM 2.0;
include "qelib1.inc";

qreg a[2];
creg c[4];

x a[1];

cx a[0], a[1];

measure a[0] -> c[0];
measure a[1] -> c[1];