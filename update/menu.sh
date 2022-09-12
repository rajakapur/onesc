#!/bin/bash
#Menu

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
clear
#paste ini di menu anda. Terpulang kepada tempat yg anda mahu. Sebaiknya di atas info detail vps anda.
banner=$(cat /var/lib/banner-name/banner)
ASCII=$(cat /var/lib/banner-name/ASCII)
echo ""
figlet -f$ASCII "$banner" | lolcat
echo "___________________________________________________________"
username=$(cat /var/lib/banner-name/username)
echo ""
echo -e "Username:" "$username" | lolcat
MYIP=$(curl -sS ipv4.icanhazip.com)
name=$(curl -sS https://raw.githubusercontent.com/rajakapur/terimaip/main/authipvps | grep $MYIP | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/rajakapur/terimaip/main/authipvps | grep $MYIP | awk '{print $3}')
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}║       AutoScript VPN By Mr.Trick        ║${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "Uptime : $(neofetch | grep Uptime | cut -d " " -f 2-100)"
echo -e "Domain : $(cat /etc/xray/domain)"
echo -e "IP VPS : $MYIP"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo -e "[${CYAN}1${NC}] • >> SSH & OpenVPN MENU  $wh"
echo -e "[${CYAN}2${NC}] • >> L2TP MENU$wh"
echo -e "[${CYAN}3${NC}] • >> PPTP MENU$wh"
echo -e "[${CYAN}4${NC}] • >> SSTP MENU$wh"
echo -e "[${CYAN}5${NC}] • >> WIREGUARD MENU$wh"
echo -e "[${CYAN}6${NC}] • >> SHADOWSOCKS MENU$wh"
echo -e "[${CYAN}7${NC}] • >> SHADOWSOCKSR MENU$wh"
echo -e "[${CYAN}8${NC}] • >> XRAY VMESS MENU$wh"
echo -e "[${CYAN}9${NC}] • >> XRAY VLESS MENU$wh"
echo -e "[${CYAN}10${NC}] • >> XRAY TROJAN MENU$wh"
echo -e "[${CYAN}11${NC}]• >> TROJAN GO MENU$wh"
echo -e "[${CYAN}12${NC}]• >> XRAY GRPC MENU$wh"
echo -e "[${CYAN}13${NC}]• >> SLOWDNS MENU (OFF)$wh"
echo -e "[${CYAN}14${NC}]• >> CEK SEMUA IP PORT$wh"
echo -e "[${CYAN}15${NC}]• >> CEK SEMUA SERVICE VPN$wh"
echo -e "[${CYAN}16${NC}]• >> UPDATE MENU (Update 2x)$wh"
echo -e "[${CYAN}17${NC}]• >> SL-FIX (Perbaiki Error SSLH+WS-TLS setelah reboot)$wh"
echo -e "[${CYAN}18${NC}]• >> Settings (Pengaturan)$wh"
echo -e "[${CYAN}19${NC}]• >> Exit (Keluar)$wh"
echo -e "[${CYAN}20${NC}]• >> copyrepo (Salin Repo Script Mantap)$wh"
echo -e "[${CYAN}21${NC}]• >> menuinfo (Untuk Mendapatkan Informasi)$wh"
echo -e "[${CYAN}22${NC}]• >> Menu-Banner$wh"
echo -e ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "Version : ${BLUE}$(cat /home/ver)${NC}"
echo -e "Client Name : $name"
echo -e "Expired Date : $exp"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
copyrepo
;;
21)
clear
menuinfo
;;
22)
clear
banner
;;
*)
clear
menu
;;
esac
