# 3.8. Компьютерные сети, лекция 3 - Захаров Сергей Николаевич

1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP
    ```
    telnet route-views.routeviews.org
    Username: rviews
    show ip route x.x.x.x/32
    show bgp x.x.x.x/32
    ```
   **Ответ:**
   
     - Подключение к роутеру [route-views.routeviews.org](route-views.bash)
     - Вывод команды [sh-ip-route](sh-ip-route.bash)
     - Вывод команды [sh-bgp](sh-bgp.bash)
     - Вывод команды [traceroute](traceroute.bash)

   Сайт с адресами публичных роутеров [Public Route Servers](http://www.routeservers.org/)
 
2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.
 
   **Ответ:**
 
3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.
 
   **Ответ:**
    - Вывод [netstat -ta](netstat-ta.bash) показывает список соединений по TCP:
      -  установленные соединения  `ESTABLISHED `, 
      -  ожидающие открытия соединения ` TIME_WAIT `, 
      -  а также сокеты, слушающие сеть и ожидающие подключения ` LISTEN `.

   Например: ` tcp        0      0 mx-linux:ssh            192.168.1.22:51636      ESTABLISHED `

   Здесь:
   - ` tcp ` - протокол передачи данных с гарантированным установлением соединения
   - ` mx-linux `- hostname локальной ОС Linux, с которой ведется диагностика сети
   - ` :ssh ` - обозначение номера порта в виде названия приложения/протокола, которое инициализировало сеоединение (может здесь также указываться сам номер порта (для ssh 22))
   - ` 192.168.1.22 ` - ip адрес хоста, с которым установлено соединение
   - ` :51636 ` - номер порта хоста, с которым установлено соединение (здесь также может указываться обозначение номера порта в виде названия приложения/протокола, 
   которое инициализировало сеоединение)
   - ` ESTABLISHED ` - состояние соединения (установлено)

     - При локальном или удаленном адресе ` 0.0.0.0:* ` - разрешены все адреса для IPv4 и все порты
     - При локальном или удаленном адресе ` [::]:* ` - разрешены все адреса для IPv6 и все порты

    По результатам диагностики состояний соединения зафиксированы протоколы:
    - ssh - Secure Shell (SSH), порт 22 TCP
    - netbios - NetBIOS NetBIOS Name Service (Official), порт 137 TCP
    - https - HTTPS (Hypertext Transfer Protocol over SSL/TLS) (Official), порт 443 TCP
    - http - Hypertext Transfer Protocol (HTTP) (Official), порт 80 TCP
    - microsoft-ds - Microsoft-DS Active Directory, Windows shares (Official), порт 445 TCP
    - sunrpc - SUN Remote Procedure Call, порт 111 TCP
    - ipp - IPP (Internet Printing Protocol), порт 631 TCP
    
   Просмотр статистики по протоколу TCP командой [netstat -st](netstat-st.bash)
 
4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?
 
   **Ответ:**
   
   - Вывод [netstat -ua](netstat-ua) показывает список соединений по UDP

    По результатам диагностики состояний соединения зафиксированы протоколы:
    - ntp - Network Time Protocol, 123 UDP
    - bootpc - Bootstrap Protocol (BOOTP) Client; also used by Dynamic Host Configuration Protocol (DHCP) (Official), 68 UDP
    - ipp - IPP (Internet Printing Protocol), порт 631 UDP
    - sunrpc - SUN Remote Procedure Call, порт 111 UDP
    - netbios - NetBIOS NetBIOS Name Service (Official), порт 137 UDP
    - mdns - Multicast DNS, 5353 UDP
    
       [Источник информации о портах](https://ru.adminsub.net/tcp-udp-port-finder)
    
   - Просмотр статистики по протоколу UDP командой [netstat -su](netstat-su.bash)
 
5. Используя diagrams.net, создайте L3 диаграмму вашей домашней сети или любой другой сети, с которой вы работали. 
 
   **Ответ:**
 
 ---
## Задание для самостоятельной отработки (необязательно к выполнению)

6*. Установите Nginx, настройте в режиме балансировщика TCP или UDP.
 
   **Ответ:**
 
7*. Установите bird2, настройте динамический протокол маршрутизации RIP.
 
   **Ответ:**
 
8*. Установите Netbox, создайте несколько IP префиксов, используя curl проверьте работу API.
 
   **Ответ:**
 
 ---
