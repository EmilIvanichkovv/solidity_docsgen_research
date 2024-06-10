// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MyContract
 * @dev A simple smart contract to demonstrate inline documentation
 */
contract MyContract {
    /// @notice Mask for getFeedById(uint32 key)
    /// @dev The maximum length of the key is defined by the mask from the selector.
    /// If the selector is less than the mask, then the function is a getter and the selector holds the key.
    bytes32 internal constant CONTRACT_MANAGEMENT_SELECTOR =
      0x000000000000000000000000000000000000000000000000000000000001ffff;

    /// A public variable to store a number
    uint256 public myNumber;

    /**
     * @dev Sets the value of `myNumber`
     * @param _newValue The new value to set
     */
    function setNumber(uint256 _newValue) external {
        myNumber = _newValue;
    }

    /**
     * @dev Adds two numbers and returns the result
     * @param _a The first number
     * @param _b The second number
     * @return The sum of `_a` and `_b`
     */
    function addNumbers(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }

    /**
     * @dev Multiplies two numbers and returns the result
     * @param _a The first number
     * @param _b The second number
     * @return The product of `_a` and `_b`
     */
    function multiplyNumbers(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a * _b;
    }

    /**
     * @dev Deposits a public key
     * @param pubkey The public key to deposit
     */
    event Deposited(bytes pubkey);

    // custom error
    /// @notice Error indicating an insufficient balance
    /// @param balance The current balance of the contract
    /// @param withdrawAmount The requested withdrawal amount
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    /// @notice Tests the custom error by attempting to withdraw an amount
    /// @param _withdrawAmount The amount to withdraw
    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }

}
