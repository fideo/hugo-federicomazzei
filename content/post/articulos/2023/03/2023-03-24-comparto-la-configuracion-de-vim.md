---
author: fideo
categories:
- git
- Linux
- Software
date: "2023-03-24T19:53:12Z"
excerpt: ""
id: 52117
post_format: []
status: publish
tags:
- comando
- git
- github
- linux
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Comparto la configuración de VIM
type: post
url: /2023/03/comparto-la-configuracion-de-vim.html
---

Dejo en el repositorio de github la configuración de VIM, acá podrás encontrar toda la configuración que utilizo para configurar mi **VIM**. Los complementos que utilizo son para el desarrollo de sitios webs y para administración de servidores.

<a href="https://github.com/fideo/vim" target="_blank">https://github.com/fideo/vim</a>

Dentro del repositorio git-hub que compartí en la linea de arriba pueden encontrar varios archivos pero dos son los importantes (los otros son para los videos de youtube) **.vimrc** y **.vimrc.plug** ahí está toda la configuración que uno necesita para dejar vim como se muestran en los videos de <a href="https://www.youtube.com/@FedericoMazzei/videos" target="_blank">youtube</a> (esto puede modificarse con el paso del tiempo)

Para que los plugins que dejo a continuación funcionen tienen que tener instalado vim-plug. Si quieren pueden buscar la información oficial de como se instala este plugin, sino pueden ejecutar este comando estando parados en la raíz de su home.

```
cd ~
```

Luego ejecutan esto en la linea de comando

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

> IMPORTANTE!!!
> 
> <cite>Seguramente cuando termines de instalar todo lo anterior te vas a encontrar con un mensaje de error de vim-youcompleteme no te preocupes, [en este link de dejo como solucionarlo.](/2023/03/vim-youcompleteme/)</cite>

Estos son algunos de los complementos que tengo instalado en mi **VIM** que utilizo habitualmente:

<a href="https://github.com/vim-airline" target="_blank">‘vim-airline/vim-airline’</a>  
  
<a href="https://github.com/vim-airline/vim-airline-themes" target="_blank">‘vim-airline/vim-airline-themes’</a>  
  
<a href="https://github.com/nanotech/jellybeans.vim" target="_blank">‘nanotech/jellybeans.vim’</a>  
  
<a href="https://github.com/preservim/nerdtree" target="_blank">‘scrooloose/nerdtree’</a>  
  
<a href="https://github.com/ryanoasis/vim-devicons" target="_blank">‘ryanoasis/vim-devicons’</a>  
  
<a href="https://github.com/jiangmiao/auto-pairs" target="_blank">‘jiangmiao/auto-pairs’</a>  
  
<a href="https://github.com/alvan/vim-closetag" target="_blank">‘alvan/vim-closetag’</a>  
  
<a href="https://github.com/tpope/vim-surround" target="_blank">‘tpope/vim-surround’</a>  
  
<a href="https://github.com/ycm-core/YouCompleteMe" target="_blank">‘valloric/youcompleteme’</a>  
  
<a href="https://github.com/honza/vim-snippets" target="_blank">‘honza/vim-snippets’</a>  
  
<a href="https://github.com/othree/javascript-libraries-syntax.vim" target="_blank">‘othree/javascript-libraries-syntax.vim’</a>  
  
<a href="https://github.com/mattn/emmet-vim" target="_blank">‘mattn/emmet-vim’</a>  
  
<a href="https://github.com/SirVer/ultisnips" target="_blank">‘SirVer/ultisnips’</a>  
  
<a href="https://github.com/Yggdroot/indentLine" target="_blank">‘yggdroot/indentline’</a>  
  
<a href="https://github.com/tpope/vim-fugitive" target="_blank">‘tpope/vim-fugitive’</a>  
  
<a href="https://github.com/airblade/vim-gitgutter" target="_blank">‘airblade/vim-gitgutter’</a>

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="350" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/UlX5b6NDet8?feature=oembed" title="Comparto la configuración de VIM" width="100%"></iframe>
