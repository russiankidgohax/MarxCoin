# Tokenomics

## Token Design

### Initial Supply and Max Supply

#### Options

- 2.8 billion (according to ChatGPT that was the value of rubles in US dollar)
- 18830314, Death date of Karl Marx
- equal to circulating supply
- 19911226, Perestroika and end of Soviet Union
- equal to ciculating supply 1 billion

### Circulating Supply

- How much in the market at given moment in time
- Circulating supply affects supply and demand most
- If circulating supply is much less than max supply then inflation can occur
- Ethereum does not have inflation, even though it is uncapped

### Minting Strategy

- No mint

## Constructor Attributes for Token 

- "MarxCoin",
- "MARX",
- 18,
- 1000000000000000000000000000000 == 1_000_000_000_000_000_000_000_000_000_000 ^= 1 Billion Ether

## How is money redistributed?

### Distribute tokens to registered accounts

@startuml
skinparam dpi 300

actor owner as o
actor "ith account" as acc
participant "MarxCoin Network\nof registered\naccounts" as mc

o -> mc : Enables registration
acc --> mc : Registers
o -> o : Calculates the\ntarget amount\nbased on the current\nnumber of\nregistered users
o -> mc : Redistributes among network
mc --> acc : Receives share

@enduml
