## Foundry Basics

It is a testing framework for solidity smart contracts. 
Unlike hardhat which is Javascript based and uses chai/mocha for test file and Javascript for deploying scripts, 
Foundry uses solidity for writing both test cases and deploy scripts. It has four commands that helps 
testing and deployment of smart contracts.
- forge 
- anvil
- cast
- chisel


--- 
**Project Initiation:** 
```shell
forge init
```
**Smart Contract Compilation:**
```shell
forge build    # or forge compile
```
Running this generates two folders `out` and `cache`, where `out` folder has the artifacts 
of the contract such as ABI and `cache` is used to track the changes and perform actions for the files 
which has been updated alone.

--- 
**Smartcontract Deployment**

**Local Ethereum Development Node**
```shell
anvil
```
**Simple way:** 
```shell
forge create CONTRACT_NAME 
# Add --interactive or --private-key to dry run
# Add --broadcast to with previous command to broadcast the transaction
# Add --rpc-url RPC_URL to check the execution in your preferred network
```
_While executing this command ensure that local ethereum development node is active._

**Scripting:**

Deploying using script involves four steps:
 
- Local Simulation -> Runs contract code in local evm. Captures and updates external calls from `vm.broadcast` 
or `vm.startBroadcast`. If `--rpc-url` given, it works based on that.

- On-Chain Simulation -> Optional. Only works if rpc/fork url given.
- Broadcasting -> Broadcast the transaction `--broadcast` flag is used for this.
- Verification -> Optional. Only works when `--verify` flag given and API key is provided.
 
