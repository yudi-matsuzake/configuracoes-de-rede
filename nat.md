# NAT

```ios
Router(config)# int fa 0/1
Router(config)# ip nat outside
Router(config)# exit 
Router(config)# interface fa 0/0
Router(config)# ip address ..
Router(config)# ip nat inside 
Router(config)# access-list 1 permit 192.168.1.0 0.0.0.255
Router(config)# access-list 1 permit 200.1.1.0 0.0.0.3
Router(config)# ip nat inside source list 1
Router(config)# interface fa 0/1
Router(config)# overload
```
