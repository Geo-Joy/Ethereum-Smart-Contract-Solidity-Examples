pragma solidity ^0.4.0;

contract GettersSetters {
    //string public name = "Geo Joy"; //visible to all (better to write a hidden function)
    string name = "Geo Joy";
    
    // function getName() returns(string){ //almost like a setter, GAS will be used 
    //     return name;
    // }
    
    function getName() constant returns(string){
        return name;
    }
    
    // function setName(string updateName) constant returns(string){ //A getter to set, but wont update root variable
    //     name = updateName;
    //     return name;
    // }
    
    function setName(string updateName) returns(string){
        name = updateName;
        return name;
    }
}
