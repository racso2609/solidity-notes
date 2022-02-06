// its litterally a json where jey could be a value 

pragma solidity ^0.8.7;
contract mappings{
    //1. declare
    mapping(address => uint) balances;
    //2. add
    function foo() external{
        balances[msg.sender] = 100;
        // read 
        balances[msg.sender];
        //update
        balances[msg.sender] = 100;
        //delete 
        delete balances[msg.sender];
    //3.default values
    //balances[noExist] => default value of value type  uint = 0
    }
    //4. exotic mappings
        //4.1 mapping insede mapping
    mapping(address => mapping(address => bool)) approve;
    function foo2(address spender) external{
        approve[msg.sender][spender] = false;

        // read 
        approve[msg.sender][spender];
        //update
        approve[msg.sender][spender] = true;
        //delete 
        delete approve[msg.sender][spender];
    //3.default values
    //balances[noExist] => default value of value type  uint = 0
    }
    //4.2 array inside mapping
    mapping(address => uint[]) scores;
     function foo2() external{
        scores[msg.sender].push(2);

        // read 
        scores[msg.sender][0];
        //update
        scores[msg.sender][0] = 3;
        //delete 
        delete scores[msg.sender][0];
    //3.default values
    //balances[noExist] => default value of value type  uint = 0
    }
    

}
