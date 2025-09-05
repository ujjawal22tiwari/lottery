// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

contract lottery{

    address public  manager;
    address payable [] public  players;


    constructor(){
        manager = msg.sender;
    }
    function alreadyEnterd() view  private returns (bool){
        for(uint i = 0; i<players.length; i++){
            if(players[i] == msg.sender)
            return true;
        }
        return  false;

    }


    function enter() payable public {
        require(msg.sender != manager,"manager cannot enter");
         require(alreadyEnterd() == false, "players all ready enters");
         require(msg.value >= 0.01 ether, "Miniums ammmount must to payed");
         players.push(payable (msg.sender ));
    }

    function random() view  private  returns(uint){
        return uint(sha256(abi.encodePacked(block.prevrandao,block.number,players)));
    }

    function pickWinner() public {
        require(msg.sender == manager, "only manager can pick the winner");
    // uint index =     random()%players.length;
    //   address constantAddress= address(this);
    //   players[index].transfer(constantAddress.balance);
    //   players= new address payable [](0);

       uint index = random() % players.length;
    address winner = players[index];
    payable(winner).transfer(address(this).balance);
    emit WinnerPicked(winner); // ← important
    delete players;
    }

    function getPlayers( )view  public returns (address payable [] memory){
        return players;
    }


event WinnerPicked(address winner);

 

}