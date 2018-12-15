 r←InsertCoin value;i
 :If (≢coinValues)<i←coinValues⍳value
     VM.coinsInserted[i]+←1
 :Else
     ('Accepted coins: ',⍕coinValues)⎕SIGNAL 501
 :EndIf
