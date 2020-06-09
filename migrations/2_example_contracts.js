const SolExampleContract = artifacts.require("SolExampleContract");
const FlintExampleContract = artifacts.require("FlintExampleContract");
const SolSupermarket = artifacts.require("SolSupermarket");
const FlintSupermarket = artifacts.require("FlintSupermarket");

module.exports = function(deployer) {
  deployer.deploy(SolExampleContract);
  deployer.deploy(FlintExampleContract);
  deployer.deploy(SolSupermarket);
  deployer.deploy(FlintSupermarket);
};
