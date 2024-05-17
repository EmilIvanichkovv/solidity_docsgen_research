var solc = require('solc');
const fse = require('fs-extra');
const fs = require('fs');

async function compileContract(contractPath) {
const f = '/home/emilivanichkov/code/repos/metacraft-labs/blocksense/solidity_docsgen_research/libs/contracts/contracts/example.sol'
const x = await fse.readFile(f,'utf8')
// console.log(x)

const input = {
  language: 'Solidity',
  settings: {
      outputSelection: {
          '*': {
              '*': ['evm.bytecode', 'evm.gasEstimates']
          }
      }
  },
  sources: {
      'a.sol': {
          content: x
      },

  }
};
var output = JSON.parse(solc.compile(JSON.stringify(input)));

console.log(output.contracts['a.sol'].MyContract.evm.bytecode);
}

compileContract().then(console.log).catch(console.error);
