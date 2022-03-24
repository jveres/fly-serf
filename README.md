# fly-serf

```sh
fly launch --no-deploy
fly regions set fra
fly deploy
```

```sh
serf members -rpc-addr=$FLY_APP_NAME.internal:7373
```

```sh
fly regions set fra ams ord lhr
fly scale count 4 --max-per-region 1
...
serf members -rpc-addr=$FLY_APP_NAME.internal:7373
serf rtt -rpc-addr=$FLY_APP_NAME.internal:7373 lhr-xxxxxxxx ord-yyyyyyy
...
serf query -rpc-addr=serf-test.internal:7373 load
```
