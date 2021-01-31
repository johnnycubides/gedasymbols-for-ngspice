v 20200604 2
C 40000 40000 0 0 0 title-B.sym
C 43200 44600 1 90 0 current-1.sym
{
T 42200 45200 5 10 0 0 90 0 1
device=CURRENT_SOURCE
T 42700 44900 5 10 1 1 90 0 1
refdes=I1
T 43300 45200 5 10 1 1 90 0 1
value=1m
}
C 44800 44500 1 90 0 ng-resistor-1.sym
{
T 44400 44800 5 10 0 0 90 0 1
device=RESISTOR
T 44400 44700 5 10 1 1 90 0 1
refdes=R1
T 44800 44995 5 10 1 1 90 0 1
value=1k
}
C 46300 44500 1 90 0 ng-resistor-1.sym
{
T 45900 44800 5 10 0 0 90 0 1
device=RESISTOR
T 45900 44700 5 10 1 1 90 0 1
refdes=R2
T 46300 44995 5 10 1 1 90 0 1
value=2k
}
N 43000 45500 43000 47000 4
N 43000 47000 46000 47000 4
N 46000 44500 46000 44000 4
N 46000 44000 43000 44000 4
N 43000 44000 43000 44600 4
N 44500 44500 44500 44000 4
C 44400 43700 1 0 0 gnd-1.sym
C 44700 47100 1 0 0 ng-output.sym
{
T 44800 47400 5 10 0 0 0 0 1
device=OUTPUT
T 44895 47400 5 10 1 1 0 0 1
net=A:1
}
N 44500 47000 44500 47200 4
N 44500 47200 44700 47200 4
C 44200 45600 1 0 0 ammeter-ng.sym
{
T 44900 46250 5 10 1 1 0 0 1
refdes=VAmp1
T 44900 46450 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 44900 46650 5 10 0 0 0 0 1
footprint=none
T 44900 46050 5 10 0 2 0 0 1
value=DC 0V
}
C 45700 45600 1 0 0 ammeter-ng.sym
{
T 46400 46250 5 10 1 1 0 0 1
refdes=VAmp2
T 46400 46450 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 46400 46650 5 10 0 0 0 0 1
footprint=none
T 46400 46050 5 10 0 2 0 0 1
value=DC 0V
}
N 46000 45400 46000 45600 4
N 46000 46800 46000 47000 4
N 44500 45600 44500 45400 4
N 44500 47000 44500 46800 4