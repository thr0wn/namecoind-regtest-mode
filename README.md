# Namecoin daemon ready for tests on regtest mode

## ⚙ Build
```bash
docker build -t namecoind-regtest-mode .
```

<hr>

## 🚀 Run
```bash
docker run -d -it --name namecoind-regtest-mode -p 1111:1111 -p 1112:1112 namecoind-regtest-mode
```

<hr>

## ☢ Test
```bash
curl --data '{"jsonrpc": "1.0", "id":"1", "method": "getnetworkinfo", "params": []}' http://root:root@localhost:1112
```
