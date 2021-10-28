# 3.5. Файловые системы - Захаров Сергей Николаевич

1. Узнайте о [sparse](https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B7%D1%80%D0%B5%D0%B6%D1%91%D0%BD%D0%BD%D1%8B%D0%B9_%D1%84%D0%B0%D0%B9%D0%BB) (разряженных) файлах.

    **Ответ:** 

* Разрежённый файл (англ. sparse file) — файл, в котором последовательности нулевых байтов заменены на информацию об этих 
последовательностях (список дыр).

* Дыра (англ. hole) — последовательность нулевых байт внутри файла, не записанная на диск. Информация о дырах (смещение от начала 
файла в байтах и количество байт) хранится в метаданных ФС.
			
* Команды в Linux для создания разрежённого файла размером 200 Гб:
  - `dd if=/dev/zero of=./sparse-file bs=1 count=0 seek=200G`
  ![dd_if](/03-sysadmin-05-fs/img/image9.png)
  
  - `truncate -s200G ./sparse-file`
  ![touch](/03-sysadmin-05-fs/img/image14.png)



2. Могут ли файлы, являющиеся жесткой ссылкой на один объект, иметь разные права доступа и владельца? Почему?

    **Ответ:**

* Файлы, являющиеся жесткой ссылкой на один объект, не могут иметь разные права доступа и владельца, т.к. эти объекты файловой системы 
имеют одну и ту же inode (т.е. это один и тот же файл, но созданный под разными именами).

  ![truncate](/03-sysadmin-05-fs/img/image25.png)
  
  ![find](/03-sysadmin-05-fs/img/image11.png)
  ![chown](/03-sysadmin-05-fs/img/image24.png)

3. Сделайте `vagrant destroy` на имеющийся инстанс Ubuntu. Замените содержимое Vagrantfile следующим:

    ```bash
    Vagrant.configure("2") do |config|
      config.vm.box = "bento/ubuntu-20.04"
      config.vm.provider :virtualbox do |vb|
        lvm_experiments_disk0_path = "/tmp/lvm_experiments_disk0.vmdk"
        lvm_experiments_disk1_path = "/tmp/lvm_experiments_disk1.vmdk"
        vb.customize ['createmedium', '--filename', lvm_experiments_disk0_path, '--size', 2560]
        vb.customize ['createmedium', '--filename', lvm_experiments_disk1_path, '--size', 2560]
        vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', lvm_experiments_disk0_path]
        vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', lvm_experiments_disk1_path]
      end
    end
    ```

    Данная конфигурация создаст новую виртуальную машину с двумя дополнительными неразмеченными дисками по 2.5 Гб.
    
    **Ответ:**
    
    Создана новая виртуальная машина с двумя дополнительными неразмеченными дисками (sdb, sdc) по 2.5 Гб.    
    
    ![lsblk8](/03-sysadmin-05-fs/img/image8.png)

4. Используя `fdisk`, разбейте первый диск на 2 раздела: 2 Гб, оставшееся пространство.

    **Ответ:**
 
     Смотрим список дисков:
     
     ![fdisk-l](/03-sysadmin-05-fs/img/image17.png)

    Разбиваем диск /dev/sdb на два раздела: 2 Гб и оставшееся пространство (511 Мб).
    
    ![fdisk-dev-sdb](/03-sysadmin-05-fs/img/image5.png)
    
    ![fdisk-sdb1](/03-sysadmin-05-fs/img/image18.png)
    
    ![fdisk-sdb1-l](/03-sysadmin-05-fs/img/image31.png)
     
     Смотрим какие есть разделы на диске /dev/sdb:
     
     ![sfdisk-d](/03-sysadmin-05-fs/img/image22.png)

5. Используя `sfdisk`, перенесите данную таблицу разделов на второй диск.

    **Ответ:**
 
     Переносим таблицу разделов и смотрим результат на /dev/sdc:
     
     ![sfdisk-d-sdb](/03-sysadmin-05-fs/img/image1.png)
     
     ![lsblk-l-sdb1-cdc1](/03-sysadmin-05-fs/img/image4.png)

6. Соберите `mdadm` RAID1 на паре разделов 2 Гб.

    **Ответ:**
    
    В лекции использована команда `mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/nvme1n1 /dev/nvme2n1`
       
   Описание режимов и опций команды в `man mdadm`:
       
       SYNOPSIS
         mdadm [mode] <raiddevice> [options] <component-devices>
		
         [mode]	
		--create - Создается новый массив с метаданными для каждого устройства (суперблоками). Соответствующие метаданные записываются 
       на каждое устройство, а затем активируется массив, содержащий эти устройства.
       Запускается процесс повторной синхронизации, чтобы убедиться, что массив согласован (например, обе стороны зеркала содержат одни и те же данные), 
       но в остальном   содержимое       устройства остается нетронутым. Массив можно использовать сразу после его создания. Нет необходимости ждать завершения 
       начальной повторной синхронизации.
       
	        --verbose - Подробно рассказывать о том, что происходит. Это можно использовать дважды, чтобы выводить более подробные данные. 
        В настоящее время дополнительная детализация влияет только на --detail --scan и --examine --scan.
 
	        <raiddevice>
		    /dev/md0 - имя 
		    
	        [options]
		
		    --level=0 - означает массив RAID0
		    --raid-devices=2 - кол-во устройств в массиве
		    /dev/nvme1n1 - имя устройства
		    /dev/nvme2n1 - имя устройства
		
		
	Наша команда будет такая: `mdadm --create --verbose /dev/md1 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1`

    ![mdadm-create](/03-sysadmin-05-fs/img/image21.png)
    
    ![lsblk-md1](/03-sysadmin-05-fs/img/image30.png)

7. Соберите `mdadm` RAID0 на второй паре маленьких разделов.

    **Ответ:**

    Команда будет такая: `mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sdb2 /dev/sdc2`

    ![mdadm-create-verbose](/03-sysadmin-05-fs/img/image3.png)
    
    ![cat-proc-mdstat](/03-sysadmin-05-fs/img/image12.png)
    
     
8. Создайте 2 независимых PV на получившихся md-устройствах.

    **Ответ:**
    
    Команда `pvcreate /dev/md1 /dev/md0`
    
    ![pvcreate-md0](/03-sysadmin-05-fs/img/image13.png)
    ![pvdisplay](/03-sysadmin-05-fs/img/image2.png)
    

9. Создайте общую volume-group на этих двух PV.

    **Ответ:**
    
    Команда `vgcreate vg1 /dev/md1 /dev/md0`
    
    ![vgcreate](/03-sysadmin-05-fs/img/image19.png)
    ![vgdisplay](/03-sysadmin-05-fs/img/image16.png)
    

10. Создайте LV размером 100 Мб, указав его расположение на PV с RAID0.

    **Ответ:**
    
    Команда `lvcreate -L 100M vg1 /dev/md0` создаст том lvol0
    
    ![vgs](/03-sysadmin-05-fs/img/image10.png)
    
    

11. Создайте `mkfs.ext4` ФС на получившемся LV.

    **Ответ:**
    
     ![mkfs-ext4](/03-sysadmin-05-fs/img/image15.png)
    
12. Смонтируйте этот раздел в любую директорию, например, `/tmp/new`.

    **Ответ:**
    
     ![mount-tmp-new](/03-sysadmin-05-fs/img/image26.png)

13. Поместите туда тестовый файл, например `wget https://mirror.yandex.ru/ubuntu/ls-lR.gz -O /tmp/new/test.gz`.

    **Ответ:**
    
     ![wget](/03-sysadmin-05-fs/img/image27.png)

14. Прикрепите вывод `lsblk`.

    **Ответ:**
    
     ![lsblk](/03-sysadmin-05-fs/img/image29.png)
    

15. Протестируйте целостность файла:

    ```bash
    root@vagrant:~# gzip -t /tmp/new/test.gz
    root@vagrant:~# echo $?
    0
    ```
    **Ответ:**
    
    Вывод команды `echo $?` равен 0. Значит команда `gzip -t` отработала успешно и файл доступен.
    
     ![gzip](/03-sysadmin-05-fs/img/image28.png)

16. Используя pvmove, переместите содержимое PV с RAID0 на RAID1.

    **Ответ:**
    
     ![pvmove](/03-sysadmin-05-fs/img/image33.png)
     
     Содержимое vg1-lvol0 переместилось с массива md0 на массив md1.
     ![lsblk](/03-sysadmin-05-fs/img/image6.png)

17. Сделайте `--fail` на устройство в вашем RAID1 md.

    **Ответ:**
    
    Перевели диск /dev/sdb1 массива md1 в аварийный режим:
     ![pvmove](/03-sysadmin-05-fs/img/image33.png)

18. Подтвердите выводом `dmesg`, что RAID1 работает в деградированном состоянии.

    **Ответ:**
    
    Вывод команды `dmesg -T`
    ![dmesg-t](/03-sysadmin-05-fs/img/image34.png)

19. Протестируйте целостность файла, несмотря на "сбойный" диск он должен продолжать быть доступен:

    ```bash
    root@vagrant:~# gzip -t /tmp/new/test.gz
    root@vagrant:~# echo $?
    0
    ```
    
    **Ответ:**
      
    Вывод команды `echo $?` равен 0. Значит команда `gzip -t` отработала успешно и файл остается доступным.
    
    ![gzip-t](/03-sysadmin-05-fs/img/image7.png)
    
20. Погасите тестовый хост, `vagrant destroy`.

    **Ответ:**
    
    ![vagrant-deatroy](/03-sysadmin-05-fs/img/image20.png)
 
 ---

Используемые в лекции утилиты:

* stat
* mkfifo
* chmod
* chown
* chattr
* lsattr
* mdadm
* lsblk
* lvm
* mount
* fio
* update-initramfs
* mdadm.conf
* blkid
* pvs
* vgs
* lvdisplay
* fdisk
* sfdisk
* mkfs
* fstab
* gdisk
* df
* fsck
* mkswop
* swapon
* swapoff
* pvcreate
* vgcreate
* lvdisplay
* lvs
* pvmove
* fallocate
