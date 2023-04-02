# MarxCoin
> MarxCoin
>
> Author: Louis Dorweiler


**Execution cost**: No bound available

**Deployment cost**: less than 734400 gas

**Combined cost**: No bound available

## Constructor




## Events
### Log(string)


**Execution cost**: No bound available


Params:

1. **message** *of type `string`*

--- 
### LogUint256(string,uint256)


**Execution cost**: No bound available


Params:

1. **message** *of type `string`*
2. **value** *of type `uint256`*

--- 
### Transfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **from** *of type `address`*
2. **to** *of type `address`*
3. **value** *of type `uint256`*

--- 
### Approval(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **owner** *of type `address`*
2. **spender** *of type `address`*
3. **value** *of type `uint256`*


## Methods
### name()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### approve(address,uint256)
>
>Approve an address to spend the specified amount of tokens on behalf of msg.sender
>
> Beware that changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729


**Execution cost**: less than 22354 gas


Params:

1. **_spender** *of type `address`*

    > The address which will spend the funds.

2. **_value** *of type `uint256`*

    > The amount of tokens to be spent.


Returns:

> Success boolean

1. **output_0** *of type `bool`*

--- 
### totalSupply()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### priceOfToken()


**Execution cost**: less than 250 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### transferFrom(address,address,uint256)
>
>Transfer tokens from one address to another


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > The address which you want to send tokens from

2. **_to** *of type `address`*

    > The address which you want to transfer to

3. **_value** *of type `uint256`*

    > The amount of tokens to be transferred


Returns:

> Success boolean

1. **output_0** *of type `bool`*

--- 
### toggleUserRegistratianStatus()
>
>Toggles status, whether registration is possible
>
> Can only be accessed by Owner, toggles status, whether registration is possible


**Execution cost**: No bound available



Returns:

> checkIfUserCanRegister()

1. **output_0** *of type `bool`*

--- 
### decimals()


**Execution cost**: less than 516 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### checkIfUserCanRegister()
>
>Checks, whether account addresses can be added to the pool among which the tokens are distributed
>
> Checks, whether account addresses can be added to the pool among which the tokens are distributed as view function


**Execution cost**: less than 550 gas

**Attributes**: constant



Returns:

> Boolean _newUserApplicationsPossible for checking, whether registration is possible

1. **output_0** *of type `bool`*

--- 
### balanceOf(address)
>
>Getter to check the current balance of an address


**Execution cost**: less than 782 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > Address to query the balance of


Returns:

> Token balance

1. **output_0** *of type `uint256`*

--- 
### sortAllAccountsByBalance()
>
>Sorts list of known users descending based on their account balance
>
> Sorts list of known users descending based on their account balance


**Execution cost**: No bound available




--- 
### logRegisteredAccounts()
>
>Print registered accounts
>
> Print registered accounts using a Log Event


**Execution cost**: less than 350 gas




--- 
### owner()


**Execution cost**: less than 779 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### symbol()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### registerAccount(address)
>
>Register a new account in the network among which the tokens are distributed
>
> Adds account address to existingn known addresses


**Execution cost**: less than 61698 gas


Params:

1. **sender** *of type `address`*

    > is the sender that wants his account to be registered



--- 
### distributeTokens()
>
>Distributes Tokens evenly with respect to the current number of accounts
>
> Distributes Tokens evenly with respect to the current number of accounts


**Execution cost**: No bound available

**Attributes**: payable




--- 
### changeOwner(address)
>
>Transfers ownerrights to new_owner
>
> Can only be accessed by Owner, transfers ownerrights to new_owner


**Execution cost**: No bound available


Params:

1. **new_owner** *of type `address`*

    > address to migrate owner rights to



--- 
### transfer(address,uint256)
>
>Transfer tokens to a specified address


**Execution cost**: No bound available


Params:

1. **_to** *of type `address`*

    > The address to transfer to

2. **_value** *of type `uint256`*

    > The amount to be transferred


Returns:

> Success boolean

1. **output_0** *of type `bool`*

--- 
### getTotalSupply()


**Execution cost**: less than 758 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### allowance(address,address)
>
>Getter to check the amount of tokens that an owner allowed to a spender


**Execution cost**: less than 1104 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > The address which owns the funds

2. **_spender** *of type `address`*

    > The address which will spend the funds


Returns:

> The amount of tokens still available for the spender

1. **output_0** *of type `uint256`*

[Back to the top ↑](#marxcoin)
