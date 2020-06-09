# Flint debugger: evaluation tools

This repository contains smart contracts and scripts used to evaluate and manually test Flint's debugger.

Flint contracts in this repo *should* work well with the Flint debugger and showcase its functionalities.

### Install dependencies

Truffle:
```bash
$ npm install -g truffle
```

Local dependencies:
```bash
$ npm install
```

### Test yo contract

First, deploy your contracts (make sure Ganache is running on http://localhost:8545).

```bash
$ truffle deploy --reset
```

Run the following command(s) to automatically make test transactions to your deployed contract(s).

```bash
# for the Flint version of the supermarket contract
$ npm run flint:supermarket

# for the Solidity version
$ npm run flint:supermarket
```

You'll get something like this:

```bash
$ npm run flint:supermarket

> evaluation@1.0.0 flint:supermarket /path/to/repo
> node scripts/runner.js FlintSupermarket.json _InterfaceFlintSupermarket.json ./supermarket.js

Using contract at: 0xeCA8043F213E1e02f470336Fe722952c03f8a3Bc

Sending initial eth...
0xa807f392f832bfcd0fd08702d4c3b69286b568d1054cecbce2dc47bfa8e2ef33

Employing employees...
0x2cee08fa7b736a4585ed1f0eec53525b6bef700f9ab0cb9a089a59609a31d4eb
0x7cec8e5a73c2fb84979c2160f85bad6c7b004cd88fceac1b405752b43e4676a4
0x2d33b9d0897f8a8be668b8263c04b0dfb4b4d349d3e1e46b57bb4e116ef855e5

Restocking...
0x0c398b855469555df8fa2675ddde8d6a4cff5a952b962c7bb4ddb8ce116f8d18

Opening...
0x469728ee1aef1d3662bdf26da6e7c2676a6adacdb5f9872908220fb8fa160b43

Buying...
0x71be89a916c061cd92397834b9866043887be58d7d9a6f01afed77f837625099

Payday!
0x69cb685fffe4b0b1ca47e5c3d34b88e6194adb0c382a889fba2f39b4f7473316

Closing...
0x42f7271d51727fa4adfbd796342612c51e4a499612f0dac604bbd8dba975a934
```