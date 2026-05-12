include .env
export
build:;	forge build

deploy-Sepolia:;	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv


-include .env
export

# --------------------
# BASIC COMMANDS
# --------------------


test:
	forge test

test-v:
	forge test -vvvv

clean:
	forge clean

snapshot:
	forge snapshot

format:
	forge fmt

# --------------------
# LOCAL ANVIL DEPLOY
# --------------------

deploy-anvil:
	forge script script/DeployFundMe.s.sol:DeployFundMe \
	--rpc-url http://127.0.0.1:8545 \
	--private-key $(PRIVATE_KEY) \
	--broadcast


# --------------------
# CAST HELPERS
# --------------------

balance:
	cast balance $(ADDRESS) --rpc-url $(SEPOLIA_RPC_URL)

fund:
	cast send $(CONTRACT) "fund()" --value 0.01ether --private-key $(PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

withdraw:
	cast send $(CONTRACT) "withdraw()" --private-key $(PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)