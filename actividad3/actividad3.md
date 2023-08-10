![Static Badge](https://img.shields.io/badge/Actividad_%233-green)
![Static Badge](https://img.shields.io/badge/SO1_Secci%C3%B3n_N-2S23-blue)
![Static Badge](https://img.shields.io/badge/Carnet-201908075-red)      ![Static Badge](https://img.shields.io/badge/Estudiante-Juan_José_López_Pérez-red)


## **Gestión de Permisos**

### Parte 1: Gestión de Usuarios

**1. Creación de Usuarios**
- Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`.

 ```bash
sudo useradd -m username_to_add
# Para verificar que se creó correctamente, visualizamos los usuarios con el comando:
ls /home
```
[![HDH11oX.md.png](https://iili.io/HDH11oX.md.png)](https://freeimage.host/i/HDH11oX)

**2. Asignación de Contraseñas**
- Establece una nueva contraseñas para cada usuario creado.

 ```bash
sudo passwd username_to_set_psw
```
[![HDH1EVn.md.png](https://iili.io/HDH1EVn.md.png)](https://freeimage.host/i/HDH1EVn)

**3. Información de Usuarios**
- Muestra la información de `usuario1` usando el comando `id`.

 ```bash
id username
```
[![HDH1cNI.md.png](https://iili.io/HDH1cNI.md.png)](https://freeimage.host/i/HDH1cNI)

**4. Eliminación de Usuarios**
- Elimina `usuario3`, pero conserva su directorio principal.

 ```bash
sudo deluser username_to_delete
```
[![HDH1ltt.md.png](https://iili.io/HDH1ltt.md.png)](https://freeimage.host/i/HDH1ltt)

### Parte 2: Gestión de Grupos

**1. Creación de Grupos**
- Crea dos grupos llamados `grupo1` y `grupo2`.

 ```bash
sudo groupadd groupname
# Para verificar que se creó correctamente, visualizamos los grupos con el comando:
cat /etc/group | grep word_to_find
```
[![HDH1GPs.md.png](https://iili.io/HDH1GPs.md.png)](https://freeimage.host/i/HDH1GPs)

**2. Agregar Usuarios a Grupos**
- Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.

 ```bash
sudo usermod -aG groupname username
```
[![HDH1VKG.md.png](https://iili.io/HDH1VKG.md.png)](https://freeimage.host/i/HDH1VKG)

**3. Verificar Membresía**
- Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.

 ```bash
groups username  
```
[![HDH1Wlf.md.png](https://iili.io/HDH1Wlf.md.png)](https://freeimage.host/i/HDH1Wlf)

**4. Eliminar Grupo**
- Elimina `grupo2`.

 ```bash
sudo groupdel groupname
# Para verificar que se eliminó correctamente, visualizamos los grupos con el comando:
cat /etc/group | grep word_to_find
```
[![HDH1XS4.md.png](https://iili.io/HDH1XS4.md.png)](https://freeimage.host/i/HDH1XS4)

### Parte 3: Gestión de Permisos

**1. Creación de Archivos y Directorios**
- Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
- Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.

 ```bash
 # Iniciamos sesión con el usuario
sudo su username
# Nos ubicamos en la carpeta home del usuario
cd ~
# Utilizamos  el comando touch para crear un archivo txt
touch docname.txt 
touch dirname/docname.txt
# Utilizamos el comando > para asignar el texto al documento
echo texto > docname.txt
# Utilizamos el comando mkdir para crear el directorio
mkdir dirname
```
[![HDH1jHl.md.png](https://iili.io/HDH1jHl.md.png)](https://freeimage.host/i/HDH1jHl)

**2. Verificar Permisos**
- Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

 ```bash
 sudo su username
 cd ~
 # Ya logueados y ubicados en la carpeta home del usuario:
ls - l
ls -ld
```
[![HDH1kx9.md.png](https://iili.io/HDH1kx9.md.png)](https://freeimage.host/i/HDH1kx9)

**3. Modificar Permisos usando `chmod` con Modo Numérico:**
- Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.

 ```bash
# r = 4 , w = 2, x = 1, - = 0
chmod 640 doc.txt
 # Para verificar los permisos modificados en el archivo.txt
ls -al | grep doc.txt
```
[![HDH1wR2.md.png](https://iili.io/HDH1wR2.md.png)](https://freeimage.host/i/HDH1wR2)

**4. Modificar Permisos usando `chmod` con Modo Simbólico:**
- Agrega permiso de ejecución al propietario del `archivo2.txt`.

 ```bash
# r , w, x, - 
chmod u+x doc.txt
 # Para verificar los permisos modificados en el archivo.txt
ls -al | grep doc.txt
```
[![HDH1NNS.md.png](https://iili.io/HDH1NNS.md.png)](https://freeimage.host/i/HDH1NNS)

**5. Cambiar el Grupo Propietario:**
- Cambia el grupo propietario de `archivo2.txt` a `grupo1`.

 ```bash
chgrp groupname dir/doc.txt
 # Para verificar los cambios realizados 
id username
```
[![HDH1OD7.md.png](https://iili.io/HDH1OD7.md.png)](https://freeimage.host/i/HDH1OD7)

**6. Configurar Permisos de Directorio:**
- Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.

 ```bash
# r = 4 , w = 2, x = 1, - = 0
chmod 740 directorio1
 # Para verificar los cambios realizados
ls -al | grep directorio1
```
[![HDH1vVe.md.png](https://iili.io/HDH1vVe.md.png)](https://freeimage.host/i/HDH1vVe)

**7. Comprobación de Acceso:**
- Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

 ```bash
#Iniciamos sesión como usuario2  
sudo su usuario2
#Intentamos acceder a los archivos
cat /home/usuario1/archivo1.txt
cat /home/usuario1/directorio1/archivo2.txt
```
[![HDH1UKb.md.png](https://iili.io/HDH1UKb.md.png)](https://freeimage.host/i/HDH1UKb)

**8. Verificación Final:**
- Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.

 ```bash
 sudo su username
 cd ~
 # Ya logueados y ubicados en la carpeta home del usuario:
ls - l
ls -ld
```
[![HDH1glj.md.png](https://iili.io/HDH1glj.md.png)](https://freeimage.host/i/HDH1glj)


**Nota:**

 ```bash
 #Si se tiene alguna duda con algún comando, se recomienda utilizar:
man command_name
#o
command_name --help
 # Y se podrá ver a detalle la documentación del comando
```

**Reflexión**

**- ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?**

Es importante mantener una buena gestión para saber proteger los datos y recursos del sistema, en los que cada usuario posee ciertos accesos habilitados para manejar sus archivos y carpetas y de esta forma evitar errores accidentales al no limitar los permisos de ciertos usuarios no administrativos y el control que estos poseen, garantizando su seguridad, privacidad e integridad.

**- ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?**

He oído sobre ACL, que es el control de accesos por medio de listas con comandos como getfacl o setfacl, así como de las alternativas comunes como umask o su.

