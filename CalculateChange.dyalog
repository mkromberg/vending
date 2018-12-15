 r←coins CalculateChange amount;c;combos;n
⍝ Select coins to return in order to repay amount

 n←≢coins
 combos←⍉(n⍴2)⊤⍳¯1+2*n                       ⍝ ALL combinations
 r←(↓(amount=combos+.×coins)⌿combos)/¨⊂coins ⍝ All that give the correct value
 r←({(⍵⍳⌊/⍵)}≢¨r)⊃r                          ⍝ Choose the shortest
