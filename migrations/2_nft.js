const PilarNFT = artifacts.require("PilarNFT");

module.exports = function (deployer) {
  deployer.deploy(PilarNFT);
};
