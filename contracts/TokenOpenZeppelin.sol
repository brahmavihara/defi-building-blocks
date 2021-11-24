pragma solidity ^0.7.3;

import "@openzeppelin/contracts/ERC20/ERC20.sol";

//Creation of ERC20 Token.
contract TokenOpenZeppelin is ERC20 {
    constructor() ERC20("Token Name", "TOKEN_TICKER") {}
}