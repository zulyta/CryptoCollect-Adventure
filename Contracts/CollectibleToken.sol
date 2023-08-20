// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CollectibleToken is ERC721 {
    uint256 public tokenIdCounter;
    
    constructor() ERC721("CollectibleToken", "CT") {
        tokenIdCounter = 1;
    }
    
    function mintCollectible(address owner) external {
        uint256 tokenId = tokenIdCounter;
        tokenIdCounter++;
        _mint(owner, tokenId);
    }
}