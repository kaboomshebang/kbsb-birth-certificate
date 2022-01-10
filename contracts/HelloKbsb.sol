// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract HelloKbsb {

    string private shebang = "#!/kaboom/shebang";

    function printShebang() public view returns (string memory) {
        return shebang;
    }
}
