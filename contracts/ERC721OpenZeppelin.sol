pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//ERC20 import, probably need to fix dir name.

contract ERC721OpenZeppelin1 is ERC721 {
    constructor() ERC721("Token Name", "Token Symbol") {}
    }

contract ERC721OpenZeppelin2 is ERC721 {
    constructor() ERC721("Token Name", "Token Symbol") {}
    _safeMint(msg.sender, 0);
    }

contract ERC721OpenZeppelin3 is ERC721 {
    address public admin;
    constructor() ERC721("Token Name", "Token Symbol") {
        admin = msg.sender;
    }

//Not just this but arguments, underscore? check later.
function mint(address to, uint tokenId) external {
    require(msg.sender == admin, "only admin");
    _safeMint(to, tokenId);
    }

contract ERC721OpenZeppelin4 is ERC721 {
    constructor() ERC721("Token Name", "Token Symbol") {}

//Not just this but arguments, underscore? check later.
function faucet(address to, uint tokenId) external {
    _safeMint(to, tokenId);
    }

}