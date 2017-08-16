pragma solidity ^0.4.0;

contract CustodialContract{
    
    address client;
    bool _switch = false;
    
    //events
    event UpdateStatus(string _msg, address user);
    event UserStatus(string _msg, address user, uint amount);
    
    function CustodialContract(){
        client = msg.sender;
    }
    
    modifier ifClient(){
        if(msg.sender != client){
            throw;
        }
        _;
    }
    
    function depositeFunds() payable {
        UserStatus('User transfered: ', msg.sender, msg.value);
    }
    
    function withdrawFunds(uint amount) ifClient{
        if(client.send(amount)){
            UpdateStatus('User withdrew money: ', msg.sender);
            _switch = true;
        }else{
            _switch = false;
        }
    }
    
    function getFunds() constant ifClient returns(uint){
        return this.balance;
    }
}
