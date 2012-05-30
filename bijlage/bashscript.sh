read -p 'Contactpersoon:' aanspreking;
read -p 'To (voornaam): ' vnaam;
read -p 'To (achternaam): ' anaam;
read -p 'To (e-mail adres): ' email;

#Spaties verwijderen uit namen
vnaamNospace=${vnaam// /};
anaamNospace=${anaam// /};

#het bestand de naam geven van de geadresseerde... dit doen we in 2 stappen
#eerst wisselen we van directory
cd /home/vandyckruben/Desktop/vandyckruben;
#vervolgens kopiëren we het bestand met als naam vnaam.anaam
cp Kile.pdf $vnaamNospace.$anaamNospace.pdf;

#commando om de email te verzenden via het programma mutt
#met als onderwerp "mailreviewer", naar $email en met het gekopieerde bestand als bijlage.
echo $aanspreking| mutt  -s "mailreviewer"  $email -a /home/vandyckruben/Desktop/vandyckruben/$vnaamNospace.$anaamNoscpace.pdf;
