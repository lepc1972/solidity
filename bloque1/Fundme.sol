// SPDX-License-Identifier: MIT

//se copio interface de repositorio github, para poder
//usar sus funciones

pragma solidity ^0.8.4;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract Fundme {

    mapping (address => uint256) public addressToAmountFunded;//por medio de la direccion, saber cuanto dinero se envio

    function fund() public payable {
        //cuanto ETH -> USD
        addressToAmountFunded[msg.sender] += msg.value; //se x direccion cuanto dinero se ha enviado


    }
    // function to get usd based on eth



    
}
