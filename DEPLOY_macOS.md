# Deploy to Hyperledger Fabric (in macOS)
To deploy the generated smart contract to Hyperledger Fabric blockchain, we need to install docker and the Fabric test network.

## Installing Hyperledger Fabric
1- Download and install Docker Desktop for Mac from the official [Docker website](https://docs.docker.com/desktop/setup/install/mac-install/). If you have Docker installed already, skip this step and verify if it is running in a terminal.
```bash
docker --version
docker-compose --version
```

2- The next step is to install Hyperledger Fabric test network.
```bash
cd ~
mkdir symboleo
cd symboleo
curl -sSL https://bit.ly/2ysbOFE | bash -s
```
## Deploying and testing a contract
You have to run the following steps everytime you want to run a contract after reboot or changing its code.  
1- First, we should copy your contract into the fabric-samples directory:

```bash
cd ~/symboleo/fabric-samples
mkdir meatsale
cp /path/to/MeatSale/. meatsale/. -R 
```
2- The second step is to start the Hyperledger Fabric containers.
```bash
cd test-network
./network.sh up createChannel
```
3- If you don't have jq command-line tool installed on your Mac, you might get an error. You need to Install jq on macOS.
```bash
brew install jq #ensure brew is installed
# Once installed, verify it by running
jq --version
```
Once you have joined the channel successfully, you will see an output like this:
```bash
2025-03-12 18:03:23.500 EDT 0002 INFO [channelCmd] update -> Successfully submitted channel update
Anchor peer set for org 'Org2MSP' on channel 'mychannel'
Channel 'mychannel' joined
```
4- Next step is to deploy the contract:
```bash
./network.sh deployCC -ccn meatsale -ccp ../meatsale -ccl javascript
```

5- After deploying the contract, we can call any transaction using the CLI, but, before that we need to populate a few ENV variables. The Fabric test network consists of two Organisations. Run the following lines to set the values for `Org1`. 
```bash
export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
```
6- The first transaction to call must always be the `init` transaction to activate the Symboleo contract. As you can see in the command, the name of transaction (name of the functions in the `index.js` file) is passed in the `function` argument, and all of the paramaters are passed as string in the `Args` argument.
```bash
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C mychannel -n meatsale --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt" -c '{"function":"init","Args":["{\"buyer\":  {\"warehouse\": \"warehouse add\"},\"seller\":  {\"returnAddress\": \"add\", \"name\": \"seller name\"},\"qnt\": 2,\"qlt\": 3,\"amt\": 3,\"curr\": 1,\"payDueDate\": \"2022-10-28T17:49:41.422Z\",\"delAdd\": \"delAdd\",\"effDate\": \"2022-10-28T17:49:41.422Z\",\"delDueDateDays\": 3,\"interestRate\": 2}"]}'
```
After successful invocation you will see a message like this:
```
 Chaincode invoke successful. result: status:200 payload:"{\"successful\":true,\"contractId\":\"MeatSale_202222420\"}"
```
Please take a copy of the `contractId`  value, we need it for future invocations. 

7- You can call any other transaction too. For example, to call the `trigger_paid` and send the paid event, run this command. Replace the `contractId` with your own value:
```bash
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C mychannel -n meatsale --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt" -c '{"function":"trigger_paid","Args":["{\"contractId\": \"MeatSale_202222420\", \"event\": {}}"]}'
```
8- To query the state of the contract, replace the second argument below with your own `contractId` value and run:
```bash
peer chaincode query -C mychannel -n meatsale -c '{"Args":["getState", "MeatSale_202222420"]}'
```
9- To call the `trigger_delivered` replace the `contractId` with your own value and run:
```bash
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C mychannel -n meatsale --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt" -c '{"function":"trigger_delivered","Args":["{\"contractId\": \"MeatSale_202222420\", \"event\": {}}"]}'
```
10- Finally, to shutdown the netowrk run:
```bash
./network.sh down
```
  
To test the contract again or update it, you must shutdown the network and deploy it again.