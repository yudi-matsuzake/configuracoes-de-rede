# Protocolos da camada 2

## Analogia da diferença do PAP e CHAP

``Pense como a diferença do ssh e do telnet, analogamente``

## PPP com PAP

```ios
R1 (config)#	username R2
		password utfpr
R1 (config)# inter se 0/0/0
R1 (config-if)# encapsulation PPP
R1 (config-if)# ppp pap security R1 password utfpr
```

## PPP com CHAP

```ios
R2 (config)# interface serial 0/1/0
R2 (config)# encapsulation ppp
R2 (config)# ppp authentication chap
R2 (config)# exit
R2 (config)# username R2 password utfpr
R2 (config)# username R3 password utfpr
```

## HDLC

```ios
R3 (config)# interface serial 0/0/0
R3 (config-if)# encapsulation hdlc
```
