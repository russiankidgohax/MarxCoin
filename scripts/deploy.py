from brownie import Token, accounts


def main():
    admin = accounts[0]
    marx_coin = Token.deploy("MarxCoin", "MARX", 18, 1e21, {"from": admin})
    print(marx_coin)

