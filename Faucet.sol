pragma solidity ^0.8.6;

/**
 * @title A token Faucet
 * @notice This is an example contract from "Mastering Ethereum"
*/
contract Faucet {
    
    // @dev Allows sender withdraw tokens from the contract given the
    //  withdraw_amount is less than 100000000000000000
    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 100000000000000000);
        
        // Send the amount to the address that requested
        payable(msg.sender).transfer(withdraw_amount);
    }
    
    // @dev receive any incoming tokens 
    receive() external payable {}

}
