# 🏗️ FundMe Smart Contract (Foundry)

A decentralized crowdfunding smart contract built with Solidity and Foundry.  
Users can fund the contract in ETH, and only the owner can withdraw funds.  
The contract uses Chainlink Price Feeds to enforce a minimum USD contribution.

---

# ⚡ Built With Foundry

**Foundry** is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.

It consists of:

- **Forge**: Testing framework for Solidity (like Hardhat/Truffle)
- **Cast**: CLI tool for interacting with contracts and blockchain data
- **Anvil**: Local Ethereum node for development
- **Chisel**: Solidity REPL for quick experimentation

📚 Docs: <https://book.getfoundry.sh/>

---

# 🚀 Features

- Accepts ETH funding from users
- Enforces minimum USD value using Chainlink Price Feeds
- Only the contract owner can withdraw funds
- Gas-optimized Solidity implementation
- Fully tested with Foundry
- Deployable to Anvil, Sepolia, and zkSync (experimental support)

---

# 🧱 Tech Stack

- Solidity ^0.8.19 / ^0.8.33
- Foundry (Forge, Cast, Anvil)
- Chainlink Price Feeds
- Etherscan verification
- zkSync Era (experimental)

---

# 📁 Project Structure

src/            Smart contracts
script/         Deployment scripts
test/           Unit & integration tests
lib/            Dependencies (Foundry)

---

# ⚙️ Installation

Clone the repo:

git clone <https://github.com/your-username/fundme-foundry.git>
cd fundme-foundry

Install dependencies:

forge install

---

# 🔧 Build

forge build

---

# 🧪 Testing

forge test

Verbose:

forge test -vvv

---

# 📊 Gas Snapshots

forge snapshot

---

# 🚀 Local Blockchain (Anvil)

anvil

---

# 🌐 Deployment

Deploy to Anvil:

make deploy-anvil

Deploy to Sepolia:

make deploy-Sepolia

Manual deployment:

forge script script/DeployFundMe.s.sol:DeployFundMe \
--rpc-url $SEPOLIA_RPC_URL \
--private-key $PRIVATE_KEY \
--broadcast \
--verify \
--etherscan-api-key $ETHERSCAN_API_KEY

---

# 🔑 Environment Variables

SEPOLIA_RPC_URL=your_rpc_url
MAINNET_RPC_URL=your_mainnet_rpc_url
PRIVATE_KEY=your_private_key
ETHERSCAN_API_KEY=your_etherscan_api_key

---

# 🧠 How It Works

1. Users send ETH to the contract  
2. ETH is converted to USD using Chainlink Price Feeds  
3. Minimum USD threshold is enforced  
4. Only owner can withdraw funds  

---

# 📦 Example Cast Commands

cast balance <address> --rpc-url $SEPOLIA_RPC_URL

cast send <contract> "fund()" --value 0.01ether --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL

cast send <contract> "withdraw()" --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL

---

# ⚠️ Notes

- zkSync compatibility is experimental depending on toolchain version  
- Always use burner wallets for deployment  
- Some Foundry cheatcodes behave differently across chains  

---

# 👨‍💻 Author

## Author

Built by Ugwoke Kosisochukwu Pascaline as part of the Cyfrin Foundry F23 course
---

# 📜 License

MIT License
