// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;
contract events{
    event NewTrade(
        uint date,
        address indexed from,
        address indexed to,
        uint amount
    );
//get amount    
    mapping(address=>uint) balances;

    function trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender,to,amount);
    }
    function invest() external payable{
        if(msg.value < 1000){
            revert();
        }
        balances[msg.sender] += msg.value;
    }
    function balanceOf() external view returns(uint){
        return address(this).balance;
    }
    function myBalance() external view returns(uint){
        return balances[msg.sender];
    }
//send amount
    function sendEther(address payable recipient) external{
        recipient.transfer(1 ether);
    }

}
