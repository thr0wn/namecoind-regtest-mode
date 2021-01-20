# Namecoin daemon ready for tests on regtest mode

## ⚙ Build
```bash
docker build -t namecoind-regtest .
```

<hr>

## 🚀 Run
```bash
docker run -d --name namecoind-regtest -p 3334:3334 namecoind-regtest
```

<hr>

## ☢ Test
```bash
curl --data '{"jsonrpc": "1.0", "id":"1", "method": "getnetworkinfo", "params": []}' http://root:root@localhost:3334
```
