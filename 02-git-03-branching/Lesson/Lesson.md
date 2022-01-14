## Ход выполнения задания
```ps
maestro@PC-Ubuntu:~/Рабочий стол$ sudo -i
[sudo] пароль для maestro: 
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# mc

root@PC-Ubuntu:~# ls -l
итого 58892
drwxr-xr-x  2 root    root        4096 дек 23 11:36  log
-rw-rw-r--  1 maestro maestro     1700 янв  5 12:21  my-key.pem
drwxr-xr-x 12 root    root        4096 янв  3 19:22  netology-project
drwxr-xr-x  7 root    root        4096 дек 26 18:49  scripts
drwxr-xr-x  3 root    root        4096 дек  5 13:14  snap
drwxr-xr-x  3 root    root        4096 янв 12 21:19  TEMP
-rwxrwxr-x  1 root    root    45353856 мая 23  2019  terraform
-rw-r--r--  1 root    root    14907580 дек 19 16:54  terraform_0.12.0_linux_amd64.zip
-rwxr-xr-x  1 root    root        2483 дек 25 21:56  test-services-2
drwxr-xr-x  5 root    root        4096 дек 21 13:31  vagrant-project
drwx------  6 root    root        4096 дек 21 15:05 'VirtualBox VMs'
drwxr-xr-x  4 root    root        4096 дек  9 16:49  yandex-cloud
root@PC-Ubuntu:~# cd netology-project/
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# ls -l
итого 40
drwxr-xr-x  3 root root 4096 дек  9 15:48 02-virt-admin
drwxr-xr-x 14 root root 4096 дек 20 18:53 2-virt-admin
drwxr-xr-x  4 root root 4096 янв  3 19:23 brikman
drwxr-xr-x  3 root root 4096 дек 20 16:15 devops-terraform
drwxr-xr-x  4 root root 4096 дек  9 15:54 Docker-Compose
drwxr-xr-x  3 root root 4096 дек 15 22:27 Docker-Compose-Hard
drwxr-xr-x  3 root root 4096 дек 11 09:16 Docker-Compose-Swarm
drwxr-xr-x  4 root root 4096 дек 21 17:39 learning-terraform
drwxr-xr-x  4 root root 4096 дек 20 17:51 terraform-02-syntax
drwxr-xr-x 21 root root 4096 дек 11 09:03 virt-homeworks-1
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# git status
fatal: не найден git репозиторий (или один из родительских каталогов): .git
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# mkdir -p 01-devops-admin
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# ls -l
итого 44
drwxr-xr-x  2 root root 4096 янв 13 17:26 01-devops-admin
drwxr-xr-x  3 root root 4096 дек  9 15:48 02-virt-admin
drwxr-xr-x 14 root root 4096 дек 20 18:53 2-virt-admin
drwxr-xr-x  4 root root 4096 янв  3 19:23 brikman
drwxr-xr-x  3 root root 4096 дек 20 16:15 devops-terraform
drwxr-xr-x  4 root root 4096 дек  9 15:54 Docker-Compose
drwxr-xr-x  3 root root 4096 дек 15 22:27 Docker-Compose-Hard
drwxr-xr-x  3 root root 4096 дек 11 09:16 Docker-Compose-Swarm
drwxr-xr-x  4 root root 4096 дек 21 17:39 learning-terraform
drwxr-xr-x  4 root root 4096 дек 20 17:51 terraform-02-syntax
drwxr-xr-x 21 root root 4096 дек 11 09:03 virt-homeworks-1
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# cd 02-virt-admin/
root@PC-Ubuntu:~/netology-project/02-virt-admin# 
root@PC-Ubuntu:~/netology-project/02-virt-admin# git status
На ветке master

Еще нет коммитов

нечего коммитить (создайте/скопируйте файлы, затем запустите «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/netology-project/02-virt-admin# 
root@PC-Ubuntu:~/netology-project/02-virt-admin# 
root@PC-Ubuntu:~/netology-project/02-virt-admin# cd ..
root@PC-Ubuntu:~/netology-project# 
root@PC-Ubuntu:~/netology-project# cd 01-devops-admin/
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# git status
fatal: не найден git репозиторий (или один из родительских каталогов): .git
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# git init
Инициализирован пустой репозиторий Git в /root/netology-project/01-devops-admin/.git/
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# git status
На ветке master

Еще нет коммитов

нечего коммитить (создайте/скопируйте файлы, затем запустите «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# git remote -v
root@PC-Ubuntu:~/netology-project/01-devops-admin# 
root@PC-Ubuntu:~/netology-project/01-devops-admin# cd
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# ls -l
итого 58892
drwxr-xr-x  2 root    root        4096 дек 23 11:36  log
-rw-rw-r--  1 maestro maestro     1700 янв  5 12:21  my-key.pem
drwxr-xr-x 13 root    root        4096 янв 13 17:26  netology-project
drwxr-xr-x  7 root    root        4096 дек 26 18:49  scripts
drwxr-xr-x  3 root    root        4096 дек  5 13:14  snap
drwxr-xr-x  3 root    root        4096 янв 12 21:19  TEMP
-rwxrwxr-x  1 root    root    45353856 мая 23  2019  terraform
-rw-r--r--  1 root    root    14907580 дек 19 16:54  terraform_0.12.0_linux_amd64.zip
-rwxr-xr-x  1 root    root        2483 дек 25 21:56  test-services-2
drwxr-xr-x  5 root    root        4096 дек 21 13:31  vagrant-project
drwx------  6 root    root        4096 дек 21 15:05 'VirtualBox VMs'
drwxr-xr-x  4 root    root        4096 дек  9 16:49  yandex-cloud
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# mkmdir -p devops-netology/zakharovnpa

Команда «mkmdir» не найдена. Возможно, вы имели в виду:

  command 'mkdir' from deb coreutils (8.30-3ubuntu2)
  command 'mmkdir' from deb mblaze (0.6-1)
  command 'mmdir' from deb simh (3.8.1-6)

Try: apt install <deb name>

root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# mkdir -p devops-netology/zakharovnpa
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# 
root@PC-Ubuntu:~# cd devops-netology/zakharovnpa/
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# ls -l
итого 0
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
fatal: не найден git репозиторий (или один из родительских каталогов): .git
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git init
Инициализирован пустой репозиторий Git в /root/devops-netology/zakharovnpa/.git/
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
На ветке master

Еще нет коммитов

нечего коммитить (создайте/скопируйте файлы, затем запустите «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# mkdir -p branching
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# ls -l
итого 4
drwxr-xr-x 2 root root 4096 янв 13 17:32 branching
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# git status
На ветке master

Еще нет коммитов

нечего коммитить (создайте/скопируйте файлы, затем запустите «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# vim merge.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# vim rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# cat merge.sh 
#!/bin/bash
# display command line options

count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
done
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
done
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	./

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# cd .
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git add branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    merge.sh
	новый файл:    rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# git log
fatal: ваша текущая ветка «master» еще не содержит ни одного коммита
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# mc

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd ..
root@PC-Ubuntu:~/devops-netology# 
root@PC-Ubuntu:~/devops-netology# ls -l
итого 4
drwxr-xr-x 4 root root 4096 янв 13 17:32 zakharovnpa
root@PC-Ubuntu:~/devops-netology# 
root@PC-Ubuntu:~/devops-netology# cd zakharovnpa/
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# mkdir -p branching-git
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd branching-git/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    ../branching/merge.sh
	новый файл:    ../branching/rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git log
fatal: ваша текущая ветка «master» еще не содержит ни одного коммита
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git rm --cached ../branching/merge.sh
rm 'branching/merge.sh'
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git rm --cached ../branching/rebase.sh
rm 'branching/rebase.sh'
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	../branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd branching-git/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	../branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git init
Инициализирован пустой репозиторий Git в /root/devops-netology/zakharovnpa/branching-git/.git/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

нечего коммитить (создайте/скопируйте файлы, затем запустите «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git log
fatal: ваша текущая ветка «master» еще не содержит ни одного коммита
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	branching-git/
	branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git add branching-git/
error: 'branching-git/' does not have a commit checked out
fatal: ошибка при добавлении файлов
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	branching-git/
	branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa# cd branching-git/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# mc

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 13 17:34 merge.sh
-rw-r--r-- 1 root root 149 янв 13 17:35 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	merge.sh
	rebase.sh

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git add *
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    merge.sh
	новый файл:    rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote -v
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 13 17:34 merge.sh
-rw-r--r-- 1 root root 149 янв 13 17:35 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# mkdir -p branching
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cp merge.sh rebase.sh branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 09:07 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    ../merge.sh
	новый файл:    ../rebase.sh

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	./

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git rm ../merge.sh ../rebase.sh 
error: следующие файлы содержат проиндексированные изменения в индексе:
    merge.sh
    rebase.sh
(используйте опцию «--cached» для оставления файла, или «-f» для принудительного удаления)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git rm --cache ../merge.sh ../rebase.sh 
rm 'merge.sh'
rm 'rebase.sh'
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	./
	../merge.sh
	../rebase.sh

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 09:07 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# ls -l
итого 12
drwxr-xr-x 2 root root 4096 янв 14 09:07 branching
-rw-r--r-- 1 root root  149 янв 13 17:34 merge.sh
-rw-r--r-- 1 root root  149 янв 13 17:35 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# rm merge.sh rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# ls -l
итого 4
drwxr-xr-x 2 root root 4096 янв 14 09:07 branching
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	branching/

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master

Еще нет коммитов

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)
	./

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 09:07 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git add branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    branching/merge.sh
	новый файл:    branching/rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    merge.sh
	новый файл:    rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cd ..
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote add branching-git git@github.com:zakharovnpa/branching-git.git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote
branching-git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git push
fatal: Не настроена точка назначения для отправки.
Либо укажите URL с помощью командной строки, либо настройте внешний репозиторий с помощью

    git remote add <имя> <адрес>

а затем отправьте изменения с помощью имени внешнего репозитория

    git push <имя>

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote rm branching-git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git rmote add branching-git https://github.com/zakharovnpa/branching-git
git: «rmote» не является командой git. Смотрите «git --help».

Самые похожие команды:
	remote
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git add branching-git https://github.com/zakharovnpa/branching-git
fatal: спецификатор пути «branching-git» не соответствует ни одному файлу
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote add branching-git https://github.com/zakharovnpa/branching-git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git remote
branching-git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git status
На ветке master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>…», чтобы убрать из индекса)
	новый файл:    branching/merge.sh
	новый файл:    branching/rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git commit -m "prepare for merge and rebase"
[master (корневой коммит) e12ef31] prepare for merge and rebase
 2 files changed, 16 insertions(+)
 create mode 100644 branching/merge.sh
 create mode 100644 branching/rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git log
commit e12ef31c210e4030c67c1c0e809b3d446c18d774 (HEAD -> master)
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 09:17:08 2022 +0400

    prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git push git@github.com:zakharovnpa/branching-git.git
fatal: Текущая ветка master не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream git@github.com:zakharovnpa/branching-git.git master

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git checkout -b git-merge
Переключено на новую ветку «git-merge»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# git log
commit e12ef31c210e4030c67c1c0e809b3d446c18d774 (HEAD -> git-merge, master)
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 09:17:08 2022 +0400

    prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# ls -l
итого 4
drwxr-xr-x 2 root root 4096 янв 14 09:07 branching
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git# cd branching/
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 09:07 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# vim merge.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat merge.sh 
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "\$@ Parameter #$count = $param"
    count=$(( $count + 1 ))
#!/bin/bash
done
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git add merge.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git commit -m "merge: @ instead *"
[git-merge 371a772] merge: @ instead *
 1 file changed, 3 insertions(+), 2 deletions(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# got log

Команда «got» не найдена, но есть 17 похожих.

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log
commit 371a7721c17eb1b070569e4fa65e8e9a1b9e74d8 (HEAD -> git-merge)
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 10:09:32 2022 +0400

    merge: @ instead *

commit e12ef31c210e4030c67c1c0e809b3d446c18d774 (master)
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 09:17:08 2022 +0400

    prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* 371a772 (HEAD -> git-merge) merge: @ instead *
* e12ef31 (master) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git
fatal: Текущая ветка git-merge не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream git@github.com:zakharovnpa/branching-git.git git-merge

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout main
error: pathspec 'main' did not match any file(s) known to git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout master
Переключено на ветку «master»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout main
error: pathspec 'main' did not match any file(s) known to git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git pull git@github.com:zakharovnpa/branching-git.git
warning: не общих коммитов
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Распаковка объектов: 100% (3/3), 652 байта | 652.00 КиБ/с, готово.
Из github.com:zakharovnpa/branching-git
 * branch            HEAD       -> FETCH_HEAD
fatal: отказ слияния несвязанных историй изменений
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout main
error: pathspec 'main' did not match any file(s) known to git
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git
fatal: Текущая ветка master не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream git@github.com:zakharovnpa/branching-git.git master

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push --set-upstream git@github.com:zakharovnpa/branching-git.git master
Перечисление объектов: 4, готово.
Подсчет объектов: 100% (4/4), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (4/4), 398 байтов | 398.00 КиБ/с, готово.
Всего 4 (изменения 0), повторно использовано 0 (изменения 0)
remote: 
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/zakharovnpa/branching-git/pull/new/master
remote: 
To github.com:zakharovnpa/branching-git.git
 * [new branch]      master -> master
Ветка «master» отслеживает внешнюю ветку «master» из «git@github.com:zakharovnpa/branching-git.git».
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Переключаемся на ветку git-merge
Переключаемся: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout git-merge 
Переключено на ветку «git-merge»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* 371a772 (HEAD -> git-merge) merge: @ instead *
* e12ef31 (master) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Отправляем изменения в репозиторий
Отправляем: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git master
Everything up-to-date
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 161 янв 14 10:21 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout 371a772
Note: switching to '371a772'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD сейчас на 371a772 merge: @ instead *
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* 371a772 (HEAD, git-merge) merge: @ instead *
* e12ef31 (master) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git master
Everything up-to-date
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git git-merge
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (4/4), 399 байтов | 399.00 КиБ/с, готово.
Всего 4 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'git-merge' on GitHub by visiting:
remote:      https://github.com/zakharovnpa/branching-git/pull/new/git-merge
remote: 
To github.com:zakharovnpa/branching-git.git
 * [new branch]      git-merge -> git-merge
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
HEAD отделён на 371a772
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git  checkout git-merge
Переключено на ветку «git-merge»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 161 янв 14 10:21 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# vim merge.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git add merge.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-merge
Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	изменено:      merge.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git commit -m "merge: use shift"
[git-merge 33e704b] merge: use shift
 1 file changed, 3 insertions(+), 3 deletions(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* 33e704b (HEAD -> git-merge) merge: use shift
* 371a772 merge: @ instead *
* e12ef31 (master) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git git-merge
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (4/4), 447 байтов | 447.00 КиБ/с, готово.
Всего 4 (изменения 0), повторно использовано 0 (изменения 0)
To github.com:zakharovnpa/branching-git.git
   371a772..33e704b  git-merge -> git-merge
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Вернитесь в ветку main
Вернитесь: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout master
Переключено на ветку «master»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* e12ef31 (HEAD -> master) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 10:32 merge.sh
-rw-r--r-- 1 root root 149 янв 14 09:07 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# vim rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git add rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master
Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	изменено:      rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git master
Everything up-to-date
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git commit -m "noname commit - cheange main"
[master e170b34] noname commit - cheange main
 1 file changed, 4 insertions(+), 2 deletions(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* e170b34 (HEAD -> master) noname commit - cheange main
* e12ef31 prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git master
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (4/4), 392 байта | 392.00 КиБ/с, готово.
Всего 4 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:zakharovnpa/branching-git.git
   e12ef31..e170b34  master -> master
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* e170b34 (HEAD -> master) noname commit - cheange main
* e12ef31 prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 10:32 merge.sh
-rw-r--r-- 1 root root 163 янв 14 10:36 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "\$@ Parameter #$count = $param"
    count=$(( $count + 1 ))
done

echo "====="
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Подготовка файла rebase.sh
Подготовка: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке master
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log
commit e170b3408173260fda1238c38f07b87470471134 (HEAD -> master)
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 11:03:03 2022 +0400

    noname commit - cheange main

commit e12ef31c210e4030c67c1c0e809b3d446c18d774
Author: Sergey Zakharov <zakharovnpa@gmail.com>
Date:   Fri Jan 14 09:17:08 2022 +0400

    prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout e12ef31c210e4030c67c1c0e809b3d446c18d774
Note: switching to 'e12ef31c210e4030c67c1c0e809b3d446c18d774'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD сейчас на e12ef31 prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* e12ef31 (HEAD) prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Создадим ветку git-rebase основываясь на текущем коммите
Создадим: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout -b git-rebase
Переключено на новую ветку «git-rebase»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# ls -l
итого 8
-rw-r--r-- 1 root root 149 янв 14 10:32 merge.sh
-rw-r--r-- 1 root root 149 янв 14 11:06 rebase.sh
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
done
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# vim rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "Parameter: $param"
    count=$(( $count + 1 ))
done

echo "====="
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Отправим эти изменения в ветку git-rebase, с комментарием git-rebase 1
Отправим: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git add rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	изменено:      rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git commit -m "git-rebase 1"
[git-rebase 5e00112] git-rebase 1
 1 file changed, 4 insertions(+), 2 deletions(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git log --graph --oneline
* 5e00112 (HEAD -> git-rebase) git-rebase 1
* e12ef31 prepare for merge and rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# И сделаем еще один коммит git-rebase 2 с пушем заменив echo "Parameter: $param" на echo "Next parameter: $param".
И: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "Parameter: $param"
    count=$(( $count + 1 ))
done

echo "====="
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# vim rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# cat rebase.sh 
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "Next parameter: $param"
    count=$(( $count + 1 ))
done

echo "====="
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git add rebase.sh 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	изменено:      rebase.sh

root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git commit -m "git-rebase 2"
[git-rebase 184f0bc] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push git@github.com:zakharovnpa/branching-git.git git-rebase
Перечисление объектов: 11, готово.
Подсчет объектов: 100% (11/11), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (6/6), готово.
Запись объектов: 100% (8/8), 751 байт | 751.00 КиБ/с, готово.
Всего 8 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), done.
remote: 
remote: Create a pull request for 'git-rebase' on GitHub by visiting:
remote:      https://github.com/zakharovnpa/branching-git/pull/new/git-rebase
remote: 
To github.com:zakharovnpa/branching-git.git
 * [new branch]      git-rebase -> git-rebase
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git status
На ветке git-rebase
нечего коммитить, нет изменений в рабочем каталоге
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git checkout master
Переключено на ветку «master»
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# Сливаем ветку git-merge в main и отправляем изменения в репозиторий, должно получиться без конфликтов
Сливаем: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git merge git-merge
Merge made by the 'recursive' strategy.
 branching/merge.sh | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# git push
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 6 потоков
Сжатие объектов: 100% (2/2), готово.
Запись объектов: 100% (3/3), 355 байтов | 355.00 КиБ/с, готово.
Всего 3 (изменения 0), повторно использовано 0 (изменения 0)
To github.com:zakharovnpa/branching-git.git
   e170b34..3e96331  master -> master
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# А перед мержем ветки git-rebase выполним ее rebase на main
А: команда не найдена
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
root@PC-Ubuntu:~/devops-netology/zakharovnpa/branching-git/branching# 
```
Получалась такая схема веток ![Network-Graph](/02-git-03-branching/Lesson/img/Network-Graph.png)
