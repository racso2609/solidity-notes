pragma solidity ^0.8.7;

contract MyFunctions{
    uint value;
    function getValue() external view returns(uint){
        return value;
    }
    function setValue(uint _value) external {
        value = _value;
    }
} 

//external let you call this function outside the contract
// view is a function that dont modify contract data
//returns types of the returned values
// view: just show values 
// pure: not read or modify contract state 
// constant: deprecaded this is for old versions

// ----- visibility ------ 
// *try to give the minimun of privi

// external: only from outside the contract
// private: just inside the contract 
// internal: limited to the contract and innherent contracts
// public: outside and inside 
