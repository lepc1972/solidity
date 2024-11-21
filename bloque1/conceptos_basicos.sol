// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./ERC20.sol";


contract PrimerContrato{

    // Declaracion de la variable de tipo ERC20
    ERC20Basic token;
    // en esta variable esta la direccion de la persona que despliega el contrato
    address owner;
    uint256 bloqueActual = block.number;

    constructor() payable {
        owner = msg.sender;
        token = new ERC20Basic(1000); // inicializamos el numero de tokens
        


    }
    function BloqueActual() public view returns (uint256){

        return bloqueActual;
    }
    function Msender() public view returns (address ){
        return owner;
    }
    
}