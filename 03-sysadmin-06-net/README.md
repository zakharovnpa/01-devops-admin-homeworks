# 3.6. Компьютерные сети, лекция 1 - Захаров Сергей Николаевич

1. Работа c HTTP через телнет.
- Подключитесь утилитой телнет к сайту stackoverflow.com
`telnet stackoverflow.com 80`
- отправьте HTTP запрос
```bash
GET /questions HTTP/1.0
HOST: stackoverflow.com
[press enter]
[press enter]
```
- В ответе укажите полученный HTTP код, что он означает?

    **Ответ:**
    Подключаемся с помощью telnet на порт 80 к сайту stackoverflow.com:
    ```bash
    $ telnet stackoverflow.com 80
    Trying 151.101.129.69...
    Connected to stackoverflow.com.
    Escape character is '^]'.
    GET /questions HTTP/1.0
    HOST: stackoverflow.com
    [Enter]
    [Enter]
    ```

    Подключение было успешным. Ответ сервера:
    ```javascript
      HTTP/1.1 301 Moved Permanently
      cache-control: no-cache, no-store, must-revalidate
      location: https://stackoverflow.com/questions
      x-request-guid: da354ec5-a433-4701-80d2-07c8da698b77
      feature-policy: microphone 'none'; speaker 'none'
      content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
      Accept-Ranges: bytes
      Date: Sat, 18 Sep 2021 05:43:25 GMT
      Via: 1.1 varnish
      Connection: close
      X-Served-By: cache-bma1671-BMA
      X-Cache: MISS
      X-Cache-Hits: 0
      X-Timer: S1631943806.586965,VS0,VE101
      Vary: Fastly-SSL
      X-DNS-Prefetch-Control: off
      Set-Cookie: prov=ede57f41-6beb-4ebd-d559-09e4e6f98c10; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly

      Connection closed by foreign host.
    ```

 
2. Повторите задание 1 в браузере, используя консоль разработчика F12.
- откройте вкладку `Network`
- отправьте запрос http://stackoverflow.com
- найдите первый ответ HTTP сервера, откройте вкладку `Headers`

    **Ответ:**
    В браузере Firefix Mozilla: F12 --> Сеть --> Заголовки, в адерсую строку адрес сайта и далее F5.

    ![headers](/03-sysadmin-06-net/img/image4.PNG)
    
    ![telnet-stackowerflow-80](/03-sysadmin-06-net/img/image2.png)
    
- укажите в ответе полученный HTTP код.

    **Ответ:**
    
 * HTTP-заголовки сопровождают обмен данными по протоколу HTTP. Они могут содержать описание данных и информацию, необходимую для взаимодействия между клиентом и сервером. 
 * Заголовки и их статусы перечислены в [реестре IANA](https://www.iana.org/assignments/message-headers/message-headers.xhtml), который постоянно обновляется.
 * Заголовки могут быть сгруппированы по следующим контекстам:
   - Основные заголовки применяется как к запросам, так и к ответам, но не имеет отношения к данным, передаваемым в теле.
   - Заголовки запроса содержит больше информации о ресурсе, который нужно получить, или о клиенте, запрашивающем ресурс.
   - Заголовки ответа (en-US) содержат дополнительную информацию об ответе, например его местонахождение, или о сервере, предоставившем его.
   - Заголовки сущности содержат информацию о теле ресурса, например его длину содержимого или тип MIME.

     ```javascript
      Response headers:
      HTTP/2 200 OK
      cache-control: private
      content-type: text/html; charset=utf-8
      content-encoding: gzip
      strict-transport-security: max-age=15552000
      x-frame-options: SAMEORIGIN
      x-request-guid: b9287995-96e1-42a2-93a0-2d29673d61b0
      feature-policy: microphone 'none'; speaker 'none'
      content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
      accept-ranges: bytes
      date: Sat, 30 Oct 2021 12:16:37 GMT
      via: 1.1 varnish
      x-served-by: cache-bma1643-BMA
      x-cache: MISS
      x-cache-hits: 0
      x-timer: S1631945156.814487,VS0,VE105
      vary: Accept-Encoding,Fastly-SSL
      x-dns-prefetch-control: off
      X-Firefox-Spdy: h2

      Request headers:
      GET / HTTP/2
      Host: stackoverflow.com
      User-Agent: Mozilla/5.0 (Windows NT 10.0; …) Gecko/20100101 Firefox/56.0
      Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
      Accept-Language: en-US,en;q=0.5
      Accept-Encoding: gzip, deflate, br
      Connection: keep-alive
      Cookie: prov=a6a710d1-0c91-0d73-6106-933c827bff41; _ga=GA1.2.832935575.1629794946; OptanonConsent=isIABGlobal=false&datestamp=Tue+Aug+24+2021+12%3A49%3A15+GMT%2B0400+(Georgia+Standard+Time)&version=6.10.0&hosts=&landingPath=NotLandingPage&groups=C0003%3A1%2CC0004%3A1%2CC0002%3A1%2CC0001%3A1; OptanonAlertBoxClosed=2021-08-24T08:49:15.964Z; _ym_uid=1630493197906022200; _ym_d=1630493197; __gads=ID=ef07a88dce116111:T=1630493201:S=ALNI_MYpZBoOyE_nSWGZEl6Ju4mR0BdzOQ; _gid=GA1.2.950308004.1631944605; _gat=1
      Upgrade-Insecure-Requests: 1
      Cache-Control: max-age=0

     ```
- проверьте время загрузки страницы, какой запрос обрабатывался дольше всего?
    
    Дольше всего обрабатывался запрос на получение html кода страницы (содержимое - javascript).
    
- приложите скриншот консоли браузера в ответ.

   ![timing-doc](/03-sysadmin-06-net/img/image5.png)
   ![timing-doc-full](/03-sysadmin-06-net/img/image6.png)
   
     **Ответ:**
       
 Показания сетевого монитора в браузере Chrome Версия 95.0.4638.69 (Официальная сборка), (64 бит):
   * Общее время обработки запроса - 364,09 мс
     - Запрос находился в очереди 46,7 мс.
     - Запрос был остановлен на 79,77 мс
     - Согласование прокси-сервера 2,11 мс
     - Ожидание до скачивания первого байта 136,83 мс
     - Скачивание контента 100,2 мс


   ![timing-doc-crome](/03-sysadmin-06-net/img/image7.png)


 
3. Какой IP адрес у вас в интернете?

    **Ответ:**
    
    ПК, на котором проводится обучение, находится в локальной сети и имеет доступ к Интернет посредством роутера. 
    Для определения ip адреса, выделенного мне провайдером для возможности доступа к сети Интернет, можно воспользоваться сервисом [whoer.net](https://whoer.net)
    
   ![whoer](/03-sysadmin-06-net/img/image12.png)
 
 
5. Какому провайдеру принадлежит ваш IP адрес? Какой автономной системе AS? Воспользуйтесь утилитой `whois`

    **Ответ:**

* Провайдер: BEELINE
* Автономная система: AS3216

```bash
root@vagrant:~# whois -h whois.ripe.net 2.95.218.183
inetnum:        2.94.0.0 - 2.95.255.255
netname:        BEELINE-BROADBAND
descr:          Dynamic IP Pool for Broadband Customers
country:        RU
% Information related to '2.95.0.0/16AS3216'

route:          2.95.0.0/16
descr:          RU-CORBINA BROADBAND BLOCK SOVAM
origin:         AS3216


```
 
 
6. Через какие сети проходит пакет, отправленный с вашего компьютера на адрес 8.8.8.8? Через какие AS? Воспользуйтесь утилитой `traceroute`

    **Ответ:**
    
  ![traceroute](/03-sysadmin-06-net/img/image9.png)
 
7. Повторите задание 5 в утилите `mtr`. На каком участке наибольшая задержка - delay?

    **Ответ:**
  ![mtr-8.8.8.8](/03-sysadmin-06-net/img/image11.png)
  
  Наибольшая задержка зафиксирована до узла `AS15169  209.85.255.136` - **164,9 мс**
 
8. Какие DNS сервера отвечают за доменное имя dns.google? Какие A записи? воспользуйтесь утилитой `dig`

    **Ответ:**
    
dig - DNS lookup utility
 
9. Проверьте PTR записи для IP адресов из задания 7. Какое доменное имя привязано к IP? воспользуйтесь утилитой `dig`

    **Ответ:**
 

В качестве ответов на вопросы можно приложите лог выполнения команд в консоли или скриншот полученных результатов.

---
