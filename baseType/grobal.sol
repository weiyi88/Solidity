pragma solidity ^0.4.0;

contract grobal{

    // 合约调用者地址
    function getgrobal()view returns(address){
        return msg.sender;
    }

    // 挖矿的困难度
    function getgrobal2()view returns(uint){
        return block.difficulty;
    }
    // 区块块号，一定是固定的
    function getgrobal3() view returns(uint){
        return block.number;
    }

    // 当前区块是哪个矿工挖出来的
    function getgrobal4() view returns(address){
        return block.coinbase;
    }
}