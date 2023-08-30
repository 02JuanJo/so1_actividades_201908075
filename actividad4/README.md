![Static Badge](https://img.shields.io/badge/Actividad_%234-green)
![Static Badge](https://img.shields.io/badge/SO1_Secci%C3%B3n_N-2S23-blue)
![Static Badge](https://img.shields.io/badge/Carnet-201908075-red)      ![Static Badge](https://img.shields.io/badge/Estudiante-Juan_José_López_Pérez-red)


## **Systemd Unit**

### Proceso de instalación 

**1. Archivo .sh**
- El archivo `script.sh`, contiene una serie de líneas de código para ejecutar de manera infinita un saludo cada 5 segundos. Se debe descargar y colocar en donde el usuario prefiera.

[![HyOMkyF.md.png](https://iili.io/HyOMkyF.md.png)](https://freeimage.host/i/HyOMkyF)

**2. Archivo .service**
- El archivo `script.service`, contiene la información específica del servicio. Al descargarse, se debe configurar la `ruta` y el `nombre del usuario`.
- La `ruta` debe ser la misma donde se colocó el archivo .sh del paso anterior.
- El `nombre del usuario` debe ser el propio del usuario que está realizando este proceso en Linux.

[![HyOM8Tg.md.png](https://iili.io/HyOM8Tg.md.png)](https://freeimage.host/i/HyOM8Tg)

**3. Ejecución del archivo .service**
- Se debe copiar el archivo `script.service` en el directorio `/etc/systemd/system/`.
- Ejecutaremos los siguientes comandos para activar el servicio:

```bash
   sudo systemctl daemon-reload
   sudo systemctl enable script.service
   sudo systemctl start script.service
```

**4. Monitoreo**
- Para verificar el estado del servicio: `sudo systemctl status script.service`

[![HyOMSja.md.png](https://iili.io/HyOMSja.md.png)](https://freeimage.host/i/HyOMSja)

- Para detener el servicio: `sudo systemctl stop script.service`

[![HyOMev1.md.png](https://iili.io/HyOMev1.md.png)](https://freeimage.host/i/HyOMev1)

- Para reiniciar el servicio: `sudo systemctl restart script.service`
