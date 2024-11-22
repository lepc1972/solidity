// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./SimpleStorage.sol";
contract StorageFactory is SimpleStorage{ // is SimpleStorage para heredar atributos y funciones de SimpleStorage

    SimpleStorage[] public simpleStorageArray;
    function createsimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
       
    }

    // function that retrieves the contract address when i put the index
    function getSimpleStorage(uint256 _index) public view returns(address){
         return address(simpleStorageArray[_index]);
    }

}