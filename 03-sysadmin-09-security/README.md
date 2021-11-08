# 3.9. Элементы безопасности информационных систем - Захаров Сергей Николаевич

1. Установите Bitwarden плагин для браузера. Зарегестрируйтесь и сохраните несколько паролей.
    
    **Ответ:**
    
2. Установите Google authenticator на мобильный телефон. Настройте вход в Bitwarden акаунт через Google authenticator OTP.
    
    **Ответ:**
    
3. Установите apache2, сгенерируйте самоподписанный сертификат, настройте тестовый сайт для работы по HTTPS.
    
    **Ответ:**
    
4. Проверьте на TLS уязвимости произвольный сайт в интернете.
    
    **Ответ:**
    
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
