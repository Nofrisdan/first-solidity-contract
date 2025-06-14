// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract FirstContract{
    string public textRaw; 
    address private owner; 
    uint256 public angka; 

    constructor(){ 
        owner = msg.sender; 
    }

    function setText(string calldata _text) external{ 
        textRaw = _text; 
    }

    function inc() external{
        require(msg.sender == owner, "NOT_OWNER"); 
        angka++;

    }

    function getOwner() public view returns(address){
        return owner;
    }
    

}

