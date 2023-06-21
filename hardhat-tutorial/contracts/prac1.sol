// Define the compiler version you would be using

pragma solidity ^0.8.19;

// start by creating a contract named Variables
contract Variables {
    /*
        ******** State variables **********
    */
    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available. Eg
        - uint8   ranges from 0 to 2 ** 8 - 1
        - uint256 ranges from 0 to 2 ** 256 - 1
    `public` means that the variable can be accessed internally
     by the contract and can also be read by the external world
    */
   uint8 public u8 = 10;
   uint public u256 = 600;
   uint public u = 1230; // uint is an alias for uint256
   

}