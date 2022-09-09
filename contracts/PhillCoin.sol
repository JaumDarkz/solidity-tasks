// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract PhillCoin is ERC20, Ownable {
  constructor() ERC20("PhillCoin", "PC") {
    _mint(msg.sender, 1000 * 10 ** decimals());
  }

  function burn(address account, uint256 amount) external onlyOwner {
    _burn(account, amount * 10 ** decimals());
  }

  function mint(address account, uint256 amount) external onlyOwner {
    _mint(account, amount * 10 ** decimals());
  }
}