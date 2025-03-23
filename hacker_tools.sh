#!/bin/bash
     # Установка необходимых пакетов
     pkg update && pkg upgrade -y
     pkg install dialog -y

     # Функция для проверки установки и запуска
     run_tool() {
         local tool_name=$1
         local install_command=$2
         local run_command=$3

         if ! command -v $tool_name &> /dev/null; then
             echo "Установка $tool_name..."
             eval $install_command
         fi
         echo "Запуск $tool_name..."
         eval $run_command
         read -p "Нажмите Enter, чтобы вернуться в меню..."
     }

     # Меню с 50 инструментами
     while true; do
         choice=$(dialog --clear --backtitle "Hacker Tools" --title "Меню" \
         --menu "Выберите инструмент:" 25 80 20 \
         1 "Nmap (сканирование сети)" \
         2 "Metasploit (тестирование уязвимостей)" \
         3 "SQLmap (тестирование SQL-инъекций)" \
         4 "Hydra (подбор паролей)" \
         5 "Wifite (взлом Wi-Fi)" \
         6 "John the Ripper (взлом паролей)" \
         7 "Aircrack-ng (взлом Wi-Fi)" \
         8 "Social-Engineer Toolkit (фишинг)" \
         9 "DDoS (атака на сайты)" \
         10 "Взлом телефона (Bad USB)" \
         11 "Nikto (сканирование веб-серверов)" \
         12 "Wireshark (анализ трафика)" \
         13 "Burp Suite (тестирование веб-приложений)" \
         14 "Netcat (сетевой инструмент)" \
         15 "Tcpdump (перехват трафика)" \
         16 "Ettercap (MITM-атаки)" \
         17 "Hashcat (взлом хэшей)" \
         18 "Recon-ng (разведка)" \
         19 "Maltego (визуализация данных)" \
         20 "TheHarvester (сбор информации)" \
         21 "Shodan (поиск устройств)" \
         22 "Cewl (генерация словарей)" \
         23 "Gobuster (перебор директорий)" \
         24 "Dirb (перебор директорий)" \
         25 "Wpscan (сканирование WordPress)" \
         26 "Commix (эксплуатация уязвимостей)" \
         27 "Skipfish (сканирование веб-приложений)" \
         28 "Wapiti (сканирование уязвимостей)" \
         29 "OpenVAS (сканирование уязвимостей)" \
         30 "Nessus (сканирование уязвимостей)" \
         31 "Armitage (графический интерфейс для Metasploit)" \
         32 "BeEF (взлом браузеров)" \
         33 "Responder (перехват сетевых данных)" \
         34 "Empire (пост-эксплуатация)" \
         35 "Cobalt Strike (тестирование на проникновение)" \
         36 "Snort (обнаружение вторжений)" \
         37 "Bro (анализ сетевого трафика)" \
         38 "Volatility (анализ памяти)" \
         39 "Binwalk (анализ файлов)" \
         40 "Radare2 (реверс-инжиниринг)" \
         41 "Ghidra (реверс-инжиниринг)" \
         42 "IDA Pro (реверс-инжиниринг)" \
         43 "OllyDbg (отладка)" \
         44 "Immunity Debugger (отладка)" \
         45 "Frida (динамический анализ)" \
         46 "Apktool (анализ APK)" \
         47 "Jadx (декомпиляция APK)" \
         48 "Androguard (анализ Android-приложений)" \
         49 "MobSF (анализ мобильных приложений)" \
         50 "Выход" \
         2>&1 >/dev/tty)

         case $choice in
             1) run_tool "nmap" "pkg install nmap -y" "nmap" ;;
             2) run_tool "msfconsole" "pkg install metasploit -y" "msfconsole" ;;
             3) run_tool "sqlmap" "pkg install sqlmap -y" "sqlmap" ;;
             4) run_tool "hydra" "pkg install hydra -y" "hydra" ;;
             5) run_tool "wifite" "pkg install wifite -y" "wifite" ;;
             6) run_tool "john" "pkg install john -y" "john" ;;
             7) run_tool "aircrack-ng" "pkg install aircrack-ng -y" "aircrack-ng" ;;
             8) run_tool "setoolkit" "pkg install setoolkit -y" "setoolkit" ;;
             9) run_tool "python" "pkg install python -y" "git clone https://github.com/palahsu/DDoS-Ripper.git && cd DDoS-Ripper && python3 DRipper.py" ;;
             10) run_tool "python" "pkg install git python -y" "git clone https://github.com/termux/badusb.git && cd badusb && python badusb.py" ;;
             11) run_tool "nikto" "pkg install nikto -y" "nikto" ;;
             12) run_tool "wireshark" "pkg install wireshark -y" "wireshark" ;;
             13) run_tool "burpsuite" "pkg install burpsuite -y" "burpsuite" ;;
             14) run_tool "nc" "pkg install netcat -y" "nc" ;;
             15) run_tool "tcpdump" "pkg install tcpdump -y" "tcpdump" ;;
             16) run_tool "ettercap" "pkg install ettercap -y" "ettercap" ;;
             17) run_tool "hashcat" "pkg install hashcat -y" "hashcat" ;;
             18) run_tool "recon-ng" "pkg install recon-ng -y" "recon-ng" ;;
             19) run_tool "maltego" "pkg install maltego -y" "maltego" ;;
             20) run_tool "theharvester" "pkg install theharvester -y" "theharvester" ;;
             21) run_tool "shodan" "pkg install shodan -y" "shodan" ;;
             22) run_tool "cewl" "pkg install cewl -y" "cewl" ;;
             23) run_tool "gobuster" "pkg install gobuster -y" "gobuster" ;;
             24) run_tool "dirb" "pkg install dirb -y" "dirb" ;;
             25) run_tool "wpscan" "pkg install wpscan -y" "wpscan" ;;
             26) run_tool "commix" "pkg install commix -y" "commix" ;;
             27) run_tool "skipfish" "pkg install skipfish -y" "skipfish" ;;
             28) run_tool "wapiti" "pkg install wapiti -y" "wapiti" ;;
             29) run_tool "openvas" "pkg install openvas -y" "openvas" ;;
             30) run_tool "nessus" "pkg install nessus -y" "nessus" ;;
             31) run_tool "armitage" "pkg install armitage -y" "armitage" ;;
             32) run_tool "beef" "pkg install beef -y" "beef" ;;
             33) run_tool "responder" "pkg install responder -y" "responder" ;;
             34) run_tool "empire" "pkg install empire -y" "empire" ;;
             35) run_tool "cobaltstrike" "pkg install cobaltstrike -y" "cobaltstrike" ;;
             36) run_tool "snort" "pkg install snort -y" "snort" ;;
             37) run_tool "bro" "pkg install bro -y" "bro" ;;
             38) run_tool "volatility" "pkg install volatility -y" "volatility" ;;
             39) run_tool "binwalk" "pkg install binwalk -y" "binwalk" ;;
             40) run_tool "radare2" "pkg install radare2 -y" "radare2" ;;
             41) run_tool "ghidra" "pkg install ghidra -y" "ghidra" ;;
             42) run_tool "ida" "pkg install ida -y" "ida" ;;
             43) run_tool "ollydbg" "pkg install ollydbg -y" "ollydbg" ;;
             44) run_tool "immunity" "pkg install immunity -y" "immunity" ;;
             45) run_tool "frida" "pkg install frida -y" "frida" ;;
             46) run_tool "apktool" "pkg install apktool -y" "apktool" ;;
             47) run_tool "jadx" "pkg install jadx -y" "jadx" ;;
             48) run_tool "androguard" "pkg install androguard -y" "androguard" ;;
             49) run_tool "mobsf" "pkg install mobsf -y" "mobsf" ;;
             50) break ;;
         esac
     done
