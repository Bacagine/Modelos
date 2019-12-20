# Makefile criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com>
#
# Data de criação: 20/12/2019
# Data da última modificação: dd/mm/aaaa 
#
# Aqui deve vir uma breve esplicação sobre a aplicação
#
# Git Hub: https://github.com/Bacagine/nome_do_repositorio

nome_do_aplicativo: main.o clear_buffer.o developers.o
        gcc -o nome_do_aplicativo main.o clear_buffer.o developers.o
main.o: main.c clear_buffer.h
        gcc -c main.c
#aqui deve vir outros
#arquivos objetos usados
#na aplicação
clear_buffer.o: clear_buffer.c clear_buffer.h
        gcc -c clear_buffer.c
developers.o: developers.c developers.h
        gcc -c developers.c
clean:
        rm -f *.o
realclean: clean
        rm -f lojinha_do_berg
        rm -f *.dat
# Para instalar a aplicação use o terminal \
  como super usuario ou como usuario root \
  e digite o comando make install
#install: \
        mkdir /opt/nome_do_aplicativo \
        cp -r nome_do_aplicativo icons /opt/nome_do_aplicativo \
        cp nome_do_aplicativo.desktop /usr/share/applications \
        chmod +x /usr/share/applications/nome_do_aplicativo.desktop \
#       desktop-file-install /usr/share/applications/nome_do_aplicativo.desktop
#uninstall: \
        rm -rf /opt/nome_do_aplicativo \
        rm -rf /usr/share/applications/nome_do_aplicativo.desktop \
