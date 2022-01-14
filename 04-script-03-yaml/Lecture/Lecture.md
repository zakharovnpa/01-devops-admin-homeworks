## Языки разметки JSON и YAML

Алексей
МетляковАлексей Метляков
DevOps Engineer, OpenWay
Алексей Метляков

### 2План занятия
1. Что такое языки разметки?
2. Для чего они нужны в DevOps?
3. Какие инструменты используются?
4. Синтаксис JSON
5. Синтаксис YAML
6. Возможности преобразования
7. Итоги
8. Домашнее задание

### 3Что такое языки разметки?

#### 4. Суть языков разметки
Язык разметки - способ получения отформатированного текста на основе просто текста:
- Яркий пример - HTML
- XML, как стандарт
- Появление NoSQL key-value хранилищ данных и использование JSON для выгрузки

### 5. Для чего они нужны в DevOps?
- Описание конфигураций серверов и шагов автоматизации, например Ansible, Puppet
- Работа с API:
  -  Bitbucket,
  -   GitLab,
  -   GitHub,
  -   Nexus,
  -   Crowd,
  -   Jira,
  -   Conﬂuence, etc.

### 6. Какие инструменты используются?

#### 7. Какие инструменты используются?
- Ansible - для описания всех структур данных
- Puppet (Hiera) - для описания конфигураций
- Azure - для построения Pipeline
- Docker (Compose) - для описания настройки сервисов, состоящих из нескольких контейнеров

### 8. Синтаксис JSON

#### 9. Основа JSON
JSON - формат обмена данными, который легко читается “вживую”.

Он состоит из двух видов объектов:
- Коллекции пар ключ-значение (key-value)
- Упорядоченный список значений (array)

#### 10. Структура коллекции JSON
Общая структура коллекции (объекта) выглядит следующим образом:
{"ключ": "значение"}, где:
- Структура обязательно должна начинаться с { и заканчиваться на }
- Ключ - строковый тип, заключенный в двойные кавычки
- Значение может быть строкой, числом, массивом, объектом или иметь значение null, true или false
- Каждый элемент внутри структуры должен быть обособлен пробелом (горизонтальным табом, символом возврата каретки)

#### 11. Структура массива JSON
Общая структура упорядоченного списка значений (массива) выглядит следующим образом:
[ значение, значение ], где:
- Структура обязательно должна начинаться с [ и заканчиваться на ]
- Значение может быть строкой, числом, массивом, объектом или иметь значение null, true или false
- Каждый элемент внутри структуры должен быть обособлен пробелом (горизонтальным табом, символом возврата каретки)
● Массив может быть пустым, тогда его структура выглядит так: [ ]
### 12Строки JSON
В оформлении строк необходимо пользоваться правилами:
● Строка должна быть заключена в кавычки
● Спецсимволы должны экранироваться символом \
● Список спецсимволов
○ “
○ \
○ \/
○ \b - backspace
○ \n - переход на новую строку
○ \f - переход на новую страницу
○ \r - возврат каретки
○ \t - горизонтальный таб
○ \u[четыре шестнадцатеричных цифры] - юникод

### Пактические примеры на 23 мин 20 сек от начала лекции

### 13Числа JSON
Числа представлены только в десятичном виде и в общем виде
полная запись числа выглядит, как:
[знак] [целая часть числа].[дробная часть числа][экспонента]
Но нам, конечно же, никто не мешает упрощать форму до вида
целых и дробных чисел
### 14Синтаксис YAML
### 15Основа YAML
Формат обмена данных YAML понравится любителям Python,
но сложно даётся его противникам. Постараемся определить
основные правила формирования yml-файла:
● Файл должен начинаться с --- и заканчиваться на …
● Каждый отдельный элемент коллекций стоит начинать с
новой строчки
● Каждый элемент колекции list (массив) стоит начинать с
символов “- ”(тире и пробел)
● Комментарии начинаются с символа #
### 16Скаляры YAML
Скаляр, в случае с YAML, представляет собой единичный блок
с информацией, которую можно записывать многострочно.
Существует два вида скаляров:
first:|
Этот вид
сохраняет все переходы на новую строку
second:>
А этот
преобразует каждый переход на новую строку
в пробел
### 17Типы сущностей YAML
YAML поддерживает разнообразные типы данных. Например, целые
числа могут быть:
12345 #Каноничные
+1234 #Десятичные
0o14 #Восьмеричные
0xC #Шестандацтеричные
Числа с плавающей запятой:
1.2305e+3 #Каноничные
21.2355e+02 #Экспонициальные
1.4 #С фиксированной запятой
+.inf #Бесконечность
.NaN
### 18Типы сущностей YAML
Тут же присутствуют и другие типы:
null:
booleans: [ true, false ]
string: ‘1234’
canon time: 2020-12-15T00:30:44.1Z
date: 2020-07-31
### 19Коллекции YAML
По сути, это наборы данных в списке или словаре. Объявление списка
имеет следующий синтаксис:
-
-
-
Java
Python
Groovy
Чтобы объявить словарь нужно использовать другую конструкцию:
max: 100
min: 10
Конечно же, оба эти типа можно комбинировать и использовать в разных
вариациях, так например очень часто встречаются такие конструкции:
-
name: Python
type: language
default: true
using: [ localhost, 7.7.7.7 ]
### 20Возможности
преобразования
### 21Библиотеки yaml и json
Самый простой способ конвертации форматов -
использовать методы библиотек yaml и json для Python:
● Библиотека json входит в стандартную поставку
Python 3.x
● Библиотеку yaml необходимо установить: python3 -m
pip --user install pyyaml
### 22Библиотека yaml
Библиотека позволяет загружать yaml-структуры, преобразуя
их в стандартные объекты Python. В ней нас в первую очередь
интересуют следующие методы:
● yaml.safe_load() - получает строку с yaml на вход и
преобразует в объекты, с которыми может работать Python
● yaml.dump() - получает объекты python на вход и
преобразует в строку с yaml
### 23Библиотека json
Библиотека позволяет загружать json-структуры, преобразуя их
в стандартные объекты Python. В этой библиотеке нас
интересуют методы:
● json.load() - получает строку с json на вход и преобразует в
объекты, с которыми может работать Python
● json.dump() - получает объекты python на вход и
преобразует в строку с json

### Пактические примеры на 47 мин 25 сек от начала лекции
* 1
```python
root@PC-Ubuntu:~/scripts/Lecture# python3
Python 3.8.10 (default, Nov 26 2021, 20:14:08) 
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 
>>> import json
>>> 
>>> with open ('1.json', 'r') as js:
...  js_dict = json.load(js)    #    Первый знак в строке - пробел. Переменной "js_dict" присваиваем значение методом "load" дескриптора "js". В конце жмем Ентер
...                             # Здесь просто жмем Ентер и получаем переход на новую строку
>>> js_dict                     # Считываем значение переменной
{'version': 3, 'some_keys': [{'version': 2, 'anoser_keys': 3}, {'version': 3, 'anoser_keys': 'Hel"\nlo'}], 'pages': [1, 2, 3, 4, 5]}
>>> 
>>> 
```
* 2
```python
>>> type(js_dict)
<class 'dict'>
>>> 

```
* 3  НА 50 мин 29 сек от начала лекции
```python
>>> js_dict["new_name"] = 'Aleksey'
>>> 
>>> js_dict
{'version': 3, 'some_keys': [{'version': 2, 'anoser_keys': 3}, {'version': 3, 'anoser_keys': 'Hel"\nlo'}], 'pages': [1, 2, 3, 4, 5], 'new_name': 'Aleksey'}
>>> 


```
* 4 Запись в файл методом "json.dump"  на 52:45 от начала лекции
```python
>>> js_dict
{'version': 3, 'some_keys': [{'version': 2, 'anoser_keys': 3}, {'version': 3, 'anoser_keys': 'Hel"\nlo'}], 'pages': [1, 2, 3, 4, 5], 'new_name': 'Aleksey'}
>>> 
>>> with open('4.json', 'w') as js2:
...  js2.write(json.dumps(js_dict))
... 
156
>>> 

```
* 5 Более структурированная записью Добавили "indent=2"
```python
>>> with open('4.json', 'w') as js2:
...  js2.write(json.dumps(js_dict, indent=2))
... 
238
>>> 

```
* Результат
```json
root@PC-Ubuntu:~/scripts/Lecture# cat 4.json 
{
  "version": 3,
  "some_keys": [
    {
      "version": 2,
      "anoser_keys": 3
    },
    {
      "version": 3,
      "anoser_keys": "Hel\"\nlo"
    }
  ],
  "pages": [
    1,
    2,
    3,
    4,
    5
  ],
  "new_name": "Aleksey"

```
* 6 Запись в файл методом "yaml.dump"  на 54:20 от начала лекции
```python
>>> with open('4.yml', 'w') as ym:
...  ym.write(yaml.dump(js_dict))
... 
140
>>> 

```
* 7

```python
>>> 
>>> with open('4.yml', 'w') as ym:
...  ym.write(yaml.dump(js_dict, indent=4))
... 
152
>>> 

```
*    Результат
```yml
root@PC-Ubuntu:~/scripts/Lecture# cat 4.yml
new_name: Aleksey
pages:
- 1
- 2
- 3
- 4
- 5
some_keys:
-   anoser_keys: 3
    version: 2
-   anoser_keys: 'Hel"

        lo'
    version: 3
version: 3

```
* 8  На 57:25 показаны необязятельные параметры метода "yaml.dump"

```python
...  ym.write(yaml.dump(js_dict, indent=4, explicit_start=True, explicit_end=True))
... 
160
>>> 

```
* Результат
```yaml
root@PC-Ubuntu:~/scripts/Lecture# cat 4.yml
---
new_name: Aleksey
pages:
- 1
- 2
- 3
- 4
- 5
some_keys:
-   anoser_keys: 3
    version: 2
-   anoser_keys: 'Hel"

        lo'
    version: 3
version: 3
...
root@PC-Ubuntu:~/scripts/Lecture# 

```
* 9 На 59:25преобразования из формата json в yaml
```python
>>>with open('2.json', 'r') as js:
... yaml_2 = yaml.safe_load(js)
...
>>>yaml_2
>>>{'examples': [{'anoser_key': 23, 'link': [None, 'localhost:323']}, {'anoser_key': 22, 'link':[]}], 'key': '43' , 'pages': [1, 2, 3, 4, 5], 'some_new': 'Aleksey')

```
* 10 На 1:00:24 попытка проеобразовать файл yaml в json. Ошибка декодера.
```python
>>>with open("2.yml", "r") as js:
... json_2 = json.load(js)
...
>>>
.
.
raise JsonDecoderError(expecting_value, s, err.value)
```
* 11 На 1:02:55 тема про преобразования

### 24Итоги
Сегодня мы:
● узнали, что такое языки разметки и для чего они нужны;
● познакомились с синтаксисами языков JSON и YAML;
● познакомились с возможностью их обработки при
помощи Python


### 25Домашнее задание. На 1:03:20 разбор ДЗ
Давайте посмотрим ваше домашнее задание.
● Вопросы по домашней работе задавайте в чате мессенджера
Slack.
● Задачи можно сдавать по частям.
● Зачёт по домашней работе проставляется после того, как
приняты все задачи.
### 26Задавайте вопросы и
пишите отзыв о лекции!
Алексей Метляков
Алексей Метляков