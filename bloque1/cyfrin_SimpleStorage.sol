// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {
    uint256 myfavoritenumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    mapping (string => uint256) public NameOfaFavoriteNumber;
    
    Person[] public ListOfPeople;
    // function that add favoritenumber and name
    function addPerson(string memory _name, uint256 _favoritenumber) public{
        ListOfPeople.push(Person(_favoritenumber, _name)); //list n struct
        NameOfaFavoriteNumber[_name] = _favoritenumber; // mapping
    }
    
    function store(uint256 _favoritenumber) public{
        myfavoritenumber =_favoritenumber;

    }
    function retrive() public view returns (uint){ 
       return myfavoritenumber ; 
     
    }
}