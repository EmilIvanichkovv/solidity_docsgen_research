# solidity_docsgen_research
Research project aimed at exploring methods to automatically generate documentation for Solidity smart contracts.

## Research setup

Under `libs/contracts/contracts` there are two example contracts that are documented using  Ethereum Natural Language Specification Format (NatSpec). Different tools will be used to generate documentation for these contracts. The generated documentation will be compared in terms of quality and ease of use.

## Tools
- [solidity-docgen](https://github.com/OpenZeppelin/solidity-docgen)

## `solidity-docgen`
solidity-docgen is a program that extracts documentation for a Solidity project.

### Usage

#### Hardhat

Can be configured with hardhat as follows:

Include the plugin in your Hardhat configuration.

```diff
 // hardhat.config.ts
+import 'solidity-docgen';

 export default {
+  docgen: { ... }, // if necessary to customize config
 };
```

Then run with `hardhat docgen`.

#### As a library
Also can be used as library:

```typescript
import { docgen } from 'solidity-docgen';

await docgen([{ output: solcOutput }], config);
```
#### Conclusion ❌

Result can be examined in the `libs/contracts/docs/solidity-docgen` folder.

##### Pros
- Easy to integrate with Hardhat
- Generates well formatted markdown files

##### Cons
- Does not support `json` output
- Does not export all reference documentation fields (e.g. `@title`, `@author`, etc.)
  - https://github.com/OpenZeppelin/solidity-docgen/issues/432
