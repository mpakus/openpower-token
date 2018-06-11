pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract SampleCrowdsaleToken is MintableToken {
    string public constant name = "Open Power Token";
    string public constant symbol = "OPT";
    uint8 public constant decimals = 9;
}

contract SampleCrowdsale is Crowdsale {
    constructor(uint256 _rate, address _wallet)
    public
    Crowdsale(_rate, _wallet, new SampleCrowdsaleToken())
    {}

    function createTokenContract() internal returns (MintableToken) {
        return new SampleCrowdsaleToken();
    }
}
