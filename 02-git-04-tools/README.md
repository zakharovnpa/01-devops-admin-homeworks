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
   
   ```bash
   $ git log  v0.12.23..v0.12.24  --oneline
33ff1c03b (tag: v0.12.24) v0.12.24
b14b74c49 [Website] vmc provider links
3f235065b Update CHANGELOG.md
6ae64e247 registry: Fix panic when server is unreachable
5c619ca1b website: Remove links to the getting started guide's old location
06275647e Update CHANGELOG.md
d5f9411f5 command: Fix bug when using terraform login on Windows
4b6d06cc5 Update CHANGELOG.md
dd01a3507 Update CHANGELOG.md
225466bc3 Cleanup after v0.12.23 release

   ```

### 5. Найдите коммит в котором была создана функция `func providerSource`, ее определение в коде выглядит так `func providerSource(...)` (вместо троеточего перечислены аргументы).

   **Ответ:**

* Найдено два коммита, в которых есть эта функция.
  - В коммите 5af1e6234ab6da412fb8637393c5a17a1b293663 данную функцию первый раз добавил Мартин Аткинс 2 апреля 2020 года
      
```bash
$ git log -S'func providerSource' --oneline
5af1e6234 main: Honor explicit provider_installation CLI config when present
8c928e835 main: Consult local directories as potential mirrors of providers
maestro@mx-linux:~/PycharmProjects/devops-netology/terraform
```

```bash
$ git show 8c928e835
commit 8c928e83589d90a031f811fae52a81be7153e82f
Author: Martin Atkins <mart@degeneration.co.uk>
Date:   Thu Apr 2 18:04:39 2020 -0700
```

```bash
$ git show 8c928e83589d90a031f811fae52a81be7153e82f | grep providerSource
+func providerSource(services *disco.Disco) getproviders.Source {
```
   - В коммите 5af1e6234ab6da412fb8637393c5a17a1b293663 Мартин Аткинс 21 апреля 2020 года изменил аргументы данной функции:

```bash
$ git show 5af1e6234
commit 5af1e6234ab6da412fb8637393c5a17a1b293663 
Author: Martin Atkins <mart@degeneration.co.uk>
Date:   Tue Apr 21 16:28:59 2020 -0700
```
```bash
$ git show 5af1e6234ab6da412fb8637393c5a17a1b293663 | grep providerSource
-func providerSource(services *disco.Disco) getproviders.Source {
+func providerSource(configs []*cliconfig.ProviderInstallation, services *disco.Disco) (getproviders.Source, tfdiags.Diagnostics) {
+               source, moreDiags := providerSourceForCLIConfigLocation(sourceConfig.Location, services)
```

### 6. Найдите все коммиты в которых была изменена функция `globalPluginDirs`.

   **Ответ:**
   
   

### 7. Кто автор функции `synchronizedWriters`? 

   **Ответ:**
   Автор функции - Martin Atkins. Он ввел эту функцию 3 мая 2017 года. 

```bash
   $ git log -S'func synchronizedWriters' --pretty=format:'%h - %an %ae'
bdfea50cc - James Bardin j.bardin@gmail.com
5ac311e2a - Martin Atkins mart@degeneration.co.uk
```
```bash
$ git show 5ac311e2a
commit 5ac311e2a91e381e2f52234668b49ba670aa0fe5
Author: Martin Atkins <mart@degeneration.co.uk>
Date:   Wed May 3 16:25:41 2017 -0700
```
```bash
$ git show 5ac311e2a | grep synchronizedWriters
+func synchronizedWriters(targets ...io.Writer) []io.Writer {
```
---

