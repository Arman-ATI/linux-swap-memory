RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    sleep .5 
fi
echo "Running as root..."
sleep .5
clear
while true; do
    clear
        echo -e "${BLUE}${YELLOW} 1.${NC} ${CYAN}install swap${NC}         ${BLUE}${NC}"
        echo -e "${BLUE}${YELLOW} 2.${NC} ${CYAN}coming soon!${NC}         ${BLUE}${NC}"
        echo -e "${BLUE}${YELLOW} 0.${NC} ${CYAN}exit${NC}         ${BLUE}${NC}"
        echo -e "This bash  was created by ${GREEN}ArmanATI${NC}\n"
        echo -e "Special thanks to ${GREEN}Pratik${NC} for his codes :).\n"


    read -p "Enter option number: " choice
    case $choice in
          #install swap
        1)
            clear
            echo -e "${GREEN}installing nekoray${NC}" 
            echo ""
            cd
            apt update && apt upgrade -y
            grep Swap /proc/meminfo
            sudo swapoff -a
            sudo dd if=/dev/zero of=/swapfile bs=1G count=8
            sudo chmod 0600 /swapfile
            sudo mkswap /swapfile
            sudo swapon /swapfile
            grep Swap /proc/meminfo
            echo ""
            echo -e "Press ${RED}ENTER${NC} to continue"
            read -s -n 1
            ;;
            
        # EXIT
        0)
            echo ""
            echo -e "${GREEN}Exiting...${NC}"
            echo "Exiting program"
            exit 0
            ;;
         *)
           echo "Invalid option. Please choose a valid option."
           echo ""
           echo -e "Press ${RED}ENTER${NC} to continue"
           read -s -n 1
           ;;
      esac
     done    
