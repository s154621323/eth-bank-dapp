// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.20;

contract InfoContract {
    // Account balance mapping
    mapping(address => uint256) public balances;

    // Deposit event
    event Deposit(address indexed account, uint256 amount);
    // Withdraw event
    event Withdraw(address indexed account, uint256 amount);

    // Deposit function
    function deposit() public payable {
        require(msg.value > 0, "Amount must be greater than 0");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw function
    function withdraw(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdraw(msg.sender, amount);
    }

    // Get balance function
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    // Get contract balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}