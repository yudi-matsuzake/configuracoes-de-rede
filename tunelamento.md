# TUNELAMENTO

## Túnel 6in4

```ios
router> enable
router# config t
router(config)# interface tunnel 0
router(config-if)# ipv6 address fd00:cafe::0/127
router(config-if)# tunnel source serial x/x/x
router(config-if)# tunnel destination 203.0.113.6
router(config-if)# tunnel mode ipv6ip
router(config-if)# ipv6 route 2001:db8:cafe:2::/64 fd00:cafe::1
```
