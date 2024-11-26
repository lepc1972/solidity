// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;
import {SimpleStorage} from "./cyfrin_SimpleStorage.sol";



contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContacts;


    //SimpleStorage public simpleStorage; // SimpleStorage type public variable simplestorage



    function createSimpleStorageFactory() public {
        listOfSimpleStorageContacts.push(new SimpleStorage());//el push es para añadir un objeto
        //simpleStorage = new SimpleStorage(); //crear un nuevo contrato SimpleStorage
        
    }
    // traer funcion store del contracto SimpleStorage
    function sfStore(uint256 _SimpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //address siempre
        //abi application binary interface siempre

    }
    // function that counts contracts in SimpleStorage[]
    function sfLength() public view returns(uint){
        return listOfSimpleStorageContacts.length;
    }
    
    
        
    
    // alternativa para obtener el contrato segun el index en el array
    function getSimpleStorageContractAt(uint256 _index) public view returns (SimpleStorage) {
    require(_index < listOfSimpleStorageContacts.length, "Index out of range");
    return listOfSimpleStorageContacts[_index];
}
    //funcion que elimina un elemento segun el indice
    function removeSimpleStorageContract(uint256 _index) public {
    require(_index < listOfSimpleStorageContacts.length, "Index out of range");
    
    // Mover todos los elementos después del índice a ocupar el espacio vacío
    for (uint256 i = _index; i < listOfSimpleStorageContacts.length - 1; i++) {
        listOfSimpleStorageContacts[i] = listOfSimpleStorageContacts[i + 1];
    }
    
    // Eliminar el último elemento (que ahora ocupa la posición eliminada)
    listOfSimpleStorageContacts.pop();
}

    //funcion que muestra todo el contenido de un array dinamico
    function getAllcontentSimpleStorageContracts() public view returns (SimpleStorage[] memory contracts) {
    SimpleStorage[] memory result = new SimpleStorage[](listOfSimpleStorageContacts.length);
    
    for (uint256 i = 0; i < listOfSimpleStorageContacts.length; i++) {
        result[i] = listOfSimpleStorageContacts[i];
    }
    
    return result;
}


   



}