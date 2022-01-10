// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/**
* @notice This demonstrates how to restrict access to a contract.
*/

contract OwnerOnly {

    // Declare state variables of the contract
    address public owner;
    uint public value;

    // When the contract is deployed:
    // Set the deploying address as the owner of the contract.
    // Set the deployed smart contract's `value`.
    constructor() {
        owner = msg.sender;
        value = 1;
    }

    // Only allow the owner to add numbers to the `value` variable.
    // Abort execution and revert state changes if condition is `false`.
    function add(uint amount) public {
        // `require(bool condition, string memory message)`
        require(msg.sender == owner, "Sorry, only the contract owner can add values.");
        value += amount;
    }
}
