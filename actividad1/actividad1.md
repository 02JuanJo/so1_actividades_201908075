![Static Badge](https://img.shields.io/badge/Actividad_%231-green)
![Static Badge](https://img.shields.io/badge/SO1_Secci%C3%B3n_N-2S23-blue)
![Static Badge](https://img.shields.io/badge/Carnet-201908075-red)      ![Static Badge](https://img.shields.io/badge/Estudiante-Juan_José_López_Pérez-red)

## **Tipos de Kernel**

Se conoce como kernel a la sección más esencial de un sistema operativo. Consiste en la parte que se ocupa de ingresar a los diversos dispositivos que posee un ordenador.

![Kernel](https://bligoo.com.ve/wp-content/uploads/2017/08/kernel-2.png "Kernel")

Existen distintos tipos de Kernel de sistemas operativos. Esto debido a la evolución de soluciones a problemas y necesidades que se fueron encontrando a lo largo del desarrollo de hardware y software. A continuación, se mencionan algunos de los más destacados e importantes:

- **Kernel Monolítico**

	Este tipo de kernel se encarga de implementar funciones fundamentales como el manejo de archivos, redes, memoria, controladores y otros recursos, otorgando al sistema operativo una estructura única en la que todos los recursos son accesibles y están asociados en el espacio del kernel. Un ejemplo de esta clase de kernels es el caso de DOS. A pesar de sus limitaciones en la gestión de recursos, todavía posee funcionalidades fundamentales como la programación del CPU, llamadas de sistema y otras características esenciales. Todos los controladores que acceden directamente al hardware están integrados en el kernel, lo que les permite comunicarse directamente entre sí.

	Además, tiene la capacidad de cargar módulos dinámicamente, evitando así la necesidad de incluirlos en la imagen del sistema operativo en sí. Sin embargo, una gran desventaja de este tipo de kernels es que todos los procesos se encuentran en "un solo bloque". Esto significa que si un servicio o controlador falla, puede provocar que el kernel también falle y entre en modo pánico.

- **Microkernel**

	También conocidos como micronúcleos, este tipo de kernel se asemeja al enfoque monolítico con una diferencia fundamental: ciertos servicios, como la compartición de archivos, el scheduling y otros servicios del kernel, se ejecutan en un espacio separado del kernel principal. Cada servicio tiene su propia dirección, lo que resulta en una notable reducción del tamaño tanto del kernel como del sistema operativo en general. La división del kernel en módulos más pequeños y con propósitos específicos contribuye a la fiabilidad y estabilidad del sistema. Además, este kernel facilita la comunicación entre programas del cliente y los servicios que se ejecutan en el espacio de usuario.

	Una característica destacable es que cualquier servicio nuevo se ejecuta en el espacio de usuario, lo que evita la necesidad de modificar el kernel. En comparación con el kernel monolítico, si un servicio experimenta un fallo, el kernel permanece intacto, lo que resulta en una recuperación de errores mucho más efectiva. Sin embargo, el hardware es más abstracto a través de controladores y los procesos no pueden obtener información sin esperar, lo que conleva a una cola de procesos.

- **Kernel híbrido**

	Este tipo de kernels representa una combinación de características de los enfoques monolítico y Microkernel. Algunas partes del kernel se ejecutan en espacio de memoria privilegiado y se mantienen juntas como un único programa (similar al kernel monolítico). Otras partes más especializadas y menos críticas se ejecutan como servicios independientes en espacios de memoria protegida para mejorar el rendimiento (similar al microkernel). La mayor desventaja que posee es que no puede cargar módulos dinámicamente. Un ejemplo de este comportamiento puede ser XNU, a diferencia del Microkernel, este tipo de kernel si divide trabajo en no solo el espacio de kernel. Esto permite simplicidad, eficiencia y ciertas modificaciones que no se pueden modificar del distribuidor.

	A diferencia del Microkernel, este tipo de kernel si divide trabajo en no solo el espacio de kernel. Esto permite simplicidad, eficiencia y ciertas modificaciones que no se pueden modificar del distribuidor.

- **Exokernel**

	Los exonúcleos, también conocidos como sistemas operativos verticalmente estructurados, representan una aproximación nueva al diseño de sistemas operativos. Los exonúcleos son muy diminutos, su arquitectura está diseñada para asegurar un aislamiento y protección efectivos de los recursos, lo que facilita la personalización a nivel de aplicación.

	Se denominan de esta forma debido a que toda la funcionalidad deja de estar presente en la memoria y pasa a estar en el exterior, en el uso directo de librerías activas.

- **Nanokernel**

	Es una versión aún más pequeña que el microkernel, este tipo de kernels suelen ser extremadamente primitivos y básicos reduciendo la funcionalidad básica del kernel a su mínima expresión. Su código incluye las operaciones relacionadas con el hardware que se ejecutan en modo privilegiado con la capacidad de gestionar recursos y proporcionar comunicación básica entre procesos

	Este tipo de kernel admite frecuencias de reloj de un nanosegundo. Un ejemplo claro de este tipo es KeyKOS, que está orientado a objetos. La utilización de este tipo de kernels se justifica por su capacidad para ejecutar varias instancias del mismo sistema operativo en un sistema. En el caso de KeyKOS, solo ocupa 100KB de memoria y cuenta con aproximadamente 2000 líneas de código en C.

------------

## **User vs Kernel Mode**

|       | Descripción        | 
|:-------------:|:---------------: |
| Accesos | En el modo kernel, un programa tiene acceso directo e ilimitado a todos los recursos del sistema, lo que incluye memoria, dispositivos y otras funciones fundamentales, mientras que en el modo usuario, este acceso se encuentra restringido.|  
|Interrupciones| Cuando ocurre una interrupción en el modo kernel, todo el sistema se detiene, ya que las interrupciones se manejan a nivel del kernel. Por otro lado, en el modo usuario, los programas tienen acceso restringido a los recursos del sistema. Cuando ocurre una interrupción en el modo usuario, solo se detiene el proceso que está ejecutando el programa afectado, mientras que el resto del sistema sigue funcionando.|
|Permisos|Los permisos de lectura, escritura y ejecución de archivos y binarios en el sistema en el modo kernel, generalmente, se tienen permisos completos para acceder a todos los archivos, mientras que en el modo usuario, los permisos se encuentran restringidos de acuerdo con las políticas de seguridad del sistema. |  
|Dirección de ejecución|En el modo kernel, todos los procesos comparten la misma dirección virtual, lo que les permite acceder directamente a la memoria del kernel. Por otro lado, en el modo usuario, cada proceso tiene su propia dirección virtual, lo que garantiza un aislamiento y protección para evitar interferencias entre los distintos procesos y que el usuario no pueda acceder directamente a funciones críticas del hardware o modificar el estado global del sistema. Si un programa de usuario necesita acceder a recursos del kernel, debe hacerlo a través de una aplicación de kernel intermediaria.|


En resumen, el modo kernel permite un acceso privilegiado a todos los recursos del sistema y se ejecuta en una dirección virtual compartida, mientras que el modo usuario tiene acceso restringido, se ejecuta en su propia dirección virtual y solo puede acceder a recursos de usuario o mediante aplicaciones de kernel intermediarias para acceder a recursos del kernel.

