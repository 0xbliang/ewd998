---- MODULE DieHard ----
EXTENDS Naturals

VARIABLE big, small

Max(a, b) == IF a > b THEN a ELSE b
Min(a, b) == IF a > b THEN b ELSE a

Init ==
    /\ big = 0
    /\ small = 0

EmptySmall ==
    /\ small' = 0
    /\ big' = big

EmptyBig ==
    /\ big' = 0
    /\ small' = small

PourSmallIntoBig ==
    /\ small' = Max(0, big + small - 5)
    /\ big' = Min(5, big + small)

PourBigIntoSmall ==
    /\ big' = Max(0, big + small - 3)
    /\ small' = Min(3, big + small)

FillUpSmall ==
    /\ small' = 3
    /\ big' = big

FillUpBig ==
    /\ big' = 5
    /\ small' = small

Next ==
    \/ EmptySmall
    \/ EmptyBig
    \/ PourSmallIntoBig
    \/ PourBigIntoSmall
    \/ FillUpSmall
    \/ FillUpBig

Safe ==
    \* big not 4
    /\ big # 4

TypeOK ==
    /\ small \in 0..3
    /\ big \in 0..5
====