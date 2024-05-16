import * as dotenv from 'dotenv';

import { HardhatUserConfig } from 'hardhat/config';
import '@nomicfoundation/hardhat-ethers';
import '@nomicfoundation/hardhat-chai-matchers';
import 'solidity-coverage';
import '@typechain/hardhat';
import 'hardhat-contract-sizer';
import 'hardhat-gas-reporter';
import 'solidity-docgen';

dotenv.config();

const config: HardhatUserConfig = {
  docgen: {pages: "files", outputDir: "docs/solidity-docgen"},
  solidity: {
    version: '0.8.24',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  typechain: {
    outDir: 'typechain',
    target: 'ethers-v6',
  },
  networks: {
    localhost: {
      url: 'http://localhost:8545/',
    },
    hardhat: {
      forking: {
        enabled: process.env.FORKING === 'true',
        url: '' + process.env.MAINNET_KEY,
      },
    },
  },
  gasReporter: {
    enabled: process.env.REPORT_GAS === 'true',
    currency: 'USD',
  },
};

export default config;
