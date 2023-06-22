// Define the compiler version you be using
pragma solidity ^0.8.19;

// start by creating a contract named Conditions
contract Condition {
    // State variables to store a number
    uint public num;

    /*
        Name of the function is set.
        It takes in an uint and sets the state variable num.
        It is declared as a public function meaning
        it can be called from within the contract and also externally.
    */
    function set(uint _num) public {
        num = _num;
    }

    /*
        Name of the function is get.
        It returns the value of num.
        It is declared as a view function meaning
        that the function doesn't change the state of any variable.
        view functions in solidity do not require gas.
    */
    function get() public view returns (uint) {
        return num;
    }

    /*
        Name of the function is foo.
        It takes in an uint and returns an uint.
        It compares the value of x using if/else
    */
    function foo(uint x) public returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    /*
        Name of the function is loop.
        It runs a loop till 10
    */
    function loop() public {
        // for lop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to the next iteration with continue
                continue;
            }
            if (i == 5) {
                // exit loop wth break
                break;
            }
        }
    }
}
