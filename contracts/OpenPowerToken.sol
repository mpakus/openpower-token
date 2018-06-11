pragma solidity ^0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract OpenPowerToken is MintableToken {
    string public name = 'Open Power Token';
    string public symbol = 'OPT';
    uint8 public decimals = 9;
    uint public INITIAL_SUPPLY = 2000000;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}
