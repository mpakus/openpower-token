var SampleCrowdsale = artifacts.require("SampleCrowdsale");

module.exports = function(deployer, network, accounts) {
  const ethRate = new web3.BigNumber( (1/66.6).toFixed(9) );
  const wallet = accounts[0];
  deployer.deploy(SampleCrowdsale, ethRate,  wallet);
};