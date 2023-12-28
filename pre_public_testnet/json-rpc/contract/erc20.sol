// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address private deployer;

    constructor() ERC20("MyToken", "MT") {
        deployer = msg.sender;
        _mint(msg.sender, 100 * 10 ** uint(decimals()));
    }

    function isOwner(address user) external view returns (bool result) {
        if (user == deployer) {
            return true;
        } else {
            return false;
        }
    }
}
