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
    ```bash
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
    ![telnet-stackowerflow-80](03-sysadmin-06-net/img/image2.png)
![telnet-stackowerflow-80](/img/image2.png)
- укажите в ответе полученный HTTP код.

     ```bash
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
      date: Sat, 18 Sep 2021 06:05:55 GMT
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
      User-Agent: Mozilla/5.0 (X11; Linux i686; rv:87.0) Gecko/20100101 Firefox/87.0
      Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
      Accept-Language: en-US,en;q=0.5
      Accept-Encoding: gzip, deflate, br
      Connection: keep-alive
      Cookie: prov=a6a710d1-0c91-0d73-6106-933c827bff41; _ga=GA1.2.832935575.1629794946; OptanonConsent=isIABGlobal=false&datestamp=Tue+Aug+24+2021+12%3A49%3A15+GMT%2B0400+(Georgia+Standard+Time)&version=6.10.0&hosts=&landingPath=NotLandingPage&groups=C0003%3A1%2CC0004%3A1%2CC0002%3A1%2CC0001%3A1; OptanonAlertBoxClosed=2021-08-24T08:49:15.964Z; _ym_uid=1630493197906022200; _ym_d=1630493197; __gads=ID=ef07a88dce116111:T=1630493201:S=ALNI_MYpZBoOyE_nSWGZEl6Ju4mR0BdzOQ; _gid=GA1.2.950308004.1631944605; _gat=1
      Upgrade-Insecure-Requests: 1
      Cache-Control: max-age=0

     ```
- проверьте время загрузки страницы, какой запрос обрабатывался дольше всего?
- приложите скриншот консоли браузера в ответ.

    **Ответ:**
 
3. Какой IP адрес у вас в интернете?

    **Ответ:**
 
5. Какому провайдеру принадлежит ваш IP адрес? Какой автономной системе AS? Воспользуйтесь утилитой `whois`

    **Ответ:**
 
7. Через какие сети проходит пакет, отправленный с вашего компьютера на адрес 8.8.8.8? Через какие AS? Воспользуйтесь утилитой `traceroute`

    **Ответ:**
 
9. Повторите задание 5 в утилите `mtr`. На каком участке наибольшая задержка - delay?

    **Ответ:**
 
11. Какие DNS сервера отвечают за доменное имя dns.google? Какие A записи? воспользуйтесь утилитой `dig`

    **Ответ:**
 
13. Проверьте PTR записи для IP адресов из задания 7. Какое доменное имя привязано к IP? воспользуйтесь утилитой `dig`

    **Ответ:**
 

В качестве ответов на вопросы можно приложите лог выполнения команд в консоли или скриншот полученных результатов.

---
