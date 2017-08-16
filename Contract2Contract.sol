pragma solidity ^0.4.0;

contract Contract2{
    Contract1 toCall = Contract1(0x1459b55e171400dfbf69f834fa6e80232b014ce8);
    
    function getNumber2() constant returns(uint){
        return toCall.getNumber1();
    }
    
    function getWords2() constant returns(bytes32){
        return toCall.getWords1();
    }
}

contract Contract1{
    uint number = 42;
    bytes32 words = "Hello World";
    
    function getNumber1() constant returns(uint){
        return number;
    }
    
    function setNumber1(uint _number){
        number = _number;
    }
    
    function getWords1() constant returns(bytes32){
        return words;
    }
}
