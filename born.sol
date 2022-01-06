// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

// alternative:
// pragma solidity >=0.4.22 <0.9.0;

// define which compiler and which version
// check and set the version of the Remix compiler in the Solidity Compiler tab

// define a new smart contract
contract Kaboom {
    bool private isFact;
    bool public isFiction;

    // a function that only reads from the state without modifying it
    function checkFact() public view returns (bool) {
        return isFact;
    }

    // a public function
    function setFiction() public {
        isFiction = true;
    }

    // example of a pure function
    // a function that does not read or modify state
    function returnInput(bool r) public pure returns (bool) {
        return r;
    }
}

// License IDs
// https://spdx.org/licenses/
