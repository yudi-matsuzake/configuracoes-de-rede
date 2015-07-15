# Etherchannels

* O administrador deve indicar uma interface para o etherchanel usando o comando channel-group; 

## PAgP vs LACP

* PAgP é da cisco

* LACP IEEE 802.3ad standard

![PAgP vs LACP](imagens/etherchannel/PAgPvsLAcP.png)

## Comandos

- Channel group

- Show etherchannel

- Show pagp

![Etherchannel comandos](imagens/etherchannel/etherchannel1.png)
![Etherchannel comandos](imagens/etherchannel/etherchannel2.png)
![Etherchannel comandos](imagens/etherchannel/etherchannel3.png)

## Configuração

### Ações

![Ações](imagens/etherchannel/acoes.png)

**Comandos**

```ios
Switch(config)# interface range interface slot/port - port
Switch(config-if-range)# channel-protocol {pagp | lacp}
Switch(config-if-range)# channel-group number mode {auto|disirable|on}
```

**Modos**

![Modos](imagens/etherchannel/modos.png)

**Estático**

![Estático](imagens/etherchannel/estatico.png)

**PAgP**

![PAgP](imagens/etherchannel/PAgP.png)

**LACP**

![LACP](imagens/etherchannel/LACP.png)
