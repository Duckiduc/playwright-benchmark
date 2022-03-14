### Colors ##
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
fn_goodafternoon() { echo; echo "Good afternoon."; }
fn_goodmorning() { echo; echo "Good morning."; }
fn_bye() { echo "Bye bye."; exit 0; }
fn_fail() { echo "Wrong option." exit 1; }

all_menu() {
    echo -ne "
$(magentaprint 'ALL BROWSERS')
$(yellowprint '1)') EZ mode (3 tests | 3 workers)
$(greenprint '2)') Average PC average You (24 tests | 8 workers)
$(cyanprint '3)') High as the price of your PC (90 tests | 30 workers)
$(blueprint '4)') You'll wish you never had internet (1800 tests | 600 workers)
$(magentaprint '5)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        npm run all-easy
        mainmenu
        ;;
    2)
        npm run all-medium
        mainmenu
        ;;
    3)
        npm run all-hard
        mainmenu
        ;;
    4)
        npm run all-extreme
        mainmenu
        ;;
    5)
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

chrome_menu() {
    echo -ne "
$(magentaprint 'ALL BROWSERS')
$(yellowprint '1)') EZ mode (3 tests | 3 workers)
$(greenprint '2)') Average PC average You (24 tests | 8 workers)
$(cyanprint '3)') High, get your PC to work (90 tests | 30 workers)
$(blueprint '4)') You have NASA's PC at home (600 | 600 workers)
$(magentaprint '5)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        npm run chromium-easy
        mainmenu
        ;;
    2)
        npm run chromium-medium
        mainmenu
        ;;
    3)
        npm run chromium-hard
        mainmenu
        ;;
    4)
        npm run chromium-extreme
        mainmenu
        ;;
    5)
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

firefox_menu() {
    echo -ne "
$(magentaprint 'ALL BROWSERS')
$(yellowprint '1)') EZ mode (3 tests | 3 workers)
$(greenprint '2)') Average PC average You (24 tests | 8 workers)
$(cyanprint '3)') High level boss (90 tests | 30 workers)
$(blueprint '4)') Just don't. (600 | 600 workers)
$(magentaprint '5)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        npm run firefox-easy
        mainmenu
        ;;
    2)
        npm run firefox-medium
        mainmenu
        ;;
    3)
        npm run firefox-hard
        mainmenu
        ;;
    4)
        npm run firefox-extreme
        mainmenu
        ;;
    5)
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

safari_menu() {
    echo -ne "
$(magentaprint 'ALL BROWSERS')
$(yellowprint '1)') EZ mode (3 tests | 3 workers)
$(greenprint '2)') Average PC average You (24 tests | 8 workers)
$(cyanprint '3)') High as your Mac's temperatures (90 tests | 30 workers)
$(blueprint '4)') You are Chuck Norris (600 | 600 workers)
$(magentaprint '5)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        npm run webkit-easy
        mainmenu
        ;;
    2)
        npm run webkit-medium
        mainmenu
        ;;
    3)
        npm run webkit-hard
        mainmenu
        ;;
    4)
        npm run webkit-extreme
        mainmenu
        ;;
    5)
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu() {
    echo -ne "
$(magentaprint 'MAIN MENU')
$(yellowprint '1)') INSTALL ALL DEPENDENCIES (npm install)
$(greenprint '2)') BENCHMARK ALL BROWSERS
$(cyanprint '3)') BENCHMARK CHROME
$(blueprint '4)') BENCHMARK FIREFOX
$(magentaprint '5)') BENCHMARK SAFARI
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        npm install
        mainmenu
        ;;
    2)
        all_menu
        ;;
    3)
        chrome_menu
        ;;
    4)
        firefox_menu
        ;;
    5)
        safari_menu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu