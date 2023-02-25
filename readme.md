#Guia para configurar wsl de forma autonoma#
*opcion 1 copiar los bash de mi nube cloud*

`línea de código`
```bash
cd
mkdir configureWSL
cp mnt/c/Users/hecto/OneDrive/DEVELOP/configureWSL/configureWSL-PT1.sh ~/configureWSL/
cp mnt/c/Users/hecto/OneDrive/DEVELOP/configureWSL/configureWSL-PT2.sh ~/configureWSL/
revisar con nano ambos archivos antes de ejecutarlos (revisar el nombre de usuario, las rutas y correo de git)
```

*opcion 2 clonar el repositorio*

`línea de código`
```bash
cd 
mkdir configureWSL
cd configureWSL
git clone https://github.com/hectorslqm/configureWSL.git
```

Luego procedemos a hacer ejecutables los scripts

*volvemos ejecutables los scripts*
`línea de código`
```bash
chmod +x configureWSL/configureWSL-PT1.sh
chmod +x configureWSL/configureWSL-PT2.sh
```

*ejecutamos los scripts*
`lìnea de código`
```bash

configureWSL/configureWSL-Part1.sh
configureWSL/configureWSL-Part2.sh
```
listo 😁
