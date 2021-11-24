pragma solidity ^0.7.3;
//In real production, use official smart contract address of WETH.

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Weth is ERC20 {
    constructor() ERC20("Wrapped Ether", "WETH") {}

    function deposit() external payable {
        _mint(msg.sender, msg.value);
        //Create
    }

    function withdraw() external payable {
        require(balanceOf(msg.sender) >= amount, "balance too low");
        _burn(msg.sender, amount);
        //Destroy
        msg.sender.transfer(amount);
    }
}