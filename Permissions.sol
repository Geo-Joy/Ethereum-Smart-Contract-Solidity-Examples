pragma solidity ^0.4.0;

contract Permissions {
    
    string name = "Geo Joy";
    address issuer;
    
    //constructor created before the contract 
    function Permissions(){
        issuer = msg.sender;
    }
    
    modifier ifIssuer(){
        if(issuer != msg.sender){
            throw;
        }else{
            _;
        }
    }
    
    function getName() constant returns(string){
        return name;
    }
    
    function setName(string updateName) ifIssuer returns(string){
        name = updateName;
        return name;
    }
}
