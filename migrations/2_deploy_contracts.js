const Kolor = artifacts.require("Kolor");

module.exports = function(deployer) {
  deployer.deploy(Kolor);
};
