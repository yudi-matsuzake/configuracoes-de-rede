# ACL

## Criando a Access-List
================================

### Padrão

* Se você colocar `host` antes do ip, ele vai diretamente pra máquina;

* Se não, deve colocar o ip da rede e uma wild mask;

```ios
R (config)# access list 1 {permit|deny} host xxx.xxx.xxx.xxx
```

### Extendida

```ios
R (config)# access-list 100 {permit|deny} ip  [ {host|protocolo} xxx.xxx.xxx.xxx ] [ xxx.xxx.xxx.xxx wildmask]
```

## Adicionando a ACL em uma interface

```ios
R> interface serial 0/0/0
R (config)# ip access-group 1 {in|out}
```
