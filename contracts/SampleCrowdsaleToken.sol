pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract SampleCrowdsaleToken is StandardToken {
    string public constant name = "Open Power Token";
    string public constant symbol = "OPT";
    uint8 public constant decimals = 9;

    uint public INITIAL_SUPPLY = 20;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}
