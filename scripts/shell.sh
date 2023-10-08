# Início do trabalho
echo "Trabalho de S107 iniciado"

# Roda a notificação em paralelo
notify-send "Notificação em paralelo rodando" &

# Executa o job
./job.sh

# Fim do trabalho
echo "Teste finalizado"
sudo apt-get install mailutils
echo "Enviando o e-mail do trabalho S107" | mail -s "Trabalho S107" ${EMAIL_LIST}  