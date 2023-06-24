// EVENTS
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Events {
    // Declare an event which logs an address and a string
    event TestCalled(address sender, string message);
    function tset() public {
        // Log an Event
        emit TestCalled(msg.sender, "Someone called test()!");
    }
}