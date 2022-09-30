#!/bin/bash
#Autor: Òscar Herrán Morueco
check_root()
{
if [ "$(id -u)" != "0" ]; then
	whiptail --title "Error!" \
    --msgbox "Heu d'executar aquest script com a root (sudo) > ./nomscript.sh" 10 60
	exit 1
fi
cerca_autoapagada
}

cerca_autoapagada()
{

    if [ -n "$(grep "shutdown -h now" /etc/crontab)" ]
    then
        if(whiptail  --title "Test Yes/No Box" \
    --yesno "Aquest equip ja està configurat per a apagar-se automàticament, voleu suprimir-lo?" \
    --yes-button "Si" \
    --no-button "No" 10 60) then
 sudo sed -i".bak" "/shutdown/d" /etc/crontab
 hora_o_sortir
else
tria_hora
fi      
    else
tria_hora
    fi

}

hora_o_sortir()
{

if(whiptail  --title "Què voleu fer?" \
    --yesno "Voleu configurar l'equip per a l'autoapagada?" \
    --yes-button "Si" \
    --no-button "No" 10 60) then

tria_hora
else
echo "Operació avortada per l'usuari"
exit 1
fi

}

tria_hora()
{

HORA=$(whiptail --title "Tria hora d'apagada" \
    --menu "Trieu una hora d'apagada" 15 60  4 \
    "00:00" "" \
    "00:30" "" \
    "01:00" "" \
    "01:30" "" \
    "02:00" "" \
    "02:30" "" \
    "03:00" "" \
    "03:30" "" \
    "04:00" "" \
    "04:30" "" \
    "05:00" "" \
    "05:30" "" \
    "06:00" "" \
    "06:30" "" \
    "07:00" "" \
    "07:30" "" \
    "08:00" "" \
    "08:30" "" \
    "09:00" "" \
    "09:30" "" \
    "10:00" "" \
    "10:30" "" \
    "11:00" "" \
    "11:30" "" \
    "12:00" "" \
    "12:30" "" \
    "13:00" "" \
    "13:30" "" \
    "14:00" "" \
    "14:30" "" \
    "15:00" "" \
    "15:30" "" \
    "16:00" "" \
    "16:30" "" \
    "17:00" "" \
    "17:30" "" \
    "18:00" "" \
    "18:30" "" \
    "19:00" "" \
    "19:30" "" \
    "20:30" "" \
    "20:00" "" \
    "21:30" "" \
    "21:00" "" \
    "22:30" "" \
    "22:00" "" \
    "23:30" "" 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
if [ $HORA = "00:00" ]; then
hr0000
else
if [ $HORA = "00:30" ]; then
hr0030
else
if [ $HORA = "01:00" ]; then
hr0100
else
if [ $HORA = "01:30" ]; then
hr0130
else
if [ $HORA = "02:00" ]; then
hr0200
else
if [ $HORA = "02:30" ]; then
hr0230
else
if [ $HORA = "03:00" ]; then
hr0300
else
if [ $HORA = "03:30" ]; then
hr0330
else
if [ $HORA = "04:00" ]; then
hr0400
else
if [ $HORA = "04:30" ]; then
hr0430
else
if [ $HORA = "05:00" ]; then
hr0500
else
if [ $HORA = "05:30" ]; then
hr0530
else
if [ $HORA = "06:00" ]; then
hr0600
else
if [ $HORA = "06:30" ]; then
hr0630
else
if [ $HORA = "07:00" ]; then
hr0700
else
if [ $HORA = "07:30" ]; then
hr0730
else
if [ $HORA = "08:00" ]; then
hr0800
else
if [ $HORA = "08:30" ]; then
hr0830
else
if [ $HORA = "09:00" ]; then
hr0900
else
if [ $HORA = "09:30" ]; then
hr0930
else
if [ $HORA = "10:00" ]; then
hr1000
else
if [ $HORA = "10:30" ]; then
hr1030
else
if [ $HORA = "11:00" ]; then
hr1100
else
if [ $HORA = "11:30" ]; then
hr1130
else
if [ $HORA = "12:00" ]; then
hr1200
else
if [ $HORA = "12:30" ]; then
hr1230
else
if [ $HORA = "13:00" ]; then
hr1300
else
if [ $HORA = "13:30" ]; then
hr1330
else
if [ $HORA = "14:00" ]; then
hr1400
else
if [ $HORA = "14:30" ]; then
hr1430
else
if [ $HORA = "15:00" ]; then
hr1500
else
if [ $HORA = "15:30" ]; then
hr1530
else
if [ $HORA = "16:00" ]; then
hr1600
else
if [ $HORA = "16:30" ]; then
hr1630
else
if [ $HORA = "17:00" ]; then
hr1700
else
if [ $HORA = "17:30" ]; then
hr1730
else
if [ $HORA = "18:00" ]; then
hr1800
else
if [ $HORA = "18:30" ]; then
hr1830
else
if [ $HORA = "19:00" ]; then
hr1900
else
if [ $HORA = "19:30" ]; then
hr1930
else
if [ $HORA = "20:00" ]; then
hr2000
else
if [ $HORA = "20:30" ]; then
hr2030
else
if [ $HORA = "21:00" ]; then
hr2100
else
if [ $HORA = "21:30" ]; then
hr2130
else
if [ $HORA = "22:00" ]; then
hr2200
else
if [ $HORA = "22:30" ]; then
hr2230
else
if [ $HORA = "23:00" ]; then
hr2300
else
if [ $HORA = "23:30" ]; then
hr2330
else
	whiptail --title "Error!" \
    --msgbox "S'ha produït un error!" 10 30
exit 1
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi 
else
   echo "You chose Cancel"
fi

}

hr0000()
{
echo "00 00   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0030()
{
echo "30 00   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0100()
{
echo "00 01   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0130()
{
echo "30 01   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0200()
{
echo "00 02   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0230()
{
echo "30 02   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0300()
{
echo "00 03   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0330()
{
echo "30 03   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0400()
{
echo "00 04   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0430()
{
echo "30 04   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0500()
{
echo "00 05   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0530()
{
echo "30 05   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0600()
{
echo "00 06   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0630()
{
echo "30 06   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0700()
{
echo "00 07   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0730()
{
echo "30 07   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0800()
{
echo "00 08   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0830()
{
echo "30 08   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0900()
{
echo "00 09   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr0930()
{
echo "30 09   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1000()
{
echo "00 10   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1030()
{
echo "30 10   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1100()
{
echo "00 11   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1130()
{
echo "30 11   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1200()
{
echo "00 12   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1230()
{
echo "30 12   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1300()
{
echo "00 13   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1330()
{
echo "30 13   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1400()
{
echo "00 14   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1430()
{
echo "30 14   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1500()
{
echo "00 15   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1530()
{
echo "30 15   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1600()
{
echo "00 16   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1630()
{
echo "30 16   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1700()
{
echo "00 17   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1730()
{
echo "30 17   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1800()
{
echo "00 18   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1830()
{
echo "30 18   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1900()
{
echo "00 19   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr1930()
{
echo "30 19   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2000()
{
echo "00 20   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2030()
{
echo "30 20   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2100()
{
echo "00 21   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2130()
{
echo "30 21   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2200()
{
echo "00 22   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2230()
{
echo "30 22   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2300()
{
echo "00 23   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}

hr2330()
{
echo "30 23   * * *   root   shutdown -h now" >> /etc/crontab
	whiptail --title "Avís" \
    --msgbox "L'equip s'apagarà automàticament a les $HORA" 10 30
}
check_root
