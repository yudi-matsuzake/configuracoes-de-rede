# Útil

Comandos que podem ser úteis no gerenciamento e configuração das redes

**Range de intefaces**

```ios
# interface range fa 0/0-10
```

**Mostra configuração geral**

```ios
# show running-config
```

**Mostra as vlans e suas intefaces designadas**

```
show vlan brief
```

**Mostra a tabela MAC | INTERFACE do switch**
```
show mac-addres table
```

**Hostname**

```
#hostname zoera
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
