# Acceso remoto Mac → Windows

Esta es la configuración elegida para usar el sobremesa Windows desde el Mac:

| Equipo | Función | Aplicación |
|---|---|---|
| Windows | Host: captura pantalla, audio, teclado, ratón y juegos | Sunshine |
| Mac | Cliente: recibe el streaming y envía controles | Moonlight |
| Ambos | Red privada entre equipos | Tailscale |

RDP no forma parte de esta configuración. No se abre el puerto 3389 ni se configura port forwarding en el router.

## Windows

1. Instala [Tailscale para Windows](https://tailscale.com/docs/install/windows) e inicia sesión con la misma cuenta o tailnet que usas en el Mac.
2. Instala el MSI x64 recomendado de [Sunshine](https://docs.lizardbyte.dev/projects/sunshine/latest/md_docs_2getting__started.html).
3. Abre `https://localhost:47990` en el navegador de Windows.
4. En el primer arranque, crea el usuario y la contraseña de Sunshine. No los guardes en este repositorio ni los compartas por chat.
5. En Sunshine, conserva o añade la aplicación **Desktop** para poder controlar todo el escritorio. Después podrás añadir el launcher o el juego de Minecraft.
6. Deja activos los servicios de Tailscale y Sunshine cuando quieras conectarte desde el Mac.

La advertencia del certificado HTTPS de Sunshine en `localhost` es esperable porque usa un certificado autofirmado. La interfaz web solo debe exponerse dentro de la red de confianza/Tailscale.

## Mac

1. Confirma que Tailscale está conectado al mismo tailnet que Windows.
2. Instala [Moonlight para macOS](https://github.com/moonlight-stream/moonlight-qt/releases).
3. Abre Moonlight y añade el PC de Windows. Si no aparece automáticamente, usa el nombre del dispositivo o la IP de Tailscale que muestra el cliente de Tailscale; no uses una IP pública.
4. Selecciona el PC en Moonlight. Moonlight mostrará un PIN.
5. Abre la página de Sunshine en Windows, entra en la sección **PIN**, introduce ese PIN y confirma el emparejamiento.
6. Inicia **Desktop** desde Moonlight. Desde ahí podrás abrir el launcher y Minecraft en el sobremesa.

## Comprobaciones rápidas

- Ambos equipos aparecen como conectados en Tailscale.
- Sunshine aparece como servicio en ejecución en Windows.
- Moonlight puede ver o añadir el PC mediante su dirección de Tailscale.
- El emparejamiento se completa con el PIN de Moonlight en Sunshine.
- No hay credenciales, tokens, IPs privadas ni puertos del router escritos en Git.

Si el PC no aparece, comprueba primero Tailscale en ambos equipos, añade manualmente la IP de Tailscale en Moonlight y verifica que Sunshine siga ejecutándose. La guía oficial de Sunshine explica también cómo añadir aplicaciones y repetir el emparejamiento.

## Referencias oficiales

- [Tailscale: instalación en Windows](https://tailscale.com/docs/install/windows)
- [Sunshine: instalación y configuración](https://docs.lizardbyte.dev/projects/sunshine/latest/md_docs_2getting__started.html)
- [Moonlight: releases oficiales](https://github.com/moonlight-stream/moonlight-qt/releases)
