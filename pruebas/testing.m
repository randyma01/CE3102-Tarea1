clc;
clear;
close all;

display("---------------------------")
display("Valores Nativos de Octave: ")
display("---------------------------")

display("seno(30)")

seno = sin(30)

uno_entre_seno = 1 / (sin(30))


display("---------------------------")
display("Valores de fun_trans: ")
display("---------------------------")

display("seno(30)")

seno_t = sin_t(30)

uno_entre_seno_t = 1 * div_t(seno_t)