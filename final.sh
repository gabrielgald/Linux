#!/bin/bash
menu1=0
#menu2=0
#menu3=0
#menu4=0
#menu5=0
#menu6=0
#menu7=0
#s=0
#n=1
data=`date +%d-%m-%Y`
echo "Bem-vindo ao Menu Principal"
while [ $menu1 -ne '7' ]
do
	menu2=0
	menu3=0
	menu4=0
	menu5=0
	menu6=0
	menu7=0
	echo ""
	echo "1 - Backup"
	echo "2 - Diretório"
	echo "3 - Gerenciamento do Servidor"
	echo "4 - Grupo"
	echo "5 - Pacotes"
	echo "6 - Usuário"
	echo "7 - Sair"
	echo ""
	echo "Informe o número do Tópico: " ; read menu1
# echo "$menu1"
#  clear
#sleep 3s
	clear
	case $menu1 in 
  		
  		1)  
			clear
	     	while [ $menu2 -ne '3' ]
	     	do
		        echo "_________________________________________"
		        echo ""
		        echo "	         BACKUP"
		        echo ""
		        echo "1 - Backup Simples."
		        echo "2 - Backup com Arquivamento e Compactado."
		        echo "3 - Voltar ao Menu Principal."
		        echo ""
		        echo "Informe a opção desejada: " ; read menu2
		        echo "________________________________________________"
		        case $menu2 in 
		    
		          	1) 
						
			            clear
			            echo "Backup simples."
			            echo "Informe o diretório que queria fazer backup: " ; read DirIn
			            echo "Informe o lugar onde queria salvar o backup: " ; read DirOut
			            echo "Informe o nome do arquivo que deseja salvar o backup:" ; read DirSave
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	mkdir -p $DirOut
			            	cp -R  $DirIn $DirOut/"$data"_$DirSave && echo "Backup Realizado com Sucesso!"
			            fi
				    ;;

			        2)  
						clear
			            echo "Backup Arquivado e Compactado."
			            echo "Informe o diretório que deseja fazer backup: " ; read DirIn
			            echo "Informe o lugar onde deseja salvar o backup: " ; read DirOut
			            echo "Informe o nome do arquivo que deseja salvar o backup:" ; read DirSave
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	mkdir -p $DirOut
			            	tar -cz $DirIn -f $DirOut/"$data"_$DirSave.tar.gz && echo "Backup Realizado com Sucesso!"
			            fi
			        ;;

			        3)
			        
			        ;;
			        
			        *) 
						echo "Valor invalido!"
        		esac
      		done
    	;;

    	2) 
			clear
		      while [ $menu3 -ne '11' ]
		      do
		        echo "________________________________________"
		        echo ""
		        echo "	       DIRETORIO"
		        echo ""
		        echo "1 - Criar Diretório."
		        echo "2 - Apagar Diretório."
		        echo "3 - Listar Diretório."
		        echo "4 - Listar Arquivos e Diretórios ocultos."
		        echo "5 - Renomear Diretório ou Arquivo."
		        echo "6 - Criar Arquivo."
		        echo "7 - Apagar Arquivo."
		        echo "8 - Alterar permissão do Diretório."
		        echo "9 - Alterar permissão do Arquivo."
		        echo "10 - Abrir arquivo com editor de texto"
		        echo "11 - Para voltar ao Menu Principal."
		        echo ""
		        echo "Informe a opção desejada: " ; read menu3
		        echo ""
		        echo "______________________________________"
		        echo ""
		        case $menu3 in

		        	1) 
						
						clear
			            echo "Criar Diretório."
			    		echo ""
			    		echo "Digite o diretorio que deseja criar (Obs: caso o caminho não exista ele mesmo assim criará o caminho completo): " ; read Dircre
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	mkdir -p $Dircre && echo "Diretório criado com Sucesso!"
			            fi
			        ;;

			        2) 
						clear
			            echo "Apagar Diretório."
			            echo ""
			            echo "Digite o nome do Diretório que deseja remover: " ; read Dirrem
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	rm -R $Dirrem && echo "Diretório Removido!"
			            fi
			        ;;

					3) 
						clear
			            echo "Listar Diretório."
			            echo ""
			            echo "Digite o nome do Diretório que deseja listar: " ; read Dirlis
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	ls -l $Dirlis && echo "Diretório listado com Sucesso!"
			            fi
			        ;;

			        4) 
						clear
			            echo "Listar Arquivos e Diretório ocultos."
			            echo ""
			            echo "Digite o nome do Diretório que deseja listar os arquivos ocultos: " ; read Dirliso
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	ls -l $Dirliso && echo "Arquivos/Diretórios listados com Sucesso!"
			            fi
			        ;;

			        5) 
						clear
			            echo "Renomear Diretório ou Arquivo."
			            echo ""
			            echo "Digite o nome do Diretório/Arquivo que deseja Renomear: " ; read Dirren
			            echo "Digite o nome do Diretório/Arquivo que deseja salvar o nome: " ; read Dirrens
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	mv $Dirren $Dirrens && echo "Diretório/Arquivo Renomeado com Sucesso!"
			            fi
			        ;;

		          	6) 
						clear
			            echo "Criar Arquivo."
			            echo ""
			            echo "Digite o nome do Arquivo que deseja criar: " ; read Arqcre
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			             	touch $Arqcre && echo "Arquivo Criado com Sucesso!"
			            fi
			        ;;

		          	7) 
						clear
			            echo "Remover Arquivo."
			            echo ""
			            echo "Digite o nome do Arquivo que deseja remover: " ; read Arqrem
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	rm $Arqrem && echo "Arquivo Removido com Sucesso!"
			            fi
			        ;;

		            8) 
						clear
			            echo "Alterar permissão do Diretório."
			            echo ""
			            echo "Deseja alterar Recursivamente a permissão do Diretório?(s/n)." ; read opcao
			            if [ $opcao = 's' ]
			            then
				            echo ""
				            echo "Digite o nome do Diretório que deseja alterar a permissão recursivamente: " ; read Dir1
				            echo "Escolha a opção corresponde a permissão desejada"
				            echo "0 - Sem permissão."
				            echo "1 - Execução."
				            echo "2 - Escrita."
				            echo "3 - Escrita e Execução."
				            echo "4 - Leitura."
				            echo "5 - Leitura e Execução."
				            echo "6 - Leitura e Escrita."
				            echo "7 - Permissão total."
				            echo "Digite a permissão correspondente ao Usuário: " ; read Use
				            echo "Digite a permissão correspondente ao Grupo: " ; read Gro
				            echo "Digite a permissão correspondente ao Outros: " ; read Oth
				            echo "Deseja realmente executar essa função(s/n)?" ; read opcao1
				            	if [ $opcao1 = 's' ]
			              		then
			                		chmod -R "$Use""$Gro""$Oth" $Dir1 && echo "Permissão alterado com Sucesso!"
			              		fi
			            else
				            echo ""
				            echo "Digite o nome do Diretório que deseja alterar a permissão: " ; read Dir2
				            echo "Escolha a opção corresponde a permissão desejada."
				            echo "0 - Sem permissão."
				            echo "1 - Execução."
				            echo "2 - Escrita."
				            echo "3 - Escrita e Execução."
				            echo "4 - Leitura."
				            echo "5 - Leitura e Execução."
				            echo "6 - Leitura e Escrita."
				            echo "7 - Permissão total."
				            echo "Digite a permissão correspondente ao Usuário: " ; read Use1
				            echo "Digite a permissão correspondente ao Grupo: " ; read Gro1
				            echo "Digite a permissão correspondente ao Outros: " ; read Oth1
				            echo "Deseja realmente executar essa função(s/n)?" ; read opcao2
				            if [ $opcao1 = 's' ]
				            then
				            	chmod "$Use1""$Gro1""$Oth1" $Dir2 && echo "Permissão alterado com Sucesso!"
				            fi
			            fi
			        ;;

		          	9) 
						clear
			            echo "Alterar permissão do Arquivo."
			            echo ""
			            echo "Digite o nome do diretorio em que se encontra o arquivo: " ; read Loc
			            echo "Digite o nome do Arquivo que deseja alterar a permissão: " ; read Arq
			            echo "Escolha a opção corresponde a permissão desejada"
			            echo "0 - Sem permissão."
			            echo "1 - Execução."
			            echo "2 - Escrita."
			            echo "3 - Escrita e Execução."
			            echo "4 - Leitura."
			            echo "5 - Leitura e Execução."
			            echo "6 - Leitura e Escrita."
			            echo "7 - Permissão total."
			            echo "Digite a permissão correspondente ao Usuário: " ; read Use
			            echo "Digite a permissão correspondente ao Grupo: " ; read Gro
			            echo "Digite a permissão correspondente ao Outros: " ; read Oth
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	cd $Loc
			            	chmod "$Use""$Gro""$Oth" $Arq && echo "Permissão alterada com Sucesso!"
			            fi
			        ;;
		          	10) 
						clear
						echo "Digite o nome do Arquivo que deseja editar" ; read Arquivo
						echo "1 - nano"
						echo "2 - vi"
						echo "Qual editor deseja usar, digite a opcao desejada:" ;	read editor
						case $editor in
		        	
		        			1)
								if [ $opcao = 's' ]
					            then
					            	nano $Arquivo
					            fi
							;;
							2) 
								if [ $opcao = 's' ]
					            then
					            	vi $Arquivo
					            fi
							;;
							
							*) echo "Valor invalido!"
							;;
						esac				
					;;
					11)
		          	;;
					*) 
						echo "Valor invalido!"
		        esac
		    done
		;;

    	3) 
			clear
	    	while [ $menu4 -ne '10' ]
	    	do
		        echo "_______________________________"
		        echo ""
		        echo " GERENCIAMENTO DO SERVIDOR"
		        echo ""
		        echo "1 - Desligar Servidor"
		        echo "2 - Reiniciar Servidor"
		        echo "3 - Logoff"
		        echo "4 - Reiniciar Serviço"
		        echo "5 - Parar Serviço"
		        echo "6 - Iniciar Serviço"
		        echo "7 - Ver Status do Serviço"
		        echo "8 - Alterar IP do Servidor"
		        echo "9 - Verificar IP de Servidor"
		        echo "10 - Voltar ao Menu Principal"
		        echo ""
		        echo "Informe a Opção Desejada"; read menu4
		        echo "_____________________________________"
		        echo ""

		        case $menu4 in
		        	
		        	1) 
						clear
		        		echo "Desligando Servidor"
		        		echo "Deseja realmente executar essa função(s/n)?"; read opcao
		            	if [ $opcao = 's' ]
			            then
			            	init 0
			            fi
		         	;;
		          	2) 
						clear
			            echo "Reiniciar Servidor"
			        	echo "Deseja realmente executar essa função(s/n)?"; read opcao
			            if [ $opcao = 's' ]
			            then
			            	reboot
			            fi
		          	;;
		          	3) 
						clear
			            echo "Logoff"
			        	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			        	if [ $opcao = 's' ]
			            then
			            	logout	
			            fi
			        ;;
			        4) clear
				        echo "Reiniciar Serviço"
			        	echo "Digite o nome do serviço a ser REINICIADO. Ex: bind9" ; read SER
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	/etc/init.d/$SER restart
			            fi
		        	;;
		          	5) 
						clear
			        	echo "Parar Serviço"
			        	echo "Digite o nome do serviço a ser PARADO. Ex: bind9" ; read PAR
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	/etc/init.d/$PAR stop
			            fi
		          	;;
		          	6) 
						clear
			            echo "Iniciar Serviço"
			            echo "Digite o nome do serviço a ser Iniciado. Ex: bind9" ; read INI
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	/etc/init.d/$INI start
			            fi
		          	;;
		          	7) 
						clear
			            echo "Status do Serviço"
			            echo "Digite o nome do serviço para visualizar o Status do mesmo. Ex: bind9" ; read STA
			           	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	/etc/init.d/$STA status
			            fi
		          	;;
		          	8)	
		          		clear
		          		echo "Digite a interface que deseja Alterar o IP" ; read interface
		          		echo "Digite o IP" ; read IP
		          		echo "Digite a Mascara de rede" ; read Mask
		          		echo "Digite o Gateway" ; read Gateway
		          		echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	ifconfig $interface down
			            	ifconfig $interface $IP netmask $Mask up && route add default gw $Gateway && echo "IP Alterado com Sucesso!"
			            #	/etc/init.d/networking restart 
			            fi
						
		          	;;
		          	9)
						clear
			            echo "Verificando IP do Servidor"
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	ip a
			            fi
		          	;;
		          	10)
		          	;;
		          	*) 
						echo "Valor Informado Inválido!"
		        esac
	    	done
	    ;;
    	
    	4) 
			clear
	    	while [ $menu5 -ne '4' ]
	      	do
		        echo "__________________________________"
		        echo ""
		        echo " 	     GRUPO"
		        echo ""
		        echo "1 - Criar grupo."
		        echo "2 - Remover grupo."
		        echo "3 - Alterar nome do grupo."
		        echo "4 - Para voltar ao Menu Principal."
		        echo ""
		        echo "Informe a opção desejada"; read menu5
		        echo "______________________________________"
		        echo ""
		        case $menu5 in

			    	1) 
						clear
			            echo "Digite o nome do grupo que deseja criar"; read Groadd
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	addgroup $Groadd && echo "Grupo criado com Sucesso!"
			            fi
			          ;;
			        2) 
						clear
			            echo "Digite o nome do grupo que deseja remover"; read Grorem
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	delgroup $Grorem && echo "Grupo removido com Sucesso!"
			            fi
			          ;;
			        3) 
						clear
			            echo "Digite o nome do grupo que deseja alterar"; read Groalt
			            echo "Digite o novo nome do grupo"; read Gronov
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	groupmod -n $Gronov $Groalt && echo "Nome do grupo alterado com Sucesso!"
			            fi
			          ;;
			        4)
			        ;;
			        *) 
						echo "Valor Informado Inválido!"
			    esac
			done
    	;;
    	5) 
			clear
		    while [ $menu6 -ne '5' ]
		    do
		        echo "___________________________________"
		        echo ""
		        echo " 	     PACOTES"
		        echo ""
		        echo " 1 - Instalar Pacote/Serviço"
		        echo " 2 - Desinstalar Pacote/Serviço"
		        echo " 3 - Atualizar Lista de Pacotes"
		        echo " 4 - Atualizar Pacotes Instalados"
		        echo " 5 - Voltar ao Menu Principal"
		        echo ""
		        echo "Informe a Opção Desejada" ; read menu6
		        echo "___________________________________"
		        echo ""
		        case $menu6 in

		        	1) 
						clear
			        	echo "1 - Para Instalar - SSH"
			            echo "2 - Para Instalar - FTP Server"
			            echo "3 - Para Instalar - DHCP Server"
			            echo "4 - Para Instalar - DNS Server"
			            echo "5 - Para Instalar - VPN"
			            echo "6 - Para Instalar - PROXY Server"
			            echo "7 - Para Instalar - SAMBA"
			            echo "8 - Para Instalar - LOG"
			            echo "9 - Para Instalar - PRINTER Server"
			            echo "10 - Para Instalar um Pacote que não se encontra na lista acima"
			            echo "Informe a Opção Desejada" ; read PAC
		            	case $PAC in
			            	
			            	1) 
								clear
				                echo "Instalando SSH"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install ssh -y
				                fi
			              	;;
				            2) 
								clear
				                echo "Instalando FTP"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install proftpd -y
				                fi
				            ;;
				            3) 
								clear
				                echo "Instalando DHCP Server"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install isc-dhcp-server -y
				                fi
				            ;;
				            4) 
								clear
				                echo "Instalando DNS"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install bind9 -y
				                fi
				            ;;
				            5) 
								clear
				                echo "Instalando VPN"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install openvpn -y
				                fi
				            ;;
				            6) 
								clear
				                echo "Instalando PROXY Server"
				              	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install squid3 -y
				                fi
				            ;;
				            7) 
								clear
				                echo "Instalando SAMBA"
				              	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install samba -y
				                fi
				            ;;
				            8) 
								clear
				                echo "Instalando LOG Server"
				              	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install syslog -y
				                fi
				            ;;
				            9) 
								clear
				                echo "Instalando PRINTER Server"
				              	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install cups -y
				                fi
				            ;;
				            10) 
								clear
				                echo "Informe o nome do Pacote a ser Instalado"; read install
				              	echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get install $install -y
				                fi
              				;;
              				*) echo "Valor Informado Inválido"
            			esac
			        ;;
			        2) 
						clear
			            echo "________________________________________________________________"
			            echo ""
			            echo "1 - Para Desinstalar - SSH"
			            echo "2 - Para Desinstalar - FTP"
			            echo "3 - Para Desinstalar - DHCP Server"
			            echo "4 - Para Desinstalar - DNS"
			            echo "5 - Para Desinstalar - VPN"
			            echo "6 - Para Desinstalar - PROXY Server"
			            echo "7 - Para Desinstalar - SAMBA"
			            echo "8 - Para Desinstalar - LOG"
			            echo "9 - Para Desinstalar - PRINTER Server"
			            echo "10 - Para Desinstalar um Pacote que não se encontra na lista acima"
			            echo "11 - Para Voltar ao Gerenciador de Pacotes"
			            echo "12 - Para Volta ao Menu Principal"
			            echo ""
			            echo "Informe a Opção Desejada" ; read OPTDESINSTALL
			            echo "________________________________________________________________"
			            echo ""
		            	
		            	case $OPTDESINSTALL in
		              		1) 
								clear
				                echo "Desinstalando SSH"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge ssh -y
				                fi
		              		;;
		              		2) 
								clear
				                echo "Desinstalando FTP"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge proftpd -y
				                fi
				            ;;
		             		3) 
							
								clear
				                echo "Desinstalando DHCP Server"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge isc-dhcp-server -y
				                fi
				            ;;
				            4) 
								clear
				                echo "Desinstalando DNS"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                  apt-get purge bind9 -y
				                fi
				            ;;
				            5) 
								clear
				                echo "Desinstalando VPN"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge openvpn -y
				                fi
				            ;;
				            6) 
								clear
				                echo "Desinstalando PROXY Server"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge squid3 -y
				                fi
				            ;;
				            7) 
								clear
				                echo "Desinstalando SAMBA"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge samba -y
				                fi
		              		;;
		              		8) 
								clear
				                echo "Desinstalando LOG Server"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge syslog -y
				                fi
		              		;;
				            9) 
								clear
				                echo "Desinstalando PRINTER Server"
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge cups -y
				                fi
				            ;;
				            10) 
								clear
				                echo "Informe o nome do Pacote a ser Desinstalando"; read desinstalar
				                echo "Deseja realmente executar essa função(s/n)?" ; read opcao
				                if [ $opcao = 's' ]
				                then
				                	apt-get purge $desinstalar -y
				                fi
				            ;;
				            *)  
								echo "Valor Informado Inválido"
            			esac
		          	;;
		          	3) 
						clear
			            echo "Atualizar lista de Pacotes"
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            apt-get update -y
			          	;;
		          	4) 
						clear
			            echo "Atualizar Pacotes Instalados"
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			            apt-get upgrade -y
		         	;;
		          	5)
		          	;;
		          	*)  echo "Valor Informado Inválido"
        		esac
      		done
    	;;
    	6) 
			clear
      		while [ $menu7 -ne '9' ]
      		do
		        echo "_______________________________________________"
		        echo ""
		        echo " 	     	 USUÁRIO"
		        echo ""
		        echo "1 - Criar Usuário (Padrão)"
		        echo "2 - Remover Usuário"
		        echo "3 - Trocar senha do Usuário"
		        echo "4 - Bloquear conta do Usuário"
		        echo "5 - Desbloquear conta do Usuário"
		        echo "6 - Adicionar Usuário a um grupo"
		        echo "7 - Remover Usuário de algum grupo"
		        echo "8 - Criar Usuário (Definindo os parametros)"
		        echo "9 - Voltar ao Menu Principal"
		        echo ""
		        echo "Digite a opção desejada" ; read menu7
		        echo "_______________________________________________"
		        case $menu7 in

		      		1)
						clear
			            echo "Digite o nome do Usuário que deseja criar:" ; read USER
			            echo "Deseja realmente executar essa função(s/n)?" ; read opcao
			          	if [ $opcao = 's' ]
			          	then
			            	adduser $USER && echo "Usuário criado com Sucesso!"
			          	fi
		          	;;
		          	2) 
						clear
			            echo "Digite o nome do usuário que deseja remover:"; read USERREM
			            echo "Deseja remover a home do usuário "$USERREM"(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	echo "Deseja realmente executar essa função.(s/n)?" ; read opcao1
			            	if [ $opcao1 = 's' ]
			              	then
			                	userdel -r $USERREM && echo "Usuário removido com Sucesso!"
			              	fi
			            else
			              echo "Deseja realmente executar essa função.(s/n)?" ; read opcao2
			                if [ $opcao = 's' ]
			                then
			                	userdel $USERREM && echo "Usuário removido com Sucesso!"
			                fi
			            fi
					;;
			        3) 	
						clear
			            echo "Digite o nome do Usuário que deseja alterar a senha:" ; read PAS
			            echo "Deseja realmente executar essa função.(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	passwd $PAS && echo "Senha alterada com Sucesso!"
			            fi

			        ;;
			        4) 
						clear
			            echo "Digite o nome do Usuário que deseja bloquear:" ; read BLO
			            echo "Deseja realmente executar essa função.(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	usermod -L $BLO && echo "Usuário bloqueado com Sucesso!"
			            fi
			        ;;
			        5) 
						clear
			            echo "Digite o nome do Usuário que deseja desbloquear:" ; read DES
			            echo "Deseja realmente executar essa função.(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	usermod -U $DES && echo "Usuário desloqueado com Sucesso!"
			            fi
			        ;;
			        6) 
						clear
			            echo "Digite o nome do Usuário que deseja adicionar a um grupo:" ; read USERG
			            echo "Digite o nome do Grupo que deseja adicionar o Usuário:" ; read UGRU
			            echo "Deseja realmente executar essa função.(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			            	gpasswd -a $USERG $UGRU && echo "Usuário adicionado com Sucesso!"
			            fi
			        ;;
			        7) 
						clear
			            echo "Digite o nome do Usuário que deseja remover de algum grupo:" ; read USERREMO
			            echo "Digite o nome do grupo que queria remover o usuario:" ; read REMGRO
			            echo "Deseja realmente executar essa função.(s/n)?" ; read opcao
			            if [ $opcao = 's' ]
			            then
			             	gpasswd -d $USERREMO $REMGRO && echo "Usuário removido com Sucesso!"
			            fi
			        ;;
			        8) 
						clear
						echo "Digite o nome do Usuário que deseja criar:" ; read user
						useradd $user || exit
						echo "Deseja Alterar a Home do Usuário(s/n)?" ; read opcao
						if [ $opcao = 's' ]
						then
							echo "Digite o caminho da home do Usuário" ; read home  
							usermod -d $home $user && mkdir -p $home 
						  	echo "Deseja criar a home para o Usuário(s/n)?" ; read opcao
							if [ $opcao = 'n' ]
							then
								rm -R $home
							fi
						else 
							echo "Deseja criar a home para o Usuário(s/n)?" ; read opcao
							if [ $opcao = 's' ]
							then
								mkdir /home/$user
							fi
						fi
						echo "Deseja setar uma shell para o Usuário(s/n)?" ; read opcao
						if [ $opcao = 's' ]
						then
							echo "Digite o número correspondente, para ecolher a shell:"
							echo "1 - /bin/bash"
							echo "2 - /bin/sh"
							echo "3 - /bin/false (Usuário ficara sem Shell)" ; read	shell
							case $shell in

						    	1) 
									usermod -s /bin/bash $user
								;;
								2) 
									usermod -s /bin/sh $user
								;; 
								3)
									usermod -s /bin/false $user
							esac

						fi	
						echo "Deseja Colocar o Usuário em algum grupo secundario(s/n)?" ; read opcao
						if [ $opcao = 's' ]
						then
							echo "Digite o nome do Grupo que deseja adicionar o Usuário (O grupo padrão do usuário ja será criada, está opção é para grupos segundarios.):" ; read grupo
							addgroup $user $grupo
						fi
						echo "Deseja setar uma senha para Usuário(s/n)?" ; read opcao
						if [ $opcao = 's' ]
						then
							echo "Digite a senha:" ; read senha
							echo -e "$senha\n$senha" | (passwd $user)
						fi

						echo "Usuário criado com Sucesso!"
			        ;;
		 	          
        			*) 
						echo "Valor Informado Inválido"
       			esac
      		done
    	;;
    	7)
		;;
    	*) 
			echo "Valor invalido!"
  	esac
done
