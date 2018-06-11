pragma solidity 0.4.24;

import './OpenPowerToken.sol';
import 'openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';

contract OpenPowerSale is MintedCrowdsale {
    constructor
    (
        uint256 _rate,
        address _wallet,
        MintableToken _token
    )
    public
    Crowdsale(_rate, _wallet, _token)
    {}
}