// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PhillCoin is ERC20 {
  constructor(uint256 amount) ERC20("PhillCoin", "PC") {
    _mint(msg.sender, 1000 * 10 ** decimals());

    _burn(msg.sender, amount);
  }
}