// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Mands is ERC20 {
  //R$20 = 1 MADCoin
  uint constant _initial_supply = 10000 * ( 10 ** 18);

  mapping (address => uint) clientToken; //Cada cliente pode ver apenas o seu saldo

  event PointsEarned(address indexed user, uint256 points);
  event PointsRedeemed(address indexed user, uint256 points);

  constructor() ERC20("Mands", "MAD") public {
    _mint(msg.sender, _initial_supply);
  }

  //Função para ganhar pontos
  //Função para resgatar pontos
  //Função para aprovar que o usuário transfira/recebe seus pontos
  //Função que apenas o próprio cliente ou a loja veja seu saldo
}


//Criar outro contrato que cadastra as lojas confiáveis e que podem ver o saldo do cliente