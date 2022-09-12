#!/bin/bash
#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
""
echo -e "[${CYAN}1${NC}] • >> Add Or Change Subdomain Host For VPS"
echo -e "[${CYAN}2${NC}] • >> Change Port Of Some Service"
echo -e "[${CYAN}3${NC}] • >> Autobackup Data VPS"
echo -e "[${CYAN}4${NC}] • >> Backup Data VPS"
echo -e "[${CYAN}5${NC}] • >> Restore Data VPS"
echo -e "[${CYAN}6${NC}] • >> Webmin Menu"
echo -e "[${CYAN}7${NC}] • >> Limit Bandwith Speed Server"
echo -e "[${CYAN}8${NC}] • >> Check Usage of VPS Ram"
echo -e "[${CYAN}9${NC}] • >> Reboot VPS"
echo -e "[${CYAN}10${NC}]• >> Speedtest VPS"
echo -e "[${CYAN}11${NC}]• >> Displaying System Information"
echo -e "[${CYAN}12${NC}]• >> Info Script Auto Install"
echo -e "[${CYAN}13${NC}]• >> Menu"
echo -e "[${CYAN}14${NC}]• >> Exit"
""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -p "Select From Options [ 1 - 14 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
autobackup
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
limitspeed
;;
8)
ram
;;
9)
reboot
;;
10)
speedtest
;;
11)
info
;;
12)
about
;;
13)
clear
menu
;;
14)
clear
exit
;;
*)
clear
menu
;;
esac
