require('dotenv').config();

const Migrations = artifacts.require(process.env.CONTRACT_0_NAME);

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
