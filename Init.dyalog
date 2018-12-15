 Init

 ⍝ Constants
 coinValues←5 10 25 50 100
 coffeeTypes←'Black' 'Cream' 'Sugar' 'Cream&Sugar'
 materialNames←'Cups' 'Coffee' 'Water' 'Cream' 'Sugar'
 materialRequired←(1 1 1),⍤1(0 1 0 1,⍪0 0 1 1)

 ⍝ Machine state
 VM←⎕NS'' ⍝ Create container for state
 VM.coinCounts←0×coinValues
 VM.coinsInserted←0×coinValues
 VM.materialLevels←(≢materialNames)⍴0
