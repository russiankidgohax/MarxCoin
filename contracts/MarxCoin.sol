// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.19;

import {Token} from "./Token.sol";
import "./SafeMath.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

/// @title MarxCoin
/// @author Louis Dorweiler
/// @notice Coin that resembles a socialist money distribution.
/// @dev Contract that clones from a slightly modified brownie mix "token".
contract MarxCoin is Token {
    using SafeMath for uint256;
    // Owner address of token
    address public owner;
    // List of all accounts
    address[] private _allAccounts;
    mapping(address => bool) userExists;

    // Timestamp of the last balance adjustment
    uint256 private _lastAdjustmentTime;
    // Minimum time between balance adjustments
    uint256 private constant _minimumAdjustmentTime = 1 hours;

    // Flag for allowing new users to register as long as owner allows it
    bool private _newUserApplicationsPossible;

    // For debugging
    event Log(string message);
    event LogUint256(string message, uint256 value);

    constructor()
        Token("MarxCoin", "MARX", 18, 1000000000000000000000000000000)
    {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
        _lastAdjustmentTime = block.timestamp;
        _newUserApplicationsPossible = true;
        registerAccount(owner);

        emit Transfer(address(0), owner, totalSupply);
    }

    /// @notice Distributes Tokens evenly with respect to the current number of accounts
    /// @dev Distributes Tokens evenly with respect to the current number of accounts
    function distributeTokens() public payable onlyOwner {
        require(_allAccounts.length > 1, "Only owner registered");
        if (
            block.timestamp >= _lastAdjustmentTime + _minimumAdjustmentTime ||
            _newUserApplicationsPossible
        ) {
            // Calculate the target value for each account
            uint256 targetValue = totalSupply.div(_allAccounts.length);

            sortAllAccountsByBalance();

            // Iterate over all accounts and adjust their balances if necessary
            for (uint256 i = 0; i < _allAccounts.length; i++) {
                if (_allAccounts[i] == owner) continue;
                address account = _allAccounts[i];
                uint256 balance = balanceOf(account);

                if (balance > targetValue) {
                    // Transfer excess tokens to the owner account
                    uint256 excess = balance.sub(targetValue);
                    _transfer(account, owner, excess);
                } else if (balance < targetValue) {
                    // Transfer missing tokens from the owner account
                    uint256 missing = targetValue.sub(balance);
                    _transfer(owner, account, missing);
                }
            }
        }
    }

    /// @notice Register a new account in the network among which the tokens are distributed
    /// @dev Adds account address to existingn known addresses
    /// @param sender: address
    function registerAccount(address sender) public {
        require(!userExists[sender], "Account already registered!");
        userExists[sender] = true;
        _allAccounts.push(sender);
    }

    /// @notice Print registered accounts
    /// @dev Print registered accounts using a Log Event
   function logRegisteredAccounts() public {
        for (uint256 i = 0; i < _allAccounts.length; i++) {
            string memory accountStr = Strings.toHexString(
                uint256(uint160(_allAccounts[i])),
                20
            );
            emit Log(string.concat("Account: ", accountStr));
            emit LogUint256(
                string.concat("balanceOf ", Strings.toString(i)),
                balanceOf(_allAccounts[i])
            );
        }
    }

    /// @notice Sorts list of known users descending based on their account balance
    /// @dev Sorts list of known users descending based on their account balance
    function sortAllAccountsByBalance() public onlyOwner {
        for (uint256 i = 1; i < _allAccounts.length; i++) {
            for (uint256 j = 0; j < i; j++) {
                if (balanceOf(_allAccounts[i]) > balanceOf(_allAccounts[j])) {
                    address temp = _allAccounts[j];
                    _allAccounts[j] = _allAccounts[i];
                    _allAccounts[i] = temp;
                }
            }
        }
    }

    /// @notice Checks, whether account addresses can be added to the pool among which the tokens are distributed
    /// @dev Checks, whether account addresses can be added to the pool among which the tokens are distributed as view function
    /// @return Boolean _newUserApplicationsPossible for checking, whether registration is possible
    function checkIfUserCanRegister() public view returns (bool) {
        return _newUserApplicationsPossible;
    }

    /// @notice Toggles status, whether registration is possible
    /// @dev Can only be accessed by Owner, toggles status, whether registration is possible
    /// @return checkIfUserCanRegister()
    function toggleUserRegistratianStatus() public onlyOwner returns (bool) {
        _newUserApplicationsPossible = !_newUserApplicationsPossible;
        return checkIfUserCanRegister();
    }

    /// @notice Transfers ownerrights to new_owner
    /// @dev Can only be accessed by Owner, transfers ownerrights to new_owner
    /// @param new_owner: address to migrate owner rights to
    function changeOwner(address new_owner) public onlyOwner {
        require(msg.sender == owner, "You are not the owner of this FanImage!");
        registerAccount(new_owner);
        owner = new_owner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }
}
