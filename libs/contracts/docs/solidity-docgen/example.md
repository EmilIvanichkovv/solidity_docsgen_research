# Solidity API

## MyContract

_A simple smart contract to demonstrate inline documentation_

### CONTRACT_MANAGEMENT_SELECTOR

```solidity
bytes32 CONTRACT_MANAGEMENT_SELECTOR
```

Mask for getFeedById(uint32 key)

_The maximum length of the key is defined by the mask from the selector.
If the selector is less than the mask, then the function is a getter and the selector holds the key._

### myNumber

```solidity
uint256 myNumber
```

A public variable to store a number

### setNumber

```solidity
function setNumber(uint256 _newValue) external
```

_Sets the value of `myNumber`_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newValue | uint256 | The new value to set |

### addNumbers

```solidity
function addNumbers(uint256 _a, uint256 _b) external pure returns (uint256)
```

_Adds two numbers and returns the result_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _a | uint256 | The first number |
| _b | uint256 | The second number |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | The sum of `_a` and `_b` |

### multiplyNumbers

```solidity
function multiplyNumbers(uint256 _a, uint256 _b) external pure returns (uint256)
```

_Multiplies two numbers and returns the result_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _a | uint256 | The first number |
| _b | uint256 | The second number |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | The product of `_a` and `_b` |

### Deposited

```solidity
event Deposited(bytes pubkey)
```

_Deposits a public key_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| pubkey | bytes | The public key to deposit |

### InsufficientBalance

```solidity
error InsufficientBalance(uint256 balance, uint256 withdrawAmount)
```

Error indicating an insufficient balance

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| balance | uint256 | The current balance of the contract |
| withdrawAmount | uint256 | The requested withdrawal amount |

### testCustomError

```solidity
function testCustomError(uint256 _withdrawAmount) public view
```

Tests the custom error by attempting to withdraw an amount

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _withdrawAmount | uint256 | The amount to withdraw |

