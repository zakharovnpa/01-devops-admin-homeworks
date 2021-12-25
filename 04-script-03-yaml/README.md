# Домашнее задание к занятию "4.3. Языки разметки JSON и YAML"

## Обязательные задания

### 1. Мы выгрузили JSON, который получили через API запрос к нашему сервису:
```json
    { "info" : "Sample JSON output from our service\t",
        "elements" :[
            { "name" : "first",
            "type" : "server",
            "ip" : 7175 
            },
            { "name" : "second",
            "type" : "proxy",
            "ip : 71.78.22.43
            }
        ]
    }
```
  Нужно найти и исправить все ошибки, которые допускает наш сервис
  
**Ответ:**

```json
    { "info" : "Sample JSON output from our service\t",
        "elements" :[
            { "name" : "first",
            "type" : "server",
            #"ip" : 7175     - здесь неверный формат ip адреса
            "ip" : 71.75.XXX.XXX     #Правильный формат
            },
            { "name" : "second",
            "type" : "proxy",
            #"ip : 71.78.22.43     - здесь нет двойных ковычек в поле названия ключа
            "ip" : 71.78.22.43    #Правильный формат
            }
        ]
    }
```


### 2. В прошлый рабочий день мы создавали скрипт, позволяющий опрашивать веб-сервисы и получать их IP. К уже реализованному функционалу нам нужно добавить возможность записи JSON и YAML файлов, описывающих наши сервисы. Формат записи JSON по одному сервису: { "имя сервиса" : "его IP"}. Формат записи YAML по одному сервису: - имя сервиса: его IP. Если в момент исполнения скрипта меняется IP у сервиса - он должен так же поменяться в yml и json файле.

**Ответ:**

Итак, нам необходимо создать скрипт, который выполняет:
- возможность записи JSON файлов, описывающих наши сервисы
  - Формат записи JSON по одному сервису: { "имя сервиса" : "IP"}.
-   возможность записи YAML файлов, описывающих наши сервисы
  - Формат записи YAML по одному сервису: - имя сервиса: IP  
- Если в момент исполнения скрипта меняется IP у сервиса - он должен так же поменяться в yml и json файле.

```python
#!/usr/bin/env python3

# Скрипт для фиксации момента изменения IP адреса сервиса

# Импортируем модули
import socket 
import time
import datetime
import json
import yaml

# Переменные с актуальными IP адресами сервисов на момент начала проверки
f = socket.gethostbyname('google.com')
g = socket.gethostbyname('drive.google.com')
h = socket.gethostbyname('mail.google.com')

# Массив для вывода результатов на экран
server = ['     - google.com - '+f, '     - mail.google.com - '+h, '     - drive.google.com - '+g]

#Блок вывода результатов на экран
print('---    Актуальные сейчас IP адреса сервисов:')
print(server[0])
print(server[1])
print(server[2])
print('Смены IP адресов:')

# Путь к директориям
fpath = "/root/scripts/"        #путь к файлам конфигов
flog  = "/root/log/error.log"   #путь к файлам логов

# Массив для работы в цикле проверок
service = {'google.com':f, 'mail.google.com':h, 'drive.google.com':g}

# Переменные для работы цикла
i = 1              # Начальное значение переменной
waiting = 2        # интервал запуска тестов в секундах
init=0             # Значение для сброса счетчика итераций

#Блок цикла
while True :                    # бесконечное число проверок 
  for host in service:          # условие для каждого элемента (host) в массиве (service) 
    ip = socket.gethostbyname(host)     # получение ip адреса по имени хоста и присвоение его значения перменной "ip"
    if ip != service[host]:    # сравнение полученного на предыдущем шаге ip адреса с адресом на начало проверки из массива "service"
      if i == 1 and init != 1:    # проверка условий для счетчиков

        # Строка, формирующая таблицу значений результатов проверок
        print(str(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")) +' [ERROR] ' + str(host) +' IP mistmatch: '+service[host]+' '+ip)
        
        ###################
        
              if i==1 and init !=1: # выведем ошибку, если нет инициализации или есть иниц. и не первый шаг
              
              
        is_error=True
        
        
# вывод ошибок в файл "error.log"
        with open(flog,'a') as fl:      # открываем на дозапись, (информация добавляется в конец файла) файл с именем "error.log" в директории "/root                                                     # /log/error.log"
          print(str(dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")) +' [ERROR] ' + str(host) +' IP mistmatch: '+srv[host]+' '+ip,file=fl)
        
       
#  запись в отдельные файлы, с названием сервиса и актуальным IP адресом на момент открытия файла на просмотр и перезаписью файла при смене IP сервиса
   # json
        with open(fpath+host+".json",'w') as jsf:   # открываем на запись файл с именем, состоящим из пути к файлу с названием проверяемого хоста и с расширением                                                     # ".json" и откроем даскриптор под именем "jsf". Открытие на запись, содержимое файла удаляется, если файла не                                                     # существует, создается новый
          json_data= json.dumps({host:ip})          # создаем переменную "json_data" и присваиваем ей параметры ключ:значения с помощью модуля Pyhon "json" и                                                         # метода "dumps"
                                                    # 
          jsf.write(json_data)                      # Записываем из дескриптора "jsf" значения переменной "json_data". В ней сайчас записан хост и его IP адрес
   
   
   # yaml
        with open(fpath+host+".yaml",'w') as ymf:
          yaml_data= yaml.dump([{host : ip}])
          ymf.write(yaml_data) 
    
    
 # запись в один общий файл результатов проверки в момент смены IP адресов сервисов
    if is_error:
      data = []  
      for host in srv:  
        data.append({host:ip})
      with open(fpath+"services_conf.json",'w') as jsf:
        json_data= json.dumps(data)
        jsf.write(json_data)
      with open(fpath+"services_conf.yaml",'w') as ymf:
        yaml_data= yaml.dump(data)
        ymf.write(yaml_data)
        #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      
      service[host]=ip    # запись нового полученного ip адреса в массив

  time.sleep(waiting)     # таймер паузы в проверках

# The END


```

* Текст скрипта:
```python
#!/usr/bin/env python3

import socket as s
import time as t
import datetime as dt
import json
import yaml

# set variables 
i     = 1
wait  = 2 # интервал проверок в секундах
srv   = {'drive.google.com':'0.0.0.0', 'mail.google.com':'0.0.0.0', 'google.com':'0.0.0.0'}
init  = 0

# Путь к директориям
fpath = "/root/scripts/"        #путь к файлам конфигов
flog  = "/root/log/error.log"   #путь к файлам логов

# start script workflow
print('*** start script ***')
print(srv)
print('********************')



while 1 == 1 : # для бесконечного цикла, else  установить условие i >= чилу треуемых итераций
  for host in srv:
    is_error = False 
    ip = s.gethostbyname(host)
    if ip != srv[host]:
    
    
      if i==1 and init !=1: # выведем ошибку, если нет инициализации или есть иниц. и не первый шаг
        is_error=True
        
        
        # вывод ошибок в файл
        with open(flog,'a') as fl:
          print(str(dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")) +' [ERROR] ' + str(host) +' IP mistmatch: '+srv[host]+' '+ip,file=fl)
          
          
          
        #******************************************
        # решение 4.3 - п2
        #vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
        #  в отдельные файлы
        # json
        with open(fpath+host+".json",'w') as jsf:
          json_data= json.dumps({host:ip})
          jsf.write(json_data) 
        # yaml
        with open(fpath+host+".yaml",'w') as ymf:
          yaml_data= yaml.dump([{host : ip}])
          ymf.write(yaml_data) 
    # в один общий файл     
    if is_error:
      data = []  
      for host in srv:  
        data.append({host:ip})
      with open(fpath+"services_conf.json",'w') as jsf:
        json_data= json.dumps(data)
        jsf.write(json_data)
      with open(fpath+"services_conf.yaml",'w') as ymf:
        yaml_data= yaml.dump(data)
        ymf.write(yaml_data)
        #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        
        
      
      srv[host]=ip
      
      
  #print(i) # выведем шаг итерации для отладки
#  i+=1 # счетчик итераций для отладки, закомментировать для бесконечного цикла
#  if i >=50 : # число итераций для выхода из цикла для отладки
#    break
  t.sleep(wait) # задержка на итерации 

```

## Дополнительное задание (со звездочкой*) - необязательно к выполнению

Так как команды в нашей компании никак не могут прийти к единому мнению о том, какой формат разметки данных использовать: JSON или YAML, нам нужно реализовать парсер из одного формата в другой. Он должен уметь:
   * Принимать на вход имя файла
   * Проверять формат исходного файла. Если файл не json или yml - скрипт должен остановить свою работу
   * Распознавать какой формат данных в файле. Считается, что файлы *.json и *.yml могут быть перепутаны
   * Перекодировать данные из исходного формата во второй доступный (из JSON в YAML, из YAML в JSON)
   * При обнаружении ошибки в исходном файле - указать в стандартном выводе строку с ошибкой синтаксиса и её номер
   * Полученный файл должен иметь имя исходного файла, разница в наименовании обеспечивается разницей расширения файлов

---

### Как сдавать задания

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
