const Web3 = require('web3');

const web3 = new Web3('http://localhost:8545');

function getContract(contractArtifact, interfaceArtifact) {
  const supermarket = require('../build/contracts/' + contractArtifact);
  const supermarketInterface = require('../build/contracts/' + interfaceArtifact);
  const { abi } = supermarketInterface;
  const { address } = supermarket.networks[5777];
  console.log(`Using contract at: ${address}\n`);
  return new web3.eth.Contract(abi, address);
}

if (process.argv.length !== 5) {
  console.error('Invalid number of parameters.');
}

// eslint-disable-next-line import/no-dynamic-require
const script = require(process.argv[4]);

script(web3, getContract(process.argv[2], process.argv[3]))
  .then(process.exit)
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

setTimeout(() => {
  console.error('Timeout');
  process.exit(1);
}, 10 * 60 * 60 * 1000);
