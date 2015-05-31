# STP

## No switch que será o root

```ios
Switch>enable
Switch#config terminal
Switch(config)#spanning-tree vlan 1 root primary
Switch(config)#end
Switch#
```

## Nos switches que serão secundários

```ios
Switch>enable
Switch#config terminal
Switch(config)#spanning-tree vlan 1 root secondary
Switch(config)#end
Switch#
Switch#
```

## Para configurar o switch na topologia desativando o protocolo Spanning Tree (STP). Tem somente a Vlan 1 (padrão) configurada.

```ios
Switch>enable
Switch#config terminal
Enter configuration commands, one per line. End with CNTL/Z.
Switch(config)#no spanning-tree vlan 1
Switch(config)#end
Switch#
wr
Building configuration...
[OK]
Switch#
```
