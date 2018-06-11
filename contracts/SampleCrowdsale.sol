pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "./SampleCrowdsaleToken.sol";

contract SampleCrowdsale is Crowdsale {
    constructor(uint256 _rate, address _wallet)
    public
    Crowdsale(_rate, _wallet, new SampleCrowdsaleToken())
    {}

    function createTokenContract() internal returns (StandardToken) {
        return new SampleCrowdsaleToken();
    }
}
