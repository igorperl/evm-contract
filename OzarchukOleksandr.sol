// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract CryptoSchool {

    address public ozarchuk;
    mapping (address => uint) public payments;

    constructor() {
        ozarchuk = msg.sender;
    }

    function Deposit() public payable {
        payments[msg.sender] = msg.value;
    }

    function Withdraw() public {
        address payable _to = payable(ozarchuk);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }
}