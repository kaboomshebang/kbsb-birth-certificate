// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/**
* @notice This example contract shows the use of some global variables.
*/

contract ConditionsContract {

    // Declare challenge variable, can be set by success function.
    bool public challengeSuccess;
    uint public contractEndDate;

    constructor() {
        // set time in Unix timestamp format
        // Sunday, 10 January 2027 00:00:00
        contractEndDate = 1799539261;
    }

    function success(uint256 articles) public returns (string memory) {
    	if (block.timestamp > contractEndDate && articles >= 60) {
    		challengeSuccess = true;
    		return "Congratulations!";
    	} else if (block.timestamp < contractEndDate) {
    		return "The contract term has not yet expired.";
    	} else {
            challengeSuccess = false;
            return "Mission failed.";
        }
    }
}
