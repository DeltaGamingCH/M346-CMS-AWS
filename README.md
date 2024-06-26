# M346_Project

## Aufgabenanforderungen
Die Aufgabenanforderugen können [hier](https://github.com/DeltaGamingCH/M346-CMS-AWS/blob/main/Requirements-M346-CMS.pdf) gefunden werden. 

## Dokumentation
Um die EC2 Instanz mit Joomla zu erstellen führen sie `start.sh` aus.
### Setup


#### `sh start.sh`
Alles wird für sie aufgesetzt. Falls sie die Instanz wieder herunterfahren wollen, können sie `terminate.sh` ausführen. 


#### `sh terminate.sh`
Das terminate Skript wird sie auffordern, die Instanz ID und den Namen der Security Group einzugeben, halten sie diese also bereit.
<br>

## Funktionalität
### user-data.txt:
Installiert einen Webserver (Apache), eine Datenbank (MySQL) und PHP auf einem Ubuntu-System und lädt dann das Content-Management-System Joomla herunter und installiert es. 
### start.sh
Skript erstellt eine EC2-Instanz auf AWS, konfiguriert eine Sicherheitsgruppe, die den Zugriff auf Port 80 von überall erlaubt, und installiert Joomla darauf. Dann wartet es, bis die Installation abgeschlossen ist, und gibt die URL des Servers aus, auf dem Joomla installiert ist.
### terminate.sh
Skript fordert die Eingabe der Instanz-ID und des Namens der Sicherheitsgruppe an. Dann beendet es die angegebene EC2-Instanz und wartet, bis die Instanz beendet ist. Anschließend löscht es die angegebene Sicherheitsgruppe.

## Aufgabenverteilung

- ReadMe(Dokumentation & Reflexion), sh.Shell hochladen und überprüfen --> Carina
- Skript erstellt und auf Funktionalität überprüft --> Nikita
- Skript erstellt und evtl. Verbesserungen vorgenommen --> Claude

## Reflexion
Das Lösen der Aufgabe empfanden wir als relativ simpel, jedoch stießen wir auf große Schwierigkeiten bei Schritt 2.

1. Zunächst recherchierten wir, welche Pakete wir für Apache und Joomla benötigen. Anschließend installierten wir diese sowie das Joomla.zip in `/var/www/html`. Beim direkten Entpacken des ZIP-Archivs stießen wir auf einen Fehler, da die Berechtigungen fehlten. Vor dem Entpacken mussten wir daher die Berechtigungen in `var/www/html` anpassen. Das Entpacken verlief anschließend reibungslos.

2. Unser größtes Problem bestand darin, dass wir nach der Installation die Apache-Standardseite sahen, anstatt auf unsere Joomla-Seite zugreifen zu können. Nach zahlreichen Versuchen kam mir die Idee, die `index.html` Datei zu löschen, was schließlich zur gewünschten Lösung führte. Dies erfolgte mittels `sudo rm /var/www/html/index.html`.

3. Das Skript, welches beim Initialisieren der EC2-Instanz in der User-Data übergeben werden soll, funktioniert bislang noch nicht wie erwartet. Es bedarf weiterer Anpassungen, um die gewünschte Funktionalität zu erreichen.
