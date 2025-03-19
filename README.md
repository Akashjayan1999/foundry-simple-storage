## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

```shell
$ forge build --zksync
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```
```shell
$ anvil-zksync
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

```shell
$ forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url [anvil-zksync-urk] --private-key [anvil-zksync-urk] --legacy --zksync --broadcast
```

### Cast

```shell
$ cast <subcommand>
```

```shell
forge create SimpleStorage --rpc-url [anvil-zksync-urk] --private-key [key] --legacy --zksync
```


**Call a function:** add --legacy --zksync for zksync

```shell
$ cast call <contract_address> "retrieve()" --rpc-url <your_rpc_url>
```

**Send a transaction:** add --legacy --zksync for zksyn

```shell
$ cast send <contract_address> "store(uint256)" <value> --rpc-url <your_rpc_url> --account <account_name> --from <sender_address>
```

```shell
cast --to-base [dec] dec [key] --legacy --zksync
```


### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

