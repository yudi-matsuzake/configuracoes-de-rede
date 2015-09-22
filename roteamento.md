
# EIGRP 1
```ios
R(config)#router eigrp 1
R(config-router)#network 192.168.1.0
R(config-router)#network 200.1.1.0
R(config-router)#end
R#wr
```

# OSPF

*Atenção: a máscara é invertida, i.e., wildmask*

ex: /24 Ao invés de ser 255.255.255.0 é 0.0.0.255

```ios
R(config)# router ospf 1
R(config-router)# network 192.168.1.0 0.0.0.255 area 0
R(config-router)# end
```
