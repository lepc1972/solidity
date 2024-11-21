// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract funciones_globales{
      
    function MsgSender() public view returns(address){
        return msg.sender;
    } 

    function currentTimestamp() public view returns(uint256) {
          return block.timestamp;
      }

    function bytes32DataHash(bytes memory data_) public pure returns (bytes32) {
        return keccak256(data_);
    }

    function Now() public view returns (uint256) {
        return block.timestamp;
      }

    function BlockDifficulty() public view returns (uint256){
        return block.difficulty;
    }
    // gas price de la transaccion
    function Txgasprice() public view returns(uint256) {
        return tx.gasprice;
    }


    

}