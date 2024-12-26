---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2015-01-27T09:34:03Z"
excerpt: 'solución para el mensaje arrojado por consola ll: no se encontró la orden'
id: 845
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: 'll: no se encontró la orden'
type: post
url: /2015/01/ll-no-se-encontro-la-orden.html
---
Cuando uno ejecuta en linea de comnado ll y por consola recibimos un mensaje del tipo ll: no se encontró la orden podemos solucionarlo simplemente realizando lo siguiente

```
alias ll='ls -lah'
```

Si aun esto no resuelve el problema tenemos que realizar esto para reiniciar el .bashrc

```
cp /etc/skel/.bashrc ~
```

ya que el .bashrc se encuentra en el directorio /etc/skel/ ; una vez realizado este paso volvemos a ejecutar el alias ll=’ls -lah’.

Existen varias combinaciones que se pueden realizar con el comando ls acá les dejo las directrices.

```
-a, --all
do not ignore entries starting with .

-A, --almost-all
do not list implied . and ..

--author
with -l, print the author of each file

-b, --escape
print C-style escapes for nongraphic characters

--block-size=SIZE
scale sizes by SIZE before printing them; e.g., '--block-size=M'
prints sizes in units of 1,048,576 bytes; see SIZE format below

-B, --ignore-backups
do not list implied entries ending with ~

-c     with -lt: sort by, and show, ctime (time of last modification of
file status information); with -l: show ctime and sort by  name;
otherwise: sort by ctime, newest first

-C     list entries by columns

--color[=WHEN]
colorize  the  output;  WHEN can be 'never', 'auto', or 'always'
(the default); more info below

-d, --directory
list directories themselves, not their contents

-D, --dired
generate output designed for Emacs' dired mode

-f     do not sort, enable -aU, disable -ls --color

-F, --classify
append indicator (one of */=>@|) to entries

--file-type
likewise, except do not append '*'

--format=WORD
across -x, commas -m, horizontal -x, long -l, single-column  -1,
verbose -l, vertical -C

--full-time
like -l --time-style=full-iso

-g     like -l, but do not list owner

--group-directories-first
group directories before files;

can   be  augmented  with  a  --sort  option,  but  any  use  of
--sort=none (-U) disables grouping

-G, --no-group
in a long listing, don't print group names

-h, --human-readable
with -l and/or -s, print human readable sizes (e.g., 1K 234M 2G)

--si   likewise, but use powers of 1000 not 1024

-H, --dereference-command-line
follow symbolic links listed on the command line

--dereference-command-line-symlink-to-dir
follow each command line symbolic link

that points to a directory

--hide=PATTERN
do not list implied entries matching shell  PATTERN  (overridden
by -a or -A)

--indicator-style=WORD
append indicator with style WORD to entry names: none (default),
slash (-p), file-type (--file-type), classify (-F)

-i, --inode
print the index number of each file

-I, --ignore=PATTERN
do not list implied entries matching shell PATTERN

-k, --kibibytes
default to 1024-byte blocks for disk usage

-l     use a long listing format

-L, --dereference
when showing file information for a symbolic link, show informa?
tion  for  the file the link references rather than for the link
itself

-m     fill width with a comma separated list of entries

-n, --numeric-uid-gid
like -l, but list numeric user and group IDs

-N, --literal
print raw entry names (don't treat e.g. control characters  spe?
cially)

-o     like -l, but do not list group information

-p, --indicator-style=slash
append / indicator to directories

-q, --hide-control-chars
print ? instead of nongraphic characters

--show-control-chars
show nongraphic characters as-is (the default, unless program is
'ls' and output is a terminal)

-Q, --quote-name
enclose entry names in double quotes

--quoting-style=WORD
use quoting style WORD for entry names: literal, locale,  shell,
shell-always, c, escape

-r, --reverse
reverse order while sorting

-R, --recursive
list subdirectories recursively

-s, --size
print the allocated size of each file, in blocks

-S     sort by file size
```

***Enjoy!!!***
