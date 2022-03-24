# fly-serf

```sh
fly launch --no-deploy
fly regions set fra
fly deploy
```

```sh
serf members -rpc-addr=$FLY_APP_NAME.internal:7373
```
