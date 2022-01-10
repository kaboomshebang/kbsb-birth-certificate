# kbsb-birth-certificate

An Ethereum/Solidity smart contract that functions as a birth certificate for Kaboom Shebang.

```bash
# if you want to use the Remix IDE
# install node dependencies
npm install

# and verify Remix Daemon
remixd -v
# or:
# .\node_modules\.bin\remixd -v # windows
# ./node_modules/.bin/remixd -v # unix

# run remixd to connect Remix IDE (cloud) to local file system
remixd -s <absolute-path> --remix-ide https://remix.ethereum.org
# you can use ${pwd} in Powershell
# .\node_modules\.bin\remixd -s ${pwd} --remix-ide https://remix.ethereum.org

```

## WIP

- [X] Work out logic
- [X] Deploy contracts to testnet
- [ ] Deploy to Ethereum Mainnet

## Deployed test contracts

HelloKbsb: https://goerli.etherscan.io/address/0x75acf3644a324ba020e950b3d31cb3951e356d20#readContract

BirthCertificate: https://goerli.etherscan.io/address/0xc43074a2fa54b3a1bece766a1a835a016371b81c#readContract

## Resources

- https://github.com/crytic/building-secure-contracts
- [The Truffle Suite](https://trufflesuite.com/index.html)
