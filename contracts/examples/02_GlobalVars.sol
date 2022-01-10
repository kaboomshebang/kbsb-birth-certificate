// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/**
* @notice This example contract shows the use of some global variables.
*/

contract GlobalVars {

    struct Globals {
        address sender;
        uint blockNumber;
        uint price;
        uint time;
    }

    Globals glblVars;

    constructor() {
        // address of the account that created the contract
        glblVars.sender = msg.sender;
        glblVars.blockNumber = block.number;
        glblVars.price = tx.gasprice;
        glblVars.time = block.timestamp;
    }

    /// @return The complete struct
    function printGlobals() public view returns (Globals memory) {
        return glblVars;
    }
}
