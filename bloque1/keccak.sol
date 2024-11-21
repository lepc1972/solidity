// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;

contract hash{
    function calcularHash(string memory _cadena) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena));
    }

    function  calcularHash2(string memory _cadena1, uint _k, address _direccion) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena1,_k,_direccion));
    }

    function  calcularHash3(string memory _cadena1, uint _k, address _direccion) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena1,_k,_direccion, "luis", uint(9)));
    }

}
