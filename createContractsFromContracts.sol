pragma solidity ^0.8.7;

contract Loanfactory{
  mapping(address => Loan)loans;
  uint a;

  function createLoan() external{
    Loan loan = new Loan(100);
    loans[msg.sender] = loan;
    // address(loan); convert in address
    loan.refund();
  }

  function withdraw () external{
    loans[msg.sender].withdraw();
    // address(loans[msg.sender]).call(abi.encodePacked("bar()"));//return bool true if error false if not

  }
  
  function handlingError ()  external{
    a = 10;
    
    //throw deprecated
    if (a == 10)
        revert('this is why it reverts');
    
    require(a != 10, 'this is the error'); // runtine 
    assert(a != 10); //for statements that never could happend
  }
  function willThrow() external{
      revert('reason');
  }
}

contract Loan{
  uint public amount;
  address admin;

  constructor(uint _amount){
    amount = _amount;
    admin = msg.sender;
  }
  function withdraw () external{

  }
  function refund () external{

  }
}
