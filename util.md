# Útil

Comandos que podem ser úteis no gerenciamento e configuração das redes

**Range de intefaces**

```ios
# interface range fa 0/0-10
```

## Dá pra separar por vírgulas

```ios
# interface range fa 0/1, fa 0/3, fa0/5
```

**Mostra configuração geral**

```ios
# show running-config
```

**Mostra as vlans e suas intefaces designadas**

```
# show vlan brief
```

```
# show vlan
```


**Mostra a tabela MAC | INTERFACE do switch**
```
show mac-addres table
```

**Hostname**

```
#hostname zoera
```

**DEBUG**

```ios
debug <o que você quer debugar>
```

*exemplos*

```ios
debug arp
debug dhcp
debug port-security
debug all
```

OBS.: `debug all` não é recomendado

**Sair do debug**

```ios
undebug <o que você quer desbugar>
```

```ios
undebug arp
undebug dhcp
undebug ppp
undebug all
```

## Gravações/exclusões de configuração

`Ram` armazena running-config 

`nVran` armazena startup-config 

`Flash` armazena SO e vlan.dat (conteúdo das vlans) 

### Gravar Ram -> vRam 

```
#copy running-config startup-config 
```
OR 

```
#wr 
```
 
### Apagar tudo: 

```
#erase startup-config 
#delete flash:vlan.dat 
#reload 
```

# Recuperação de dispositivos

## Recuperar senhas

### No roteador

1. Fazer a conexão com o equipamento utilizando o cabo serial e o kermit;

2. Reinicializar fisicamente o roteador;

3. Acessar o modo Rommon no roteador: Após 5 segundos, pressionar simultaneamente as teclas  Ctrl-\l ou Ctrl-\b. Este procedimento interrompe a sequência normal do boot e inicia o Rom Monitor.

```ios
rommon >
```

4. Alterar o registro de configuração para o valor 0x2142. Com isto, na reinicialização do roteador o equipamento não vai carregar a configuração da NVRAM. Com isto as configurações salvas não serão carregadas e não haverá senha para entrar no roteador.

```ios
rommon> confreg 0x2142
rommon> reset
```

5. Apenas digitar *enable*, não precisa digitar a senha

```ios
router> enable
router# copy startup-config running-config
```

* A partir deste ponto toda a configuração da NVRAM estará na RAM e poderá ser alterada, inclusive a senha.

### No switch

1. Desligar o switch da tomada e segurar o botão switch old.

2. Nesse modo, existem 3 comandos:

```ios
flash_init

load_helper

boot
```

* Fazer os comandos nessa ordem, flash\_init, load\_helper, então renomear o arquivo config.text e, então, executar o comando boot:

```ios
flash_init
load_helper
rename flash:config.text flash:config.old
boot
```

* Então você será logado ao sistema normal, como se tivesse comprado agora o dispositivo.

* Renomear, por fim, o arquivo config.old para config.text, depois copiar config.text pra running-config:

```ios
copy flash:config.old flash:config.text
copy flash:config.text system:running-config
```

## IOS apagado

* Setar as configurações de rede do roteador, iniciar servidor tftp, setar o nome do .bin em um servidor tftp, setar ip de servidor tftp e baixar o arquivo pela rede.

* **EXEMPLO**

```ios
rommon > IP_SUBNET_MASK=255.255.255.0
rommon > DEFAULT_GATEWAY=171.68.170.3
rommon > TFTP_FILE=c2600-is-mz.113.2.0
rommon > tftpdn1d
```
