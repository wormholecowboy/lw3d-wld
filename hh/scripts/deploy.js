// pull ethers from hardhat into a const
// main async function
//      ethers.getcontractfactory
//      .deploy()
//      await .deployed()
//      log address
//      run main with error catching

const { ethers } = require('hardhat');

async function main() {
  // get contract facotry instance
  const whitelistContract = await ethers.getContractFactory('Whitelist');
  // deploy
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  // wait
  await deployedWhitelistContract.deployed();

  // print address
  console.log('Whitelist Contract Address: ', deployedWhitelistContract);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
