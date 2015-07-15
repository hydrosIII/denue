#!/bin/bash


## este script tiene que correr en el mismo directorio donde estan los archivos.
### revisar que los archivos zip sean los que quieres.

### para revisar los heders, esta este

# for z in *.zip; do unzip -p $z; done | grep  "Fecha de inc" | wc -l

## descomprime todos los archivos mediante un for, y filtra los headers.
for z in *.zip; do unzip -p $z; done | grep -v "Fecha de inc" > granarchivo.csv
### agrega los headers al archivo nuevo. cambiar de donde toman los headers.
(head -1 DENUE_INEGI_21_.csv ; cat granarchivo.csv) > granarchivosolito.csv
