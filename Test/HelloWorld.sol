// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract HelloWorld {
    string message;

    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    
    function sayHello() public view  returns ( string memory ) {
        return appendMessage(message);
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    function appendMessage(string memory _message) public pure  returns (string memory) {
       return  string.concat(_message," welcome");
    }

}

