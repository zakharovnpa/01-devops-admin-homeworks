# 3.8. Компьютерные сети, лекция 3 - Захаров Сергей Николаевич

### 1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP

```bash
    telnet route-views.routeviews.org
    Username: rviews
    show ip route x.x.x.x/32
    show bgp x.x.x.x/32
 ```
   **Ответ:**
   
   - Листинг подключения к роутеру [route-views.routeviews.org](route-views.bash)
   - Листинг команды [sh-ip-route](sh-ip-route.bash)
   - Листинг команды [sh-bgp](sh-bgp.bash)
   - Листинг команды [traceroute](traceroute.bash)

   Сайт с адресами публичных роутеров [Public Route Servers](http://www.routeservers.org/)
 
### 2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.
 
   **Ответ:**
   
   * Создание виртуального интерфейса:
     - Убедимся, что загружен модуль ядра dummy для настройки виртуальных интерфейсов. Создадим виртуальный интерфейс dummy0:
       ![modeprobe-dummy](/03-sysadmin-08-net/img/image10.PNG)
     - Пропишем в автозагрузку виртуальный интерфейс dummy0:
       ![ip-link-add](/03-sysadmin-08-net/img/image11.PNG) 
     - Добавим ip адрес интерфейсу dummy0 и проверим его доступность:
       ![ip-address-add](/03-sysadmin-08-net/img/image12.PNG)
     - Посмотрим статические маршруты в системе:
       ![ip-route-show](/03-sysadmin-08-net/img/image13.PNG)
     - Поднимем линк на интерфейсе dummy0:
       ![ip-link-set-up](/03-sysadmin-08-net/img/image14.PNG)
     - Добавим статические маршруты через dummy0 к сетям ` 10.2.2.0/24 `, ` 10.30.30.0/24 `, ` 10.40.40.0/24 `:
       ![ip-route-add](/03-sysadmin-08-net/img/image19.PNG)

   * Удаление виртуального интерфейса: 
     - Удалим статические маршруты через dummy0 к сетям ` 10.2.2.0/24 `, ` 10.30.30.0/24 `, ` 10.40.40.0/24 `:
       ![ip-route-delete](/03-sysadmin-08-net/img/image20.PNG)
     - Удалим виртуальный интерфейс dummy0 и модуль dummy:
       ![ip-route-delete](/03-sysadmin-08-net/img/image18.PNG)
 
### 3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.
 
   **Ответ:**
   Для вывода списка сетевых соединений воспользуемся утилитами ` netstat ` и ` ss `.
   
   - Листинг [netstat -ta](netstat-ta.bash) показывает список соединений TCP:
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

   Примеры использования утилит ` netstat ` и ` ss `:
   - Просмотр статистики по протоколу TCP [netstat -st](netstat-st.bash).
   - Листинг команды [ss -t](browser-ss-t.bash), [ss -n](ss-n.bash)
   - Порты в ожидании входящего трафика [ss -l](ss-l.bash)
   - Показать процесс использующий сокет [ss -p](ss-p.bash)
   - Фильтр по Source-port: [ss -at sport = :22](ss-at-sport-22.bash)
   - Статистика [ss -s](ss-s.bash)
 
### 4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?
 
   **Ответ:**
   Для вывода списка сетевых соединений воспользуемся утилитами ` netstat ` и ` ss `.
   
   - Список соединений по UDP [netstat -ua](netstat-ua)
   - UDP сокеты [ss -ua](ss-ua.bash)

   По результатам диагностики состояний соединения зафиксированы протоколы:
   - ntp - Network Time Protocol, порт 123 UDP
   - bootpc - Bootstrap Protocol (BOOTP) Client; also used by Dynamic Host Configuration Protocol (DHCP) (Official), порт 68 UDP
   - ipp - IPP (Internet Printing Protocol), порт 631 UDP
   - sunrpc - SUN Remote Procedure Call, порт 111 UDP
   - netbios - NetBIOS NetBIOS Name Service (Official), порт 137 UDP
   - mdns - Multicast DNS, порт 5353 UDP
    
       [Источник информации о портах](https://ru.adminsub.net/tcp-udp-port-finder)
    
     Просмотр статистики по протоколу UDP командой [netstat -su](netstat-su.bash)
 
### 5. Используя diagrams.net, создайте L3 диаграмму вашей домашней сети или любой другой сети, с которой вы работали. 
 
   **Ответ:**
     
 Схема домашней сети ![my_home_net.png](/03-sysadmin-08-net/img/my_home_net-3.png)
 
 ---
## Задание для самостоятельной отработки (необязательно к выполнению)

6*. Установите Nginx, настройте в режиме балансировщика TCP или UDP.
 
   **Ответ:**
 
7*. Установите bird2, настройте динамический протокол маршрутизации RIP.
 
   **Ответ:**
 
8*. Установите Netbox, создайте несколько IP префиксов, используя curl проверьте работу API.
 
   **Ответ:**
 

 ---
* Источники информации из лекции:
  - [Guide to IP Layer Network Administration with Linux](http://linux-ip.net/html/index.html)
  - [The TCP/IP Guide](http://www.tcpipguide.com/free/index.htm)
  - [Примеры изображения схем Сети](https://linkmeup.gitbook.io/sdsm/0.-planirovanie/1.-shemi-seti)
  - [Рисование диаграмм](https://app.diagrams.net/)
  - [NetBox - инсталляция](https://netbox.readthedocs.io/en/stable/installation/)
  - [Теория и практика DMVPN](https://linkmeup.gitbook.io/sdsm/7.-vpn/5.-dmvpn/0.-teoriya-i-praktika)
  - [Как настроить nginx в качестве балансировщика нагрузки](https://blog.listratenkov.com/kak-nastroit-nginx-v-kachestve-balansirovshhika-nagruzki/)
  - [TCP Connection Establishment Process: The "Three-Way Handshake"](http://www.tcpipguide.com/free/t_TCPConnectionEstablishmentProcessTheThreeWayHandsh-3.htm)
  - [TCP/IP Ports: Transport Layer (TCP/UDP) Addressing](http://www.tcpipguide.com/free/t_TCPIPPortsTransportLayerTCPUDPAddressing-2.htm)
  - [Отказоустойчивый кластер с балансировкой нагрузки с помощью keepalived](https://habr.com/ru/post/524688/)
  - [Visualizing the Transition](https://www.digitalocean.com/community/tutorials/how-to-set-up-highly-available-haproxy-servers-with-keepalived-and-floating-ips-on-ubuntu-14-04#visualizing-the-transition)
  - [Как настроить высокодоступные HAProxy-серверы с Keepalived и плавающими IP-адресами в Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-highly-available-haproxy-servers-with-keepalived-and-floating-ips-on-ubuntu-14-04#visualizing-the-transition)
  - [Anycast против Unicast: что лучше выбирать в каждом случае](https://habr.com/ru/company/ruvds/blog/511050/)
  - [BGP и BFD на Cisco](http://ciao-cacao.blogspot.com/2011/12/bgp-bfd.html)
  - [Модульная сеть уровня 3 для Kubernetes: дизайн](https://blog.kintone.io/entry/neco/network-design)
  - [BIRD Internet Routing Daemon](https://bird.network.cz/?get_doc&f=bird.html)
  - [Постоянные статические маршруты в Linux](https://unix.stackexchange.com/questions/321687/what-is-the-best-way-to-add-a-permanent-route)
  - [Public Route Servers](http://www.routeservers.org/)
 
