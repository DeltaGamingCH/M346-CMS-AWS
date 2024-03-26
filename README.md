# M346_Project

## Aufgabenanforderungen
Die Aufgabenanforderugen können [hier](https://github.com/DeltaGamingCH/M346-CMS-AWS/blob/main/Requirements-M346-CMS.pdf) gefunden werden. 

## Dokumentation
#!/bin/bash

### Aktualisiere die Paketliste und installiere Upgrades
sudo apt-get update -y
sudo apt-get upgrade -y

### Installiere Apache2 Webserver
sudo apt-get install apache2 -y

### Installiere MySQL Server
sudo apt-get install mysql-server -y

### Installiere PHP und erforderliche Module
sudo apt-get install php libapache2-mod-php php-mysql php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath -y

### Aktiviere das PHP-Modul für Apache2
sudo a2enmod php7.2

### Starte den Apache2-Webserver neu
sudo systemctl restart apache2

### Lade das Joomla-Paket herunter
sudo wget https://downloads.joomla.org/cms/joomla3/3-10-7/Joomla_3-10-7-Stable-Full_Package.zip

### Installiere das Unzip-Tool
sudo apt-get install unzip

### Setze die Berechtigungen für das Joomla-Verzeichnis
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

### Entpacke das Joomla-Paket in das Webverzeichnis
sudo unzip Joomla_3-10-7-Stable-Full_Package.zip -d /var/www/html/

### Entferne die Standardindexdatei von Apache
sudo rm /var/www/html/index.html


## Reflexion
Das Lösen der Aufgabe empfanden wir als relativ simpel, jedoch stießen wir auf große Schwierigkeiten bei Schritt 2.

1. Zunächst recherchierten wir, welche Pakete wir für Apache und Joomla benötigen. Anschließend installierten wir diese sowie das Joomla.zip in `/var/www/html`. Beim direkten Entpacken des ZIP-Archivs stießen wir auf einen Fehler, da die Berechtigungen fehlten. Vor dem Entpacken mussten wir daher die Berechtigungen in `var/www/html` anpassen. Das Entpacken verlief anschließend reibungslos.

2. Unser größtes Problem bestand darin, dass wir nach der Installation die Apache-Standardseite sahen, anstatt auf unsere Joomla-Seite zugreifen zu können. Nach zahlreichen Versuchen kam mir die Idee, die `index.html` Datei zu löschen, was schließlich zur gewünschten Lösung führte. Dies erfolgte mittels `sudo rm /var/www/html/index.html`.

3. Das Skript, welches beim Initialisieren der EC2-Instanz in der User-Data übergeben werden soll, funktioniert bislang noch nicht wie erwartet. Es bedarf weiterer Anpassungen, um die gewünschte Funktionalität zu erreichen.
