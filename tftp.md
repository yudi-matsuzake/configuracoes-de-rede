# TFPT

* Arquivo de configuração do TFTP:

`/etc/default/tftpd-hpa`

* Pasta padrão do servidor tftp:

`/home/tftp/`

* Iniciar, reinicializar ou desligar o deamon do TFTP:

```shell
/etc/init.d/tftpd-hpa {start|restart|stop|force-reload|status}
```

* *Exemplo*: copiar o arquivo running-config do sistema para o servidor

```ios
copy system:running-config tftp
```
