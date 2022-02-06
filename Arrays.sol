pragma solidity ^0.8.7;

contract Arrays{
  //1. storage array
  uint[] hola; //crud
  function foo() external{
    hola.push(2);
    hola[0] = 1;
    delete hola[0];// no modifice de length just reset to the minimal type 
    // array.length
  }

  //2. memory arrays
  function bar() pure internal{
    uint[] memory newArray = new uint[](10); //dont have push just can use index notation
    newArray[0] = 10;
    delete newArray[0];

  }
  // 3. array arguments and return array from function
  function fooBar(uint[] calldata  _hola) external { //we need to put call data to manage arrays

  }

}

// Note: dont use array if it is not totally necessary are expensive 
