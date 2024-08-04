// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts@4.6.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";

contract MyNFT is ERC721 {

    address public owner;

    constructor() ERC721("OZOnlyOwnerMint", "OZOWNER") {

        owner = _msgSender();
    }

    modifier onlyOwner {
        require(owner == _msgSender(), "Caller is not the owner.");
        _;
    }

    function nftMint(uint256 tokenId) public onlyOwner{
        _mint(_msgSender(), tokenId);
    }
}