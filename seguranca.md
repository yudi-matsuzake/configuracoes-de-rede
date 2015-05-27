#Segurança de porta

##Violações:

	* Protect

	* Restrict

	* Shutdown

##Observações:
	
	* Somente modo acesso

	* Existe estático e dinâmico

##Estático:

```
switchport port-security mac-address AA:AA:AA:AA:00:00:00:01
switchport maximum 1
switchport violation shutdown #desliga a interface se houver uma violação
```
##Dinâmico:

	Apenas não específicar o mac

```
switchport maximum 100 
switchport violation shutdown #desliga a interface se houver uma violação
```

#DHCP

```
ip dhcp snooping
ip dhcp snooping vlan 10
inteface range f0/1-10
ip dhcp snooping limit rate 5
interface g0/1
ip dhcp snooping trust
end
show ip dhcp snooping
```

# SSH

```
S# vlan 30 
S# ip domain-name X 
S# username fabiano privilege 15 password CISCO
S#line vty 0 4
#transport input telnet/ssh/all 

#enable secret UTFPR (pede a senha pra entrar no modo privilegiado) 
#hostname SwitchX 
#ip domain-name www.utfpr.edu.br 
#username NOME priv 15 password UTFPR 
#crypto key generate rsa 
#line vty 0 4 (5 conexões simultaneas) 
#transport input ssh 
#login local 
```
(para acesso remoto das vlans acesse vlan.md)



