# Token
> Bare-bones Token implementation


**Execution cost**: No bound available

**Deployment cost**: less than 351600 gas

**Combined cost**: No bound available

## Constructor



Params:

1. **_name** *of type `string`*
2. **_symbol** *of type `string`*
3. **_decimals** *of type `uint256`*
4. **_totalSupply** *of type `uint256`*

## Events
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
### decimals()


**Execution cost**: less than 494 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### balanceOf(address)
>
>Getter to check the current balance of an address


**Execution cost**: less than 738 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > Address to query the balance of


Returns:

> Token balance

1. **output_0** *of type `uint256`*

--- 
### symbol()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

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


**Execution cost**: less than 582 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### allowance(address,address)
>
>Getter to check the amount of tokens that an owner allowed to a spender


**Execution cost**: less than 928 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > The address which owns the funds

2. **_spender** *of type `address`*

    > The address which will spend the funds


Returns:

> The amount of tokens still available for the spender

1. **output_0** *of type `uint256`*

[Back to the top ↑](#token)
