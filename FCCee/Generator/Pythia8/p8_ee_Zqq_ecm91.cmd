Random:setSeed = on
Main:numberOfEvents = 1000         ! number of events to generate
Main:timesAllowErrors = 5          ! how many aborts before run stops


! 2) Settings related to output in init(), next() and stat().
Init:showChangedSettings = on      ! list changed settings
Init:showChangedParticleData = off ! list changed particle data
Next:numberCount = 100            ! print message every n events
Next:numberShowInfo = 1            ! print event information n times
Next:numberShowProcess = 1         ! print process record n times
Next:numberShowEvent = 0           ! print event record n times
Stat:showPartonLevel = off

! 3) Beam parameter settings. Values below agree with default ones.
Beams:idA = 11                   ! first beam, e- = 11
Beams:idB = -11                  ! second beam, e+ = -11

! Beam energy spread: 0.132% x 45.594 GeV = 0.0602 GeV
Beams:allowMomentumSpread  = on
Beams:sigmaPzA = 0.0602
Beams:sigmaPzB = 0.0602

! Vertex smearing :
Beams:allowVertexSpread = on
Beams:sigmaVertexX = 4.50e-3   !  6.4 mum / sqrt2
Beams:sigmaVertexY = 20.0E-6   !  28.3 nm / sqrt2
Beams:sigmaVertexZ = 0.30      !  0.30 mm

! 4) Hard process : qq, at 365 GeV
Beams:eCM = 91.188               ! CM energy of collision
WeakSingleBoson:ffbar2ffbar(s:gmZ) = on

PartonLevel:ISR = on               ! initial-state radiation
PartonLevel:FSR = on               ! final-state radiation

! Decays
!Z0
23:onMode = off
23:onIfAny = 1 2 3 4 5 6
