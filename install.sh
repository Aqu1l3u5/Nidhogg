#!/bin/bash

# Ce programme à été créé le 01/01/2017 par Félix Foriel

if [ -e "/usr/bin/nidhogg" ] 
then
	read -p "Le programme nidhogg est déjà installé, voulez-vous le réinstaller ? (o/n) : " choix
	if [ $choix == "n" ]
	then
		exit 0
	fi
fi

cp program/nidhogg /usr/bin/nidhogg
cp configuration/nidhogg.nanorc /usr/share/nano/nidhogg.nanorc
echo '## Nidhogg
include "/usr/share/nano/nidhogg.nanorc" ' >> /etc/nanorc

