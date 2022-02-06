pragma solidity ^0.8.7;

contract Modifier{
    function foo(uint a) external myModifier(a){

    }

    modifier myModifier(uint a) {
        require(a == 10, 'error');
        _;
    }
}
