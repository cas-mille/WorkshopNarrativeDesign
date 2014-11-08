
# ============================
# beinhaltet NUR & ALLE Dialoge mit Person2

label verhoer_blixa:
        
    show blixa
    
    # ========================
    # Hauptstruktur
    
    if blixa_zigarette == False:
        blixa "Haben Sie eine Zigarette?"
        jump zigarette
    if blixa_zigarette:
        jump blixa_normal
    
menu zigarette:
    "Zuerst hätte ich gerne ein paar Informationen...":
        blixa "Und ich hätte gerne zuerst eine Zigarette..."
        jump zigarette
    "Klar, hier, nehmen Sie eine.":
        $ blixa_zigarette = True
        jump nach_zigarette
    
label nach_zigarette:
    blixa "Danke."
    blixa "Hat Nick schon geredet?"
    "Bisher noch kein Wort..."
    blixa "Vielleicht braucht er ja auch eine Zigarette."
    $ blixa_tipp_zigarette = True
    "Ihr raucht zu viel."
    "Aber danke für den Tipp!"
    jump blixa_normal

menu blixa_normal:
    "Kommen wir nun zu den Fragen.":
        blixa "Ich möchte zuerst in Ruhe zu Ende rauchen..."
        jump blixa_normal
    "Ich komme später wieder.":
        jump weiter_blixa
    
label weiter_blixa:
    
    hide blixa
    jump auswahl
