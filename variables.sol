pragma solidity ^0.8.7;

contract MyVariables{
    //fixed-size-type

    bool isReady;
    uint a; // unsigned integer
    address provider; // crypto address
    bytes32 data; // byte data like strings
    // variable-size type
    string name;
    bytes _data; //represent binaryData but dont have pre defined length
    uint[] amounts; // arrays 
    mapping(uint => string) users; //users[10]=>'string' is like a hash map, the first parameters is de type of the key and the second the storage value

    //user-defined data
    struct user{
        string name;
        uint id;
    }
    enum Color{
        RED,
        GREEN,
        BLUE
    }//color only can be one of this values

}

// ----- visibility ------ 
// *try to give the minimun of privi

// private: just inside the contract 
// internal: limited to the contract and innherent contracts
// public: outside and inside 
