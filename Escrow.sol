pragma solidity ^0.4.25;

contract Escrow {
    
    //variables
    address bunz;
    uint priceOfItem;
    uint hundredthPriceOfItem;
    
    function Exchange(address _seller, address bunzAddress, uint finneyConversion) payable public{
        //Set the bunz address
        bunz = msg.sender;
        bunz = bunzAddress;
        
        //Divide the price of the item by hundred in finneys
        priceOfItem = finneyConversion;
        hundredthPriceOfItemPriceOfItem = finneyConversion / 100;
        
        // Send 1% of priceOfItem to _seller
        _seller.transfer(hundredthPriceOfItem);
        
    }
    
    function send(address _escrow) payable {
    (address of escrow)= _escrow //Sends 1% of priceOfItem to escrow account 
    _escrow.send(msg.value);
    }
  
    //Sends an x number of ether
    function sendEth(address _seller, uint numFinney) payable public{
        // Sends the seller num finneys
        _seller.transfer(numFinney);
    }