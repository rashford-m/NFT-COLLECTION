// Define the compiler version you would be using
// SPDX-License-Identifier: MIT

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

    /*
    Negative numbers are allowed for int types. Eg
    - int256 ranges from -2 ** 255 to 2 ** 255 - 1
    */
    int public i = -123; // int is the alias of int256

    // address stands for an ethereum address
    address public addr = 0xc8Ed6D535D08fc4435Fea832C78B866e7ed1F40a;

    // bool stands for boolean
    bool public defaultBool = false;

    // Default values
    // Unassigned variables have a default value in Solidity
    bool public defaultBool2; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddress; // 0x0000000000000000000000000000000000000000

    function doSomething() public {
        /*
         ******** Local variable **********
         */
        uint ui = 456;

        /*
         ******** Global variables **********
         */

        /*
            block.timestamp tells us whats the timestamp for the current block
            msg.sender tells us which address called the doSomething function
        */
        uint timestamp = block.timestamp; // current block timestamp

        address sender = msg.sender; // addresss of  the caller
    }
}
