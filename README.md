SimpleStorage Smart Contract

This repository contains the Solidity smart contract SimpleStorage, which allows you to store, retrieve, and manage people’s favorite numbers.

Table of Contents

	•	SimpleStorage Smart Contract
	•	Table of Contents
	•	Requirements
	•	Installation
	•	Usage
	•	Deploying the Contract
	•	Interacting with the Contract
	•	Functions Overview
	•	License

Requirements

Before you can compile and deploy this contract, ensure you have the following tools installed:

	1.	Node.js & npm
You need Node.js and npm to install development dependencies, including Hardhat and other Ethereum tools.
	•	Install from Node.js official site
	2.	Solidity
The contract is written in Solidity ^0.8.18. It is recommended to use an IDE like Remix, or you can set up a local development environment using Hardhat or Truffle.
	3.	Hardhat (recommended)
Hardhat is a popular development environment for compiling, deploying, testing, and debugging Ethereum software. You can install it globally using npm.

npm install --save-dev hardhat



Installation

To set up this project, follow these steps:

	1.	Clone the repository

git clone <repository_url>


	2.	Navigate into the directory

cd <repository_directory>


	3.	Install dependencies
If you are using Hardhat, install the dependencies:

npm install


	4.	Compile the contract
To compile the contract using Hardhat, run:

npx hardhat compile



Usage

Deploying the Contract

After setting up your environment:

	1.	Setup Hardhat Config
Make sure you configure the hardhat.config.js with your network details (such as local Ethereum network, testnet, or mainnet).
	2.	Deploy using Hardhat
To deploy the contract:

npx hardhat run scripts/deploy.js --network <network_name>


	3.	Or use Remix IDE
	•	Open Remix IDE in your browser at Remix.ethereum.org
	•	Copy the contract code into a new Solidity file.
	•	Compile and deploy the contract using the Remix interface.

Interacting with the Contract

Once deployed, you can interact with the contract using your preferred method (e.g., Remix IDE, Hardhat scripts, or web3.js).

Sample Hardhat Deployment Script

To automate the deployment process using Hardhat, create a deploy.js script under the scripts/ directory:

async function main() {
    const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
    console.log("Deploying contract...");
    const simpleStorage = await SimpleStorage.deploy();
    await simpleStorage.deployed();
    console.log(`Contract deployed to address: ${simpleStorage.address}`);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});

Run the script with the following command:

npx hardhat run scripts/deploy.js --network <network_name>

Functions Overview

store(uint256 _favoriteNumber)

This function stores a new favorite number in the contract. It updates the state variable myFavoriteNumber with the new value.

retrieve() public view returns(uint256)

This function is a view function that retrieves and returns the stored favorite number.

addNewPerson(string memory _name, uint256 _favoriteNumber)

This function accepts a person’s name and favorite number, creates a new Person struct, and adds it to the listOfPeople.

License

This project is licensed under the MIT License. See the LICENSE file for details.

Now you are ready to develop, deploy, and interact with your own Ethereum smart contract using Solidity!
