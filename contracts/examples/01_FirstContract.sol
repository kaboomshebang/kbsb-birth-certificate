// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// pragma solidity >=0.4.22 <0.9.0; // you specifiy multiple versions

// More info on license IDs
// https://spdx.org/licenses/

/**
* This example contract demonstrates how to create functions with the correct signatures
*/

contract FirstContract {

    // Declare a string and assing a value.
    // You can separate string literals over multiple lines.
    string internalFunctionText =
    "You cannot call this function "
    "from outside the contract.";

    // Visibility specifier: `public`. So, visible/callable externally and internally.
    // A `pure` function disallows modification or access of state.
    // The returned string is in memory when the function is executed.
    function publicFunction() public pure returns (string memory) {
        return "Hello first contract!";
    }

    // A `private` `view` function, so only visible/callable in the current contract.
    // And only reads from the state. Disallows modification of state.
    // This function returns a string that is stored as a contract variable (state).
    function internalFunction() private view returns (string storage) {
        return internalFunctionText;
    }

    // This public function is allowed to call a private function.
    function callInternalFunction() public view {
        internalFunction();
    }

    // The same function but now it returns the called data.
    function callAndReturnData() public view returns (string memory) {
        string memory s = internalFunction();
        return s;
    }

    // This function receives external calldata when executed.
    // The function return statement includes the calldata keyword, 
    // because it returns the calldata argument.
    function passExternalData(string calldata s) external pure returns (string calldata) {
        return s;
    }
}
