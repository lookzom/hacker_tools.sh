#!/bin/bash
     # Установка необходимых пакетов
     pkg update && pkg upgrade -y

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
     }

     # Список инструментов
     echo "Выберите инструмент (введите число):"
     echo "1. Nmap (сканирование сети)"
     echo "2. Metasploit (тестирование уязвимостей)"
     echo "3. SQLmap (тестирование SQL-инъекций)"
     echo "4. Hydra (подбор паролей)"
     echo "5. Wifite (взлом Wi-Fi)"
     echo "6. John the Ripper (взлом паролей)"
     echo "7. Aircrack-ng (взлом Wi-Fi)"
     echo "8. Social-Engineer Toolkit (фишинг)"
     echo "9. DDoS (атака на сайты)"
     echo "10. Взлом телефона (Bad USB)"
     echo "11. Nikto (сканирование веб-серверов)"
     echo "12. Wireshark (анализ трафика)"
     echo "13. Burp Suite (тестирование веб-приложений)"
     echo "14. Netcat (сетевой инструмент)"
     echo "15. Tcpdump (перехват трафика)"
     echo "16. Ettercap (MITM-атаки)"
     echo "17. Hashcat (взлом хэшей)"
     echo "18. Recon-ng (разведка)"
     echo "19. Maltego (визуализация данных)"
     echo "20. TheHarvester (сбор информации)"
     echo "21. Shodan (поиск устройств)"
     echo "22. Cewl (генерация словарей)"
     echo "23. Gobuster (перебор директорий)"
     echo "24. Dirb (перебор директорий)"
     echo "25. Wpscan (сканирование WordPress)"
     echo "26. Commix (эксплуатация уязвимостей)"
     echo "27. Skipfish (сканирование веб-приложений)"
     echo "28. Wapiti (сканирование уязвимостей)"
     echo "29. OpenVAS (сканирование уязвимостей)"
     echo "30. Nessus (сканирование уязвимостей)"
     echo "31. Armitage (графический интерфейс для Metasploit)"
     echo "32. BeEF (взлом браузеров)"
     echo "33. Responder (перехват сетевых данных)"
     echo "34. Empire (пост-эксплуатация)"
     echo "35. Cobalt Strike (тестирование на проникновение)"
     echo "36. Snort (обнаружение вторжений)"
     echo "37. Bro (анализ сетевого трафика)"
     echo "38. Volatility (анализ памяти)"
     echo "39. Binwalk (анализ файлов)"
     echo "40. Radare2 (реверс-инжиниринг)"
     echo "41. Ghidra (реверс-инжиниринг)"
     echo "42. IDA Pro (реверс-инжиниринг)"
     echo "43. OllyDbg (отладка)"
     echo "44. Immunity Debugger (отладка)"
     echo "45. Frida (динамический анализ)"
     echo "46. Apktool (анализ APK)"
     echo "47. Jadx (декомпиляция APK)"
     echo "48. Androguard (анализ Android-приложений)"
     echo "49. MobSF (анализ мобильных приложений)"
     echo "50. Выход"

     read -p "Введите число: " choice

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
         50) echo "Выход..." ;;
         *) echo "Неверный выбор. Попробуйте снова." ;;
     esac
