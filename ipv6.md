# Roteador

 ```ios
R> enable
R(config)# config terminal
R(config)# ipv6 unicast-routing 
R(config)# interface fa 0/1
R(config-if)# ipv6 enable
R(config-if))# ipv6 address 2001:dbb1:1:1::1/64
R(config-if)# no shut
R(config-if)# exit
 ```

## ativar o rip

### Na interface

```ios
R(config-if)# ipv6 rip nrede enable
```

### Na configuração global 

Onde *nrede* é uma palavra chave

 ```ios
#R (config) # ipv6 router rip nrede
 ```
