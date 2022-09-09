const PhillToken = artifacts.require("PhillCoin");

module.exports = function (deployer) {
  deployer.deploy(PhillToken);
};