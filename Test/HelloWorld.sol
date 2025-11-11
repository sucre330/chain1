// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract HelloWorld {
    string message;

    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    Info[] infos;

    function sayHello(uint256 _id) public view returns (string memory) {
        for(uint256 i = 0;i < infos.length; i++ ){
            if(infos[i].id == _id){
                return appendMessage(infos[i].phrase);
            }
        }

        return appendMessage(message);
    }

    function setMessage(string memory _message, uint256 _id) public {
        Info memory info = Info(_message, _id, msg.sender);
        infos.push(info);
        // message = _message;
    }

    function appendMessage(string memory _message) public pure returns (string memory) {
        return string.concat(_message, " welcome");
    }
}
