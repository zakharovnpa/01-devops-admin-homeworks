# Домашнее задание к занятию «2.4. Инструменты Git»

Для выполнения заданий в этом разделе давайте склонируем репозиторий с исходным кодом 
терраформа https://github.com/hashicorp/terraform 

В виде результата напишите текстом ответы на вопросы и каким образом эти ответы были получены. 

### 1. Найдите полный хеш и комментарий коммита, хеш которого начинается на `aefea`.

   **Ответ:**
   * Полный хеш коммита - aefead2207ef7e2aa5dc81a34aedf0cad4c32545
   * Комментарий коммита:     Update CHANGELOG.md

```bash
$ git show aefead220
commit aefead2207ef7e2aa5dc81a34aedf0cad4c32545
Author: Alisdair McDiarmid <alisdair@users.noreply.github.com>
Date:   Thu Jun 18 10:29:58 2020 -0400

    Update CHANGELOG.md
```

### 2. Какому тегу соответствует коммит `85024d3`?

   **Ответ:**
   * Коммит `85024d3` соответствует тегу v0.12.23

```bash
$ git show 85024d3
commit 85024d3100126de36331c6982bfaac02cdab9e76 (tag: v0.12.23)
```
   

### 3. Сколько родителей у коммита `b8d720`? Напишите их хеши.

   **Ответ:**
   У коммита ` b8d720 ` два родителя с хешами 56cd7859e05c36c06b56d013b55a252d0bb7e158 и 9ea88f22fc6269854151c571162c5bcf958bee2b
```bash
$ git show --pretty=format:' %P' b8d720
 56cd7859e05c36c06b56d013b55a252d0bb7e158 9ea88f22fc6269854151c571162c5bcf958bee2b
```
```bash
$ git log --oneline --graph b8d720
*   b8d720f83 Merge pull request #23916 from hashicorp/cgriggs01-stable
|\
| * 9ea88f22f add/update community provider listings
|/
*   56cd7859e Merge pull request #23857 from hashicorp/cgriggs01-stable

```

### 4. Перечислите хеши и комментарии всех коммитов которые были сделаны между тегами  v0.12.23 и v0.12.24.

   **Ответ:**

### 5. Найдите коммит в котором была создана функция `func providerSource`, ее определение в коде выглядит так `func providerSource(...)` (вместо троеточего перечислены аргументы).

   **Ответ:**

### 6. Найдите все коммиты в которых была изменена функция `globalPluginDirs`.

   **Ответ:**

### 7. Кто автор функции `synchronizedWriters`? 

   **Ответ:**
   Автор функции - Martin Atkins. Он ввел эту функцию раньше, чем James Bardin.

```bash
   $ git log -S'func synchronizedWriters' --pretty=format:'%h - %an %ae'
bdfea50cc - James Bardin j.bardin@gmail.com
5ac311e2a - Martin Atkins mart@degeneration.co.uk
```

---

