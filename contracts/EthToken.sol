// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";


contract EthToken is ERC20, ERC20Burnable, Ownable {
  constructor() public ERC20("E Token", "ETN") {}

  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }
}
