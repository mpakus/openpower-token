const OpenPowerSale = artifacts.require('./OpenPowerSale.sol');
const OpenPowerToken = artifacts.require('./OpenPowerToken.sol');

module.exports = function(deployer, network, accounts) {
  const rate = new web3.BigNumber( 100 );
  const wallet = accounts[0];

  return deployer
    .then(() => {
      return deployer.deploy(OpenPowerToken);
    })
    .then(() => {
      return deployer.deploy(
        OpenPowerSale,
        rate,
        wallet,
        OpenPowerToken.address
      );
    });
};

// Running migration: 2_deploy_contracts.js
// Running step...
// Deploying OpenPowerToken...
// ... 0x8748159ed55258c310ea1db4bd6f4a16e3119acbfa4a6c2fd976eb99366d11d0
// OpenPowerToken: 0x8aad51ff3ceeeed82446bdbdb909394109407906
// Deploying OpenPowerSale...
// ... 0xddd7f25110260676a4cedff66dacc58ef252a47c896b170b5b47b5e8c72f9bbe
// OpenPowerSale: 0x68cdc75d7ed3dd7ab977e8b6104ac2bc1db5083b
// Saving successful migration to network...
// ... 0x5fd3d3637c09c968c14fa1f87a164c428f4072a69036b03a233861399fdf869e
// Saving artifacts...

// https://blog.zeppelin.solutions/how-to-create-token-and-initial-coin-offering-contracts-using-truffle-openzeppelin-1b7a5dae99b6

// coinInstance = OpenPowerToken.at(tokenAddress)
//
// coinInstance.transferOwnership(crowdsale.address)
//
// coinInstance.balanceOf(purchaser).then(balance => balance.toString(10))
//
// // # ----
//
// OpenPowerSale.deployed().then(inst => inst.sendTransaction({ from: purchaser, value: web3.toWei(5, "ether")}))
//
// coinInstance.balanceOf(purchaser).then(balance => purchaserGusTokenBalance = balance.toString(10))
//
// web3.fromWei(purchaserGusTokenBalance, "ether")