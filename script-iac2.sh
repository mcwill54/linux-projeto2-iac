echo "Atualizando servidor"
sudo apt update && sudo apt upgrade -y
echo "Instalando Apache"
sudo apt install apache2 -y
echo "Instalando unzip"
sudo apt install unzip -y
echo "Baixando aplicação e copiando e descompactando no diretório /tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip main.zip
echo "Copiando arquivos do site descompactado para o diretório padrão do apache"
cd linux-site-dio-main && cp * -R /var/www/html
echo "Fim"
