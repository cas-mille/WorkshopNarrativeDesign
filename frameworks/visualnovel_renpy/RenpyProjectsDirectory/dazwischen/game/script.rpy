
# ============================
# Allgemeine Informationen
#
# Übungsaufgabe "Dazwischen"
# erstellt / vorbereitet von Csongor Baranyai
# zum Themenkreis "Interactive Storytelling"
# Kontakt: csongorb (at) gmail (dot) com
#
# Sofern die vorbereiteten Daten (Bilder, Audio, etc.) benutzt werden,
# ist die Nutzung nur privat & schul-intern erlaubt, eine öffentliche und / oder
# kommerzielle Nutzung ist nicht gestattet!

# ============================
# Organisatorisches für die Übung
# 
# Bitte folgende Dateien nicht anrühren / verändern:
# - options.rpy
# - screens.rpy

# ============================
# Die Aufgabe
#
# Schreibe eine interaktive Geschichte, in der der Spieler IMMER aus einem zentralen Raum aus
# zwei verschiedene Personen sprechen / befragen kann. Nach dem der Spieler mit der einen Person gesprochen hat
# müssen wieder beide Personen ansprechbar sein. Der Spieler kann nie mit beiden Personen zusammen sprechen!
#
# Die hier gezeigte Verhör-Situation ist nur ein Vorschlag, es sind noch viele andere Situationen denkbar:
# - ein Mann zwischen zwei Frauen
# - ein Kind zwischen den Eltern
# - etc.
# Alles ist möglich!
#
# Benutze die in diesem Beispiel vorgestellte Struktur:
# - script.rpy
#       - dieses Dokument
#       - beinhaltet alle allgemeinen Elemente
#               - Einleitung
#               - Auswahl der Person / Hauptraum
#               - Ende (verschiedene Enden sind / sollten möglich sein)
# - person1.rpy & person2.rpy
#       - beinhaltet ALLE Dialoge, die der Spieler mit der jeweiligen Person führen kann
#       - keine Dialoge in andere Datein "mischen"
#
# Es dürfen NUR folgende Renpy-Elemente benutz werden:
# - normale Dialog-Sätze
# - Dialog-Verzweigung ("menu:")
# - einfache Boolean-Variablen ("$ nick_hunger = False")
#    - inkl. der entsprechenden Abfragen ("if...")
#
# Es dürfen NUR folgende Bilder geändert werden:
# - die Bilder der Charaktere
#    - pro Charakter ein Bild
# - Hintergrundbild
#    - max. ein Hintergrundbild pro Charakter plus ein allgemeines für das Menü

# ============================
# Optional (Erlaubnis erforderlich!)
#
# Es dürfen optional folgende Elemente benutzt werden:
# - andere Variablen
#    - Zahlen, Strings, etc.
# - mehr als nur zwei Personen
# - der Spieler kann sich auf ein mal mit mehreren Personen unterhalten
# - etc.

# ===========================
# Tipps
#
# - denkt objektorientiert!
#       - wie ist die Abhängigkeit zwischen den Objekten?
#       - wie / wann beeinflussen sich die Objekte gegenseitig?
# - denkt zuerst durch, welche Variablen Ihr benötigen werdet!

# ============================
# Definiere Charaktere, Räume, Szenen, etc.

define n = Character (None, kind=nvl)

define nick = Character('Nick', color="#676767")
image nick = "data/nick_verdaechtig.png"

define blixa = Character('Blixa', color="#676767")
image blixa = "data/blixa_verdaechtig.png"

image raum = "data/raum.jpg"

# ============================
# Der Anfang

label start:

    # ============================
    # Definiere alle Variablen
    # ALLE Variablen müssen hier definiert werden
    
    $ nick_zigarette = False
    $ blixa_zigarette = False
    $ blixa_tipp_zigarette = False
    
    # ============================
    # Hier geht es erst richtig los...
    # Tipp: während des Schreibens & Probierens ist es sehr hilfreich den ersten Jump-Befehl direkt dort hinspringen zu lassen, wo man gerade arbeitet!
    # Dabei müssen manchmal auch die entsprechenden Variablen gesetzt werden!
    # Und: Am Ende nicht vergessen den Jump-Befehl wieder zurück zu setzen!

    jump einleitung
    
label einleitung:
    
    scene raum
    nvl clear
    n "Ich wurde um 5:00 Uhr benachrichtigt. Eine junge Frau wurde tot in einer Seitenstrasse gefunden."    
    n "Man hat bereits zwei Verdächtige festgenommen. Laut ihrem Kalender hat sie die beiden am Abend zuvor getroffen. Die Zwei spielten in der selben Band. Die Eingangstür zu ihrem Proberaum ist nur ein paar Meter von der Leiche entfernt."
    n "Ich habe mich entschlossen, die beiden getrennt zu den Geschehnissen zu befragen. Doch wer sollte der erste sein?"
    jump auswahl
    
label auswahl:
        
    menu:
        "Bringt mir Nick!":
            jump verhoer_nick
            
        "Bringt mir Blixa!":
            jump verhoer_blixa

label ende:
    
    hide nick
    hide blixa
    
    nvl clear
    n "...am Ende war es doch wieder nur wie jeder anderer Fall."
    n "Der Mörder wurde gefasst und verurteilt. Nur die junge Frau war immer noch tot, sie konnte niemand mehr beleben."
    n "Ende."    
    return
