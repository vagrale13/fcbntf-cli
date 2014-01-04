#!/bin/bash

# Facebook Notifications-cli v0.1 04-01-2014
# This script created by vagrale13 (vagrale@gmail.com)

user=`whoami`
file=$(test -e /home/$user/.fcbntf-cli && echo "exists")
check=$(ls /usr/local/bin | grep "fbcmd")
chterm=$(whereis xterm)
lang=$(cat ~/.config/user-dirs.locale)


if [ "$lang" = "el_GR" ]; then

if [ "$chterm" = "xterm:" ]; then
echo "Πρέπει να εγκαταστήσετε το 'xterm' για να χρησιμοποιήσετε αυτο το script
Εγκαταστήστε το πακέτο 'xterm' και τρέξτε πάλι το 'setup.sh'"
exit
fi

if [ "$check" = "" ]; then
read -p "Πρέπει να εγκαταστήσετε το 'fbcmd' για να χρησιμοποιήσετε αυτο το script
Πατήστε [Enter] για να μεταφερθείτε στη σελίδα του 'fbcmd'..."
x-www-browser http://fbcmd.dtompkins.com/installation
exit
fi

read -p "
# Αυτό το script δημιουργήθηκε από τον 'vagrale13'
# για να σας δείχνει πληροφορίες από τον λογαριασμό σας στο Facebook.
# Χρησιμοποιεί το εργαλείο 'fbcmd'. Περισσότερες πληροφορίες για το 'fbcmd'
# μπορείτε να δείτε εδώ http://fbcmd.dtompkins.com/introduction

# Το παρών script είναι κάτω από την άδεια GPL license Version 3 (GPLv3)
# Μπορείτε να διαβάσετε σχετικά με την άδεια GPL
# με την εντολή: cat /usr/share/common-licenses/GPL-3
# ή από την σελίδα εδώ http://www.gnu.org/licenses/gpl.txt

# Για τυχόν προβλήματα που δημιουργηθούν στον υπολογιστή σας
# ή παράνομη χρήση του script
# την ευθύνη την έχει αποκλειστικά o χρήστης που το χρησιμοποιεί.

# Αν δεν συμφωνείτε με τα παραπάνω, σταματήστε την διαδικασία (Ctrl+C).
# Πατήστε [Enter] για να συνεχίσετε την εγκατάσταση..."

sleep 1;

if [ "$file" = "" ]; then
mkdir /home/$user/.fcbntf-cli
fi

echo "[Desktop Entry]
Name=Facebook Notification-cli
Icon=/home/$user/.fcbntf-cli/fcb.png
Exec=/home/$user/.fcbntf-cli/fcbntf-cli.sh
Terminal=false
Type=Application
Categories=Utility;Application;" > ~/.local/share/applications/fcbntf-cli.desktop

cp ../fcbntf-cli/fcbntf-cli_gr.bin /home/$user/.fcbntf-cli/fcbntf-cli.sh
chmod a+x /home/$user/.fcbntf-cli/fcbntf-cli.sh
cp ../fcbntf-cli/fcb.png /home/$user/.fcbntf-cli/
echo ""
echo ""
echo "# Η εγκατάσταση τελείωσε."
echo "# Μπορείτε να διαγράψετε τον φάκελο 'fcbntf-cli'"
echo "# και το αρχείο 'fcbntf-cli.tar.gz' δεν χρειάζονται πλέον."
echo "# Μπορείτε να τρέξετε το 'Facebook Notifications-cli' από το μενού."
echo ""
exit 0
fi

if [ "$chterm" = "xterm:" ]; then
echo "You must install 'xterm' to use this script
Install 'xterm' package and run again 'setup.sh'"
exit
fi

if [ "$check" = "" ]; then
read -p "You must install 'fbcmd' to use this script
Press [Enter] to open the 'fbcmd' web page..."
x-www-browser http://fbcmd.dtompkins.com/installation
exit
fi

read -p "
# This script created from 'vagrale13'
# to show information from your Facebook ID account.
# Uses 'fbcmd' tool. More info about 'fbcmd'
# you can see here http://fbcmd.dtompkins.com/introduction

# This script is under GPL license Version 3 (GPLv3)
# You can read about GPL licence
# with command: cat /usr/share/common-licenses/GPL-3
# or in web page http://www.gnu.org/licenses/gpl.txt

# For any problems that arise on your pc or illegal use of this script
# the responsibility lies solely with the person who use it.

# If you do not agree with the above, please stop the process (Ctrl+C).
# Press [Enter] to continue install..."

sleep 1;

if [ "$file" = "" ]; then
mkdir /home/$user/.fcbntf-cli
fi

echo "[Desktop Entry]
Name=Facebook Notification-cli
Icon=/home/$user/.fcbntf-cli/fcb.png
Exec=/home/$user/.fcbntf-cli/fcbntf-cli.sh
Terminal=false
Type=Application
Categories=Utility;Application;" > ~/.local/share/applications/fcbntf-cli.desktop

cp ../fcbntf-cli/fcbntf-cli.bin /home/$user/.fcbntf-cli/fcbntf-cli.sh
chmod a+x /home/$user/.fcbntf-cli/fcbntf-cli.sh
cp ../fcbntf-cli/fcb.png /home/$user/.fcbntf-cli/
echo ""
echo ""
echo "# Install completed."
echo "# You can delete folder 'fcbntf-cli'"
echo "# and archive 'fcbntf-cli.tar.gz' no longer needed."
echo "# You can run 'Facebook Notifications-cli' from menu."
echo ""
