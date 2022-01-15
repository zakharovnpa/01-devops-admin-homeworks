# 3.9. Элементы безопасности информационных систем - Захаров Сергей Николаевич

1. Установите Bitwarden плагин для браузера. Зарегестрируйтесь и сохраните несколько паролей.
    
    **Ответ:**
       Установлен Bitwarden, добавлен аккаунт на сайте alnado.ru
       ![Bitwarden](/03-sysadmin-09-security/img/Bitwarden.png)
2. Установите Google authenticator на мобильный телефон. Настройте вход в Bitwarden акаунт через Google authenticator OTP.
    
    **Ответ:**
    Установлен, настроена двухфакторная аутентификация
    ![google-authentucator](/03-sysadmin-09-security/img/google-authenticator.png)
    
3. Установите apache2, сгенерируйте самоподписанный сертификат, настройте тестовый сайт для работы по HTTPS.
    
    **Ответ:**
    
Установлен Apache    
```sh
root@PC-Ubuntu:~# type apache2
apache2 является /usr/sbin/apache2
```
Сгенерирован самоподписанный сертификат:
```sh
root@PC-Ubuntu:~# sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
Generating a RSA private key
................................................................+++++
................+++++
writing new private key to '/etc/ssl/private/apache-selfsigned.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:RU
State or Province Name (full name) [Some-State]:Samara
Locality Name (eg, city) []:city
Organization Name (eg, company) [Internet Widgits Pty Ltd]:zakharovnpa
Organizational Unit Name (eg, section) []:org
Common Name (e.g. server FQDN or YOUR name) []:www.zakharovnpa.org
Email Address []:zakharovnpa@gmail.com

```
Настроен тестовый сайт для работы по HTTPS:
```sh
root@PC-Ubuntu:/var/www/localhost# apache2ctl configtest
AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message
Syntax OK

```
```sh
root@PC-Ubuntu:~# mkdir -p /var/www/localhost
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# cd /var/www/localhost/
root@PC-Ubuntu:/var/www/localhost# 
root@PC-Ubuntu:/var/www/localhost# vim index.html
root@PC-Ubuntu:/var/www/localhost# 
root@PC-Ubuntu:/var/www/localhost# cat index.html 
<h1>it worked?- Yes!</h1>
```
```sh
root@PC-Ubuntu:/var/www/localhost# apache2ctl configtest
AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message
Syntax OK
```
```sh
root@PC-Ubuntu:/var/www/localhost# a2ensite localhost.conf
Enabling site localhost.
To activate the new configuration, you need to run:
  systemctl reload apache2
```
```sh
root@PC-Ubuntu:/var/www/localhost# systemctl reload apache2
```
```sh
root@PC-Ubuntu:/var/www/localhost# vim index.html
root@PC-Ubuntu:/var/www/localhost# 

root@PC-Ubuntu:/var/www/localhost# 
root@PC-Ubuntu:/var/www/localhost# systemctl reload apache2
root@PC-Ubuntu:/var/www/localhost# 
root@PC-Ubuntu:/var/www/localhost# 

```
```sh
root@PC-Ubuntu:/etc/apache2/sites-available# vim localhost.conf
root@PC-Ubuntu:/etc/apache2/sites-available# 
root@PC-Ubuntu:/etc/apache2/sites-available# cat localhost.conf 
<VirtualHost *:443>
   ServerName localhost
   DocumentRoot /var/www/localhost

   SSLEngine on
   SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
   SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
</VirtualHost>
```
```sh
root@PC-Ubuntu:/etc/apache2/sites-available# vim localhost.conf
root@PC-Ubuntu:/etc/apache2/sites-available# 
root@PC-Ubuntu:/etc/apache2/sites-available# cat localhost.conf 
<VirtualHost *:443>
   ServerName localhost
   DocumentRoot /var/www/localhost

   SSLEngine on
   SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
   SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
</VirtualHost>


<VirtualHost *:80>
    ServerName localhost
    Redirect / https://localhost/
</VirtualHost>
```
```sh
root@PC-Ubuntu:/etc/apache2/sites-available# apachectl configtest
AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message
Syntax OK
```
```sh
root@PC-Ubuntu:/etc/apache2/sites-available# systemctl reload apache2
```
Сайт ` https://localhost ` доступен как по порту 443, так и по порту 80
В браузере Chrom с пониженным уровнем безопасности:

![apache-it-worked](/03-sysadmin-09-security/img/apache-it-worked.png)

В браузере Mozilla с пониженным уровнем безопасности:

![apache-it-worked-mozilla](/03-sysadmin-09-security/img/apache-it-worked-mozilla.png)

4. Проверьте на TLS уязвимости произвольный сайт в интернете.
    
    **Ответ:**

Выполнена проверка на уязвимости сайта ` https://www.google.com/ `

[Листинг проверки](/03-sysadmin-09-security/Lesson/Lesson.md)

Выполнена проверка на уязвимости ранее настроенного сайта ` https://localhost/ `

```ps
root@PC-Ubuntu:~/testssl/testssl.sh# ./testssl.sh -e --fast --parallel https://localhost/

###########################################################
    testssl.sh       3.1dev from https://testssl.sh/dev/
    (06890d4 2022-01-10 11:19:10 -- )

      This program is free software. Distribution and
             modification under GPLv2 permitted.
      USAGE w/o ANY WARRANTY. USE IT AT YOUR OWN RISK!

       Please file bugs @ https://testssl.sh/bugs/

###########################################################

 Using "OpenSSL 1.0.2-chacha (1.0.2k-dev)" [~183 ciphers]
 on PC-Ubuntu:./bin/openssl.Linux.x86_64
 (built: "Jan 18 17:12:17 2019", platform: "linux-x86_64")


 Start 2022-01-15 12:35:08        -->> 127.0.0.1:443 (localhost) <<--

 A record via:           /etc/hosts 
 rDNS (127.0.0.1):       --
 Service detected:       HTTP



 Testing all 183 locally available ciphers against the server, ordered by encryption strength 


Hexcode  Cipher Suite Name (OpenSSL)       KeyExch.   Encryption  Bits     Cipher Suite Name (IANA/RFC)
-----------------------------------------------------------------------------------------------------------------------------
 xc030   ECDHE-RSA-AES256-GCM-SHA384       ECDH 521   AESGCM      256      TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384              
 xc028   ECDHE-RSA-AES256-SHA384           ECDH 521   AES         256      TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384              
 xc014   ECDHE-RSA-AES256-SHA              ECDH 521   AES         256      TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA                 
 x9f     DHE-RSA-AES256-GCM-SHA384         DH 2048    AESGCM      256      TLS_DHE_RSA_WITH_AES_256_GCM_SHA384                
 x6b     DHE-RSA-AES256-SHA256             DH 2048    AES         256      TLS_DHE_RSA_WITH_AES_256_CBC_SHA256                
 x39     DHE-RSA-AES256-SHA                DH 2048    AES         256      TLS_DHE_RSA_WITH_AES_256_CBC_SHA                   
 xc077   ECDHE-RSA-CAMELLIA256-SHA384      ECDH 521   Camellia    256      TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384         
 xc4     DHE-RSA-CAMELLIA256-SHA256        DH 2048    Camellia    256      TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256           
 x88     DHE-RSA-CAMELLIA256-SHA           DH 2048    Camellia    256      TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA              
 x9d     AES256-GCM-SHA384                 RSA        AESGCM      256      TLS_RSA_WITH_AES_256_GCM_SHA384                    
 x3d     AES256-SHA256                     RSA        AES         256      TLS_RSA_WITH_AES_256_CBC_SHA256                    
 x35     AES256-SHA                        RSA        AES         256      TLS_RSA_WITH_AES_256_CBC_SHA                       
 xc0     CAMELLIA256-SHA256                RSA        Camellia    256      TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256               
 x84     CAMELLIA256-SHA                   RSA        Camellia    256      TLS_RSA_WITH_CAMELLIA_256_CBC_SHA                  
 xc02f   ECDHE-RSA-AES128-GCM-SHA256       ECDH 521   AESGCM      128      TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256              
 xc027   ECDHE-RSA-AES128-SHA256           ECDH 521   AES         128      TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256              
 xc013   ECDHE-RSA-AES128-SHA              ECDH 521   AES         128      TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA                 
 x9e     DHE-RSA-AES128-GCM-SHA256         DH 2048    AESGCM      128      TLS_DHE_RSA_WITH_AES_128_GCM_SHA256                
 x67     DHE-RSA-AES128-SHA256             DH 2048    AES         128      TLS_DHE_RSA_WITH_AES_128_CBC_SHA256                
 x33     DHE-RSA-AES128-SHA                DH 2048    AES         128      TLS_DHE_RSA_WITH_AES_128_CBC_SHA                   
 xc076   ECDHE-RSA-CAMELLIA128-SHA256      ECDH 521   Camellia    128      TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256         
 xbe     DHE-RSA-CAMELLIA128-SHA256        DH 2048    Camellia    128      TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256           
 x45     DHE-RSA-CAMELLIA128-SHA           DH 2048    Camellia    128      TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA              
 x9c     AES128-GCM-SHA256                 RSA        AESGCM      128      TLS_RSA_WITH_AES_128_GCM_SHA256                    
 x3c     AES128-SHA256                     RSA        AES         128      TLS_RSA_WITH_AES_128_CBC_SHA256                    
 x2f     AES128-SHA                        RSA        AES         128      TLS_RSA_WITH_AES_128_CBC_SHA                       
 xba     CAMELLIA128-SHA256                RSA        Camellia    128      TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256               
 x41     CAMELLIA128-SHA                   RSA        Camellia    128      TLS_RSA_WITH_CAMELLIA_128_CBC_SHA                  


 Done 2022-01-15 12:35:17 [  13s] -->> 127.0.0.1:443 (localhost) <<--

```
    
5. Установите на Ubuntu ssh сервер, сгенерируйте новый приватный ключ. Скопируйте свой публичный ключ на другой сервер. Подключитесь к серверу по SSH-ключу.
     
    **Ответ:**
    
6. Переименуйте файлы ключей из задания 5. Настройте файл конфигурации SSH клиента, так чтобы вход на удаленный сервер осуществлялся по имени сервера.
    
    **Ответ:**
    
7. Соберите дамп трафика утилитой tcpdump в формате pcap, 100 пакетов. Откройте файл pcap в Wireshark.
    
    **Ответ:**
    
 ---
## Задание для самостоятельной отработки (необязательно к выполнению)

8*. Просканируйте хост scanme.nmap.org. Какие сервисы запущены?

9*. Установите и настройте фаервол ufw на web-сервер из задания 3. Откройте доступ снаружи только к портам 22,80,443


 ---

* Источники информации из лекции:
  - [Руководство по подготовке к экзамену CISSP](https://dorlov.blogspot.com/2011/05/issp-cissp-all-in-one-exam-guide.html)
  - [Kali Tools](https://www.kali.org/tools/)
  - [NETWORK ADDRESS TRANSLATION (NAT) OVERLOAD - PART 1](https://www.firewall.cx/networking-topics/network-address-translation-nat/233-nat-overload-part-1.html)
  - [DYNAMIC NAT - PART 1](https://www.firewall.cx/networking-topics/network-address-translation-nat/231-nat-dynamic-part-1.html)
  - [STATIC NAT - PART 1](https://www.firewall.cx/networking-topics/network-address-translation-nat/229-nat-static-part-1.html)
  - [Настройка аутентификации на базе ключей SSH на сервере Linux](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server-ru)
  - [Testssl.sh – Testing TLS/SSL Encryption Anywhere on Any Port](https://www.tecmint.com/testssl-sh-test-tls-ssl-encryption-in-linux-commandline/)
  - [https://github.com/drwetter/testssl.sh](https://github.com/drwetter/testssl.sh)
  - [How To Create a Self-Signed SSL Certificate for Apache in Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-20-04)
  - [Пример: бесплатный центр сертификации Let’s Encrypt](https://letsencrypt.org/ru/certificates/)
  - [Односторонняя функция](https://ru.wikipedia.org/wiki/%D0%9E%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D1%8F%D1%8F_%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D1%8F)
  - [OpenSC - ПО для работы с токенами](https://wiki.astralinux.ru/pages/viewpage.action?pageId=35028997)
  - [Операционные системы Astra Linux](https://wiki.astralinux.ru/pages/viewpage.action?pageId=327739)
  - [Bitwarden](https://github.com/bitwarden/server)
  - [Хостим Bitwarden — open-source менеджер паролей](https://habr.com/ru/company/vdsina/blog/540574/)
  - [SIEM ДЛЯ ЧАЙНИКОВ www.alienvault.com ВСЕ, ЧТО ВЫ ХОТЕЛИ ЗНАТЬ ПРО УПРАВЛЕНИЕ ЛОГАМИ, НО БОЯЛИСЬ СПРОСИТЬ](https://bakotech.ua/uploads/ckeditor/files/SIEM-for-Beginners-RU.PDF)
