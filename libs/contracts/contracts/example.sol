// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MyContract
 * @dev A simple smart contract to demonstrate inline documentation
 */
contract MyContract {
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
}
