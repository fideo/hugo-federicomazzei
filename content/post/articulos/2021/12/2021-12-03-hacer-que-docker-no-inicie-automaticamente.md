---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-12-03T10:55:05Z"
excerpt: ""
id: 51895
post_format: []
status: publish
tags:
- comando
- docker
- linux
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
title: Hacer que Docker no inicie automáticamente
type: post
url: /2021/12/hacer-que-docker-no-inicie-automaticamente.html
---

Me pasó que necesitaba por un tiempo hacer que docker no inicie automáticamente; es decir, que cuando se reinicia el Servidor las imágenes de docker no se carguen automáticamente.

El proyecto yo lo tenía con docker-compose, pero para esto usé solo los comandos de docker.

Primero chequeo lo que está corriendo con

```
docker ps
```

  
Debería mostrar todas las imágenes que tenemos corriendo

<figure class="wp-block-table is-style-stripes"><table><tbody><tr><td>CONTAINER ID</td><td>IMAGE</td><td>COMMAND</td><td>CREATED</td><td>STATUS</td><td>PORTS</td><td>NAMES</td></tr><tr><td>e1dff1f51add</td><td>grafana/grafana</td><td>“/run.sh”</td><td>5 months ago</td><td>Up 47 seconds</td><td>0.0.0.0:3030-&gt;3000/tcp, :::3030-&gt;3000/tcp</td><td>internetmonitoring\_grafana\_1</td></tr><tr><td>031ec8738933</td><td>prom/prometheus:v2.25.2</td><td>“/bin/prometheus –c…”</td><td>5 months ago</td><td>Up 55 seconds</td><td>0.0.0.0:9090-&gt;9090/tcp, :::9090-&gt;9090/tcp</td><td>internetmonitoring\_prometheus\_1</td></tr><tr><td>5f3eb5b03d57</td><td>prom/node-exporter</td><td>“/bin/node\_exporter …”</td><td>5 months ago</td><td>Up About a minute</td><td>0.0.0.0:9100-&gt;9100/tcp, :::9100-&gt;9100/tcp</td><td>internetmonitoring\_nodeexp\_1</td></tr><tr><td>9bb31e45eb8e</td><td>prom/blackbox-exporter</td><td>“/bin/blackbox\_expor…”</td><td>5 months ago</td><td>Up About a minute</td><td>0.0.0.0:9115-&gt;9115/tcp, :::9115-&gt;9115/tcp</td><td>internetmonitoring\_ping\_1</td></tr><tr><td>7987218a65d9</td><td>miguelndecarvalho/speedtest-exporter</td><td>“python -u exporter.…”</td><td>5 months ago</td><td>Up About a minute</td><td>0.0.0.0:9798-&gt;9798/tcp, :::9798-&gt;9798/tcp</td><td>internetmonitoring\_speedtest\_1</td></tr></tbody></table>

</figure>luego ejecutamos este comando para deshabilitar por ejemplo la primer imagen la de grafana en el caso de arriba

```
docker update --restart no e1dff1f51add
```

  
Y así sucesivamente con todas las imágenes que queremos que NO se inicie al reiniciar nuestro servidor.

El comando sería **docker update –restart no “CONTAINER ID**“

Espero que les sirva.
