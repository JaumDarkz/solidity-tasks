const TokenMigrations = artifacts.require("Migrations");

module.exports = function (deployer) {
  deployer.deploy(TokenMigrations);
};