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

Выполнена быстрая проверка сайта ` https://www.google.com/ `

[Листинг проверки](/03-sysadmin-09-security/Lesson/Lesson.md)

Выполнена быстрая проверка ранее настроенного сайта ` https://localhost/ `

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

Выполнена проверка на уязвимости сайта ` https://www.google.com/ `

[Листинг проверки](/03-sysadmin-09-security/Lesson/Lesson-2.md)

Выполнена проверка на уязвимости ранее настроенного сайта ` https://localhost/ `

```ps
root@PC-Ubuntu:~/testssl/testssl.sh# ./testssl.sh -U --sneaky https://localhost/

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


 Start 2022-01-15 12:51:28        -->> 127.0.0.1:443 (localhost) <<--

 A record via:           /etc/hosts 
 rDNS (127.0.0.1):       --
 Service detected:       HTTP


 Testing vulnerabilities 

 Heartbleed (CVE-2014-0160)                not vulnerable (OK), no heartbeat extension
 CCS (CVE-2014-0224)                       not vulnerable (OK)
 Ticketbleed (CVE-2016-9244), experiment.  not vulnerable (OK)
 ROBOT                                     not vulnerable (OK)
 Secure Renegotiation (RFC 5746)           supported (OK)
 Secure Client-Initiated Renegotiation     not vulnerable (OK)
 CRIME, TLS (CVE-2012-4929)                not vulnerable (OK)
 BREACH (CVE-2013-3587)                    no gzip/deflate/compress/br HTTP compression (OK)  - only supplied "/" tested
 POODLE, SSL (CVE-2014-3566)               not vulnerable (OK)
 TLS_FALLBACK_SCSV (RFC 7507)              No fallback possible (OK), no protocol below TLS 1.2 offered
 SWEET32 (CVE-2016-2183, CVE-2016-6329)    not vulnerable (OK)
 FREAK (CVE-2015-0204)                     not vulnerable (OK)
 DROWN (CVE-2016-0800, CVE-2016-0703)      not vulnerable on this host and port (OK)
                                           make sure you don't use this certificate elsewhere with SSLv2 enabled services
                                           https://censys.io/ipv4?q=8C241EA74F2E307844ACDBCD26BC6F5A780B8FFA0DDF9949F73FE3983146C236 could help you to find out
 LOGJAM (CVE-2015-4000), experimental      common prime with 2048 bits detected: RFC3526/Oakley Group 14 (2048 bits),
                                           but no DH EXPORT ciphers
 BEAST (CVE-2011-3389)                     not vulnerable (OK), no SSL3 or TLS1
 LUCKY13 (CVE-2013-0169), experimental     potentially VULNERABLE, uses cipher block chaining (CBC) ciphers with TLS. Check patches
 Winshock (CVE-2014-6321), experimental    not vulnerable (OK)
 RC4 (CVE-2013-2566, CVE-2015-2808)        no RC4 ciphers detected (OK)


 Done 2022-01-15 12:52:01 [  37s] -->> 127.0.0.1:443 (localhost) <<--

```
    
5. Установите на Ubuntu ssh сервер, сгенерируйте новый приватный ключ. Скопируйте свой публичный ключ на другой сервер. Подключитесь к серверу по SSH-ключу.
     
    **Ответ:**
    
Создана ВМ на Яндекс-Облаке. При создании terraform перебросил на ВМ ssh-ключ:
    
```tf
root@PC-Ubuntu:~/netology-project/Docker-Compose/src/terraform# terraform apply -auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.node01 will be created
  + resource "yandex_compute_instance" "node01" {
      + allow_stopping_for_update = true
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "node01.netology.cloud"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC.......
            ..................................................
            
           ..............................................................ZBYfJE7+FMs= root@PC-Ubuntu
            EOT
        }
      + name                      = "node01"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v1"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

     .
     .
     .
     .
     .
Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + external_ip_address_node01_yandex_cloud = (known after apply)
  + internal_ip_address_node01_yandex_cloud = (known after apply)
yandex_vpc_network.default: Creating...
yandex_vpc_network.default: Creation complete after 1s [id=enp8vccjnq019sesfhbh]
yandex_vpc_subnet.default: Creating...
yandex_vpc_subnet.default: Creation complete after 1s [id=e9bbsqo1g3a7gnd62263]
yandex_compute_instance.node01: Creating...
yandex_compute_instance.node01: Still creating... [10s elapsed]
yandex_compute_instance.node01: Still creating... [20s elapsed]
yandex_compute_instance.node01: Still creating... [30s elapsed]
yandex_compute_instance.node01: Still creating... [40s elapsed]
yandex_compute_instance.node01: Creation complete after 41s [id=fhmmrtoehh6u052ipamb]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

external_ip_address_node01_yandex_cloud = "62.84.124.156"
internal_ip_address_node01_yandex_cloud = "192.168.101.9"

```
Подключение к ВМ по ssh:

```ps
root@PC-Ubuntu:~# ssh centos@62.84.124.156
The authenticity of host '62.84.124.156 (62.84.124.156)' can't be established.
ECDSA key fingerprint is SHA256:QS67HU8m6bCVeUHQypaXzbMeKAWf/OWRxJlFl3S3KuU.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '62.84.124.156' (ECDSA) to the list of known hosts.
```
Смотрим версию ОС:
```ps
[root@node01 ~]# cat /etc/*release
CentOS Linux release 7.9.2009 (Core)
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

CentOS Linux release 7.9.2009 (Core)
CentOS Linux release 7.9.2009 (Core)

```
Аудит ключа на сервере
```ps
root@PC-Ubuntu:~# ssh-audit 62.84.124.156
# general
(gen) banner: SSH-2.0-OpenSSH_7.4
(gen) software: OpenSSH 7.4
(gen) compatibility: OpenSSH 7.3+ (some functionality from 6.6), Dropbear SSH 2016.73+ (some functionality from 0.52)
(gen) compression: enabled (zlib@openssh.com)

# key exchange algorithms
(kex) curve25519-sha256                     -- [warn] unknown algorithm
(kex) curve25519-sha256@libssh.org          -- [info] available since OpenSSH 6.5, Dropbear SSH 2013.62
(kex) ecdh-sha2-nistp256                    -- [fail] using weak elliptic curves
                                            `- [info] available since OpenSSH 5.7, Dropbear SSH 2013.62
(kex) ecdh-sha2-nistp384                    -- [fail] using weak elliptic curves
                                            `- [info] available since OpenSSH 5.7, Dropbear SSH 2013.62
(kex) ecdh-sha2-nistp521                    -- [fail] using weak elliptic curves
                                            `- [info] available since OpenSSH 5.7, Dropbear SSH 2013.62
(kex) diffie-hellman-group-exchange-sha256  -- [warn] using custom size modulus (possibly weak)
                                            `- [info] available since OpenSSH 4.4
(kex) diffie-hellman-group16-sha512         -- [info] available since OpenSSH 7.3, Dropbear SSH 2016.73
(kex) diffie-hellman-group18-sha512         -- [info] available since OpenSSH 7.3
(kex) diffie-hellman-group-exchange-sha1    -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] using weak hashing algorithm
                                            `- [info] available since OpenSSH 2.3.0
(kex) diffie-hellman-group14-sha256         -- [info] available since OpenSSH 7.3, Dropbear SSH 2016.73
(kex) diffie-hellman-group14-sha1           -- [warn] using weak hashing algorithm
                                            `- [info] available since OpenSSH 3.9, Dropbear SSH 0.53
(kex) diffie-hellman-group1-sha1            -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [fail] disabled (in client) since OpenSSH 7.0, logjam attack
                                            `- [warn] using small 1024-bit modulus
                                            `- [warn] using weak hashing algorithm
                                            `- [info] available since OpenSSH 2.3.0, Dropbear SSH 0.28

# host-key algorithms
(key) ssh-rsa                               -- [info] available since OpenSSH 2.5.0, Dropbear SSH 0.28
(key) rsa-sha2-512                          -- [info] available since OpenSSH 7.2
(key) rsa-sha2-256                          -- [info] available since OpenSSH 7.2
(key) ecdsa-sha2-nistp256                   -- [fail] using weak elliptic curves
                                            `- [warn] using weak random number generator could reveal the key
                                            `- [info] available since OpenSSH 5.7, Dropbear SSH 2013.62
(key) ssh-ed25519                           -- [info] available since OpenSSH 6.5

# encryption algorithms (ciphers)
(enc) chacha20-poly1305@openssh.com         -- [info] available since OpenSSH 6.5
                                            `- [info] default cipher since OpenSSH 6.9.
(enc) aes128-ctr                            -- [info] available since OpenSSH 3.7, Dropbear SSH 0.52
(enc) aes192-ctr                            -- [info] available since OpenSSH 3.7
(enc) aes256-ctr                            -- [info] available since OpenSSH 3.7, Dropbear SSH 0.52
(enc) aes128-gcm@openssh.com                -- [info] available since OpenSSH 6.2
(enc) aes256-gcm@openssh.com                -- [info] available since OpenSSH 6.2
(enc) aes128-cbc                            -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] using weak cipher mode
                                            `- [info] available since OpenSSH 2.3.0, Dropbear SSH 0.28
(enc) aes192-cbc                            -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] using weak cipher mode
                                            `- [info] available since OpenSSH 2.3.0
(enc) aes256-cbc                            -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] using weak cipher mode
                                            `- [info] available since OpenSSH 2.3.0, Dropbear SSH 0.47
(enc) blowfish-cbc                          -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [fail] disabled since Dropbear SSH 0.53
                                            `- [warn] disabled (in client) since OpenSSH 7.2, legacy algorithm
                                            `- [warn] using weak cipher mode
                                            `- [warn] using small 64-bit block size
                                            `- [info] available since OpenSSH 1.2.2, Dropbear SSH 0.28
(enc) cast128-cbc                           -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] disabled (in client) since OpenSSH 7.2, legacy algorithm
                                            `- [warn] using weak cipher mode
                                            `- [warn] using small 64-bit block size
                                            `- [info] available since OpenSSH 2.1.0
(enc) 3des-cbc                              -- [fail] removed (in server) since OpenSSH 6.7, unsafe algorithm
                                            `- [warn] using weak cipher
                                            `- [warn] using weak cipher mode
                                            `- [warn] using small 64-bit block size
                                            `- [info] available since OpenSSH 1.2.2, Dropbear SSH 0.28

# message authentication code algorithms
(mac) umac-64-etm@openssh.com               -- [warn] using small 64-bit tag size
                                            `- [info] available since OpenSSH 6.2
(mac) umac-128-etm@openssh.com              -- [info] available since OpenSSH 6.2
(mac) hmac-sha2-256-etm@openssh.com         -- [info] available since OpenSSH 6.2
(mac) hmac-sha2-512-etm@openssh.com         -- [info] available since OpenSSH 6.2
(mac) hmac-sha1-etm@openssh.com             -- [warn] using weak hashing algorithm
                                            `- [info] available since OpenSSH 6.2
(mac) umac-64@openssh.com                   -- [warn] using encrypt-and-MAC mode
                                            `- [warn] using small 64-bit tag size
                                            `- [info] available since OpenSSH 4.7
(mac) umac-128@openssh.com                  -- [warn] using encrypt-and-MAC mode
                                            `- [info] available since OpenSSH 6.2
(mac) hmac-sha2-256                         -- [warn] using encrypt-and-MAC mode
                                            `- [info] available since OpenSSH 5.9, Dropbear SSH 2013.56
(mac) hmac-sha2-512                         -- [warn] using encrypt-and-MAC mode
                                            `- [info] available since OpenSSH 5.9, Dropbear SSH 2013.56
(mac) hmac-sha1                             -- [warn] using encrypt-and-MAC mode
                                            `- [warn] using weak hashing algorithm
                                            `- [info] available since OpenSSH 2.1.0, Dropbear SSH 0.28

# algorithm recommendations (for OpenSSH 7.4)
(rec) -diffie-hellman-group1-sha1           -- kex algorithm to remove 
(rec) -diffie-hellman-group14-sha1          -- kex algorithm to remove 
(rec) -diffie-hellman-group-exchange-sha1   -- kex algorithm to remove 
(rec) -diffie-hellman-group-exchange-sha256 -- kex algorithm to remove 
(rec) -ecdh-sha2-nistp256                   -- kex algorithm to remove 
(rec) -ecdh-sha2-nistp384                   -- kex algorithm to remove 
(rec) -ecdh-sha2-nistp521                   -- kex algorithm to remove 
(rec) -ecdsa-sha2-nistp256                  -- key algorithm to remove 
(rec) -3des-cbc                             -- enc algorithm to remove 
(rec) -blowfish-cbc                         -- enc algorithm to remove 
(rec) -cast128-cbc                          -- enc algorithm to remove 
(rec) -aes128-cbc                           -- enc algorithm to remove 
(rec) -aes192-cbc                           -- enc algorithm to remove 
(rec) -aes256-cbc                           -- enc algorithm to remove 
(rec) -hmac-sha1                            -- mac algorithm to remove 
(rec) -hmac-sha2-256                        -- mac algorithm to remove 
(rec) -hmac-sha2-512                        -- mac algorithm to remove 
(rec) -umac-64@openssh.com                  -- mac algorithm to remove 
(rec) -umac-128@openssh.com                 -- mac algorithm to remove 
(rec) -hmac-sha1-etm@openssh.com            -- mac algorithm to remove 
(rec) -umac-64-etm@openssh.com              -- mac algorithm to remove 


```
    
6. Переименуйте файлы ключей из задания 5. Настройте файл конфигурации SSH клиента, так чтобы вход на удаленный сервер осуществлялся по имени сервера.
    
    **Ответ:**
 Переименовал ключ:
 ```ps
 root@PC-Ubuntu:~/.ssh# cp id_rsa server_node01.key
 ```
    
Настроен файл конфигурации ssh клиента:

```sh
root@PC-Ubuntu:~/.ssh# cat config 
Host node01
  HostName 62.84.124.156
  IdentityFile ~/.ssh/server_node01.key
  User centos
```
Подключение по имени сервера:

```ps
root@PC-Ubuntu:~/.ssh# ssh node01
[centos@node01 ~]$ 
[centos@node01 ~]$ uptime
 15:34:52 up 30 min,  2 users,  load average: 0,00, 0,01, 0,05
[centos@node01 ~]$ 
[centos@node01 ~]$ cat /etc/*release
CentOS Linux release 7.9.2009 (Core)
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

CentOS Linux release 7.9.2009 (Core)
CentOS Linux release 7.9.2009 (Core)

```
7. Соберите дамп трафика утилитой tcpdump в формате pcap, 100 пакетов. Откройте файл pcap в Wireshark.
    
    **Ответ:**
Собран в файл дамп трафика утилитой tcpdump в формате pcap:

```sh
root@PC-Ubuntu:~# tcpdump -c 5 -i wlp3s6 -w 001.pcap
tcpdump: listening on wlp3s6, link-type EN10MB (Ethernet), capture size 262144 bytes
5 packets captured
11 packets received by filter
0 packets dropped by kernel

```
Чтение из файла дампа трафика утилитой tcpdump:
```sh
root@PC-Ubuntu:~# tcpdump -r 001.pcap
reading from file 001.pcap, link-type EN10MB (Ethernet)
14:04:14.969416 ARP, Request who-has ESP_3A6D69 tell ESP_3A6D69, length 28
14:04:18.056645 IP PC-Ubuntu.33595 > lo-in-f95.1e100.net.443: UDP, length 33
14:04:18.104805 IP lo-in-f95.1e100.net.443 > PC-Ubuntu.33595: UDP, length 25
14:04:20.502492 IP WDMyCloud.53463 > 239.255.255.250.1900: UDP, length 421
14:04:20.507568 IP WDMyCloud.53463 > 239.255.255.250.1900: UDP, length 430
root@PC-Ubuntu:~# 

```
Чтение из файла дампа трафика утилитой wireshark:
```sh
root@PC-Ubuntu:~# wireshark --read-file 002.pcap
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
```

![wireshark](/03-sysadmin-09-security/img/wireshark.png)
    
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
