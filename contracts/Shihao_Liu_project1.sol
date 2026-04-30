// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
// ERC contract from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ShihaoToken is ERC20, Ownable {

    constructor() ERC20("Shihao Token", "SHT") Ownable(msg.sender) {
        _mint(msg.sender, 1000 * 10 ** decimals()); 
    }

    // Only owner can mint
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
