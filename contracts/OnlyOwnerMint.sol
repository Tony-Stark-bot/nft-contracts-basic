// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {

    address public owner;

    constructor() ERC721("OnlyOwnerMint", "OWNER") {

        owner = _msgSender();
    }

    function nftMint(address to, uint256 tokenId) public {

        _mint(to, tokenId);
    }
}