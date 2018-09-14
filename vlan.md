# VLANS

## Criar vlans

```
S(config)# vlan <1-1005>
S(config-vlan)# name avelã
```

## Access Mode

```
S(config-if)# switchport mode access
S(config-if)# switchport access vlan <1-1005>
```

## Trunk Mode

```
S(config-if)# switchport mode trunk
S(config-if)# switchport trunk allowed vlan <1-1005>
```

	Há também os comandos add, all, onde all adiciona uma nova vlan na lista atual, e all adiciona todas.

## Roteamento de vlans

## Sem subintefaces
	
	* 1 interface pra cada vlan

	* Switch -> roteador
	- Mode *acess* e vlan que irá passar pela inteface 

	* Roteador -> Switch
	- Seta o ip da interface pra cada vlan

## Com subintefaces

* Uma interface para várias vlans

* Switch -> roteador

	- Tronco e autorizar todas as vlans daquela interface/

* Roteador -> switch

	- Subinterfaces;

	- Só dá um "no shut" para subir a interface

	- Encapsulation dot1q nas subinterfaces

	- Gateway default de todas as vlans

### Comandos

```
router>enable
router#config terminal
router(config)#interface fa 0/0
router(config-if)#no shutdown
router(config)#interface fa 0/0.10
router(config-if)#encapsulation dot1q 10
router(config-if)#ip address 10.0.0.1 255.0.0.0
router(config-if)#exit
router(config)#interface fa 0/0.20
router(config-if)#encapsulation dot1q 20
router(config-if)#ip address 172.17.0.1 255.255.0.0
router(config-if)#exit
router(config)#interface fa 0/0.30
router(config-if)#encapsulation dot1q 30
router(config-if)#ip address 192.168.1.1 255.255.255.0
```

```
switch>enable
switch#config terminal
switch(config)#vlan 10
switch(config-vlan)#name Funcionarios
switch(config-vlan)#vlan 20
switch(config-vlan)#name Convidados
switch(config-vlan)#vlan 30
switch(config-if)#name Gerencia
switch(config-vlan)#exit
switch(config)#interface fa 0/1
switch(config-if)#switchport mode access
switch(config-if)#switchport mode access
switch(config-if)#switchport access vlan 10
switch(config-if)#exit
switch(config)#interface fa 0/24
switch(config-if)#switchtport mode trunk
switch(config-if)#switchport trunk vlan 10,20,30
```

# IP da vlan para acesso remoto

```  
#interface vlan 20 
#ip address 200.1.1.200 255.255.255.0 
#no shut 
```
