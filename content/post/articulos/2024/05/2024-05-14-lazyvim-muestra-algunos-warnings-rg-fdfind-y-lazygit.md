---
author: fideo
date: "2024-05-14T14:55:33Z"
excerpt: ""
id: 52283
post_format: []
status: publish
tags:
- linux
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: LazyVim muestra algunos Warnings rg, fdfind y lazygit
type: post
url: /2024/05/lazyvim-muestra-algunos-warnings-rg-fdfind-y-lazygit.html
---

Si al realizar un checkhealth en LazyVim muestra algunos Warnings rg, fdfind y lazygit la solución a estos tres warnings que no está instalado ni el rg, ni el fdfind ni el lazygit lo que se debe realizar son los siguientes pasos:

Primero debemos realizar un checkhealth e ir verificando a cada paso que realizamos si se va subsanando el warning o advertencia sobre ese inconveniente.  
Por eso abrimos el LazyVim o neovim y ejecutamos el comando `:checkhealth` nos mostrará una advertencia como la siguiente:

![Warning LazyVim rg, fdfind y lazyfit no están instalados.](/assets/uploads/2024/05/warning_LazyVim.jpg)
Warning LazyVim rg, fdfind y lazyfit no están instalados. Para solucionar el primer warning o advertencia debemos ejecutar el siguiente comando:

```
sudo apt install ripgrep
```

Luego para solucionar el problema de fdfind debemos ejecutar el siguiente comando:

```
sudo apt install fd-find
```

Por último para solucionar la advertencia o warning de lazygit debemos realizar los siguiente pasos, en mi caso uso la distribución de Ubuntu y mis pasos son:

```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

Si tu distribución es otra o usas otro tipo de sistema operativo te recomiendo que visites el siguiente link donde explica como hacerlo para cada uno d ellos. <a href="https://github.com/jesseduffield/lazygit?tab=readme-ov-file#binary-releases" target="_blank">https://github.com/jesseduffield/lazygit?tab=readme-ov-file#binary-releases</a>

Espero que hayas podido solucionar tu problema de LazyVim muestra algunos Warnings rg, fdfind y lazygit [también tengo varias entradas mas que hablan sobre VIM por verla haciendo click acá](/tags/#vim)
