// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GameToken is ERC20 {
    constructor() ERC20("GameToken", "GT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
    
    function rewardTokens(address player, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, player, amount);
    }

    function exchangeTokensForCollectible(address collectibleContract, address player, uint256 tokenAmount) external {
    CollectibleToken collectible = CollectibleToken(collectibleContract);
    require(balanceOf(msg.sender) >= tokenAmount, "Insufficient balance");
    _transfer(msg.sender, address(this), tokenAmount);
    collectible.mintCollectible(player);
    }
}