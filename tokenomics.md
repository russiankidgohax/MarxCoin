# Tokenomics

## Token Design

### Initial Supply

### Max Supply

#### Options

- 2.8 billion (according to ChatGPT that was the value of rubles in US dollar)
- 18830314, Death date of Karl Marx

- equal to circulating supply
- 19911226, Perestroika and end of Soviet Union
-

### Circulating Supply

- How much in the market at given moment in time
- Circulating supply affects supply and demand most
- If circulating supply is much less than max supply then inflation can occur
- Ethereum does not have inflation, even though it is uncapped

### Minting Strategy

- Per user mint

### Block Reward

-

### Burnable

-

## Notes

Fixed supply, initial distribution?

Tokenomics:

- Schaubild machen
- Fee zum Wealth verteilen
- democracy.earth: gemintet bei Neuzugang, überschaubare Inflation
- ubi: universal basic income

This contract inherits from the `ERC20` contract provided by the OpenZeppelin library, which implements the standard ERC20 token interface. The contract also includes several additional features to implement the socialist principles:

- The `owner` variable is used to keep track of the address of the contract owner, who has the ability to distribute tokens to all accounts.
- The `_balances` mapping is used to keep track of the balances of all accounts, while the `_lastAdjustedTime` mapping is used to keep track of the last time that each account's balance was adjusted.
- The `_totalSupply` variable is used to keep track of the total supply of tokens in circulation.
- The `_lastAdjustmentTime` variable is used to keep track of the last time that all account balances were adjusted.
- The `_minimumAdjustmentTime` variable is used to set a minimum time between balance adjustments.
- The `_maxImbalance` variable is used to set a maximum imbalance allowed in the value composition of all accounts.
- The `distributeTokens()` function is used to distribute tokens to all accounts according to the socialist principles. This function can only be called by the contract owner. It calculates the total value of all accounts and the target value for each account, and then adjusts the balances of all accounts accordingly.
- The `priceOfToken()` function is used to get the current price of the token. This function is not implemented in this contract and needs to be implemented externally from an oracle or other source.

## Constructor Attributes

"MarxCoin",
"MARX",
18,
1000000000000000000000000000000 == 1_000_000_000_000_000_000_000_000_000_000 ^= 1 Billion Wei
1000000000000000000000000000000

100 auf 4 user verteilen

for i = 1; i < account.length; i++
    _transfer(allAccounts[i], owner, balanceOf(_accounts[i]));


