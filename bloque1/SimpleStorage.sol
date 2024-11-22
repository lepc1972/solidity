// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SimpleStorage {
    uint256 fovoriteNumber;
   // int256 favoriteInt = -7;
   // string favoriteString = "Hello World";
    //bool favoriteBool = true;
    //address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //bytes32 favoriteBytes = 'hola';

    function store(uint256 _favoriteNumber) public {
        fovoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns (uint256) {
        return fovoriteNumber;
    }

    struct People{
        string name;
        uint256 favoriteNumber;
    }

    mapping (string => uint256) public nameToFavoriteNumber; // consultar en el diccionario de tipo mapping la clave _name y retorn

    People[] public people; //en esta lista guardamos datos de la funcion addperson
    People public  Person = People({name:"Hayden",favoriteNumber:1});

    function addPerson(string memory _name,uint256 _favoriteNumber)public { // guarda los datos en la lista people
        people.push(People(_name,_favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }





     
    
}