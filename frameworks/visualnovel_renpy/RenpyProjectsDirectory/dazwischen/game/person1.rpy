
# ============================
# beinhaltet NUR & ALLE Dialoge mit Person1

label verhoer_nick:
    
    show nick
    
    # ========================
    # Hauptstruktur
    
    if nick_zigarette == False:
        nick "Ich sag gar nichts."
        jump nick_noch_keine_zigarette
    if nick_zigarette:
        jump nick_zigarette
    
menu nick_noch_keine_zigarette:
    
    "Komm schon...":
        nick "Nein."
        jump nick_noch_keine_zigarette
    "Ich komme wieder!":
        jump weiter_nick
    "Hier, vielleicht hillft Dir eine Zigarette weiter." if blixa_tipp_zigarette:
        jump nick_zigarette
        
label nick_zigarette:
    
    nick "Danke. Was willst Du wissen...?"    
    "Wo warst Du gestern Abend um 20:00 Uhr?"
    nick "Das war so..."
    jump ende
        
label weiter_nick:
    
    hide nick
    jump auswahl
