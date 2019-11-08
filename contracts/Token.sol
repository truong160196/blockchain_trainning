pragma solidity ^0.5.0;

import 'node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract Token is StandardToken {
    string public name = 'Token';
    string public symbol = 'QT';
    uint public decimals = 2;
    uint public INITIAL_SUPPLY = 12000;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}