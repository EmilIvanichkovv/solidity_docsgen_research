# Solidity API

## MyContract

_A simple smart contract to demonstrate inline documentation_

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

