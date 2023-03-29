pragma solidity ^0.4.0;

contract payableTest{
    // 必须使用payable 关键词
    // 代表我们可以通过这个函数给我们合约地址充值、转账
    function pay() payable{

    }

    // 获取账户上的金额
    function getBalance()returns(uint){
        return this.balance;
     }

    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4    //账户地址
    //0xDA0bab807633f07f013f94DD0E6A4F96F8742B53    //合约地址
    //0xDA0bab807633f07f013f94DD0E6A4F96F8742B53    //this
    function getThis()view returns(address){
        return this;    // 当前合约
    }

    // 获取账户的余额信息
    function getRandomBalance(address account)view returns(uint){
        return account.balance;
    }

    // 给固定 账户 转账
    function transfer() payable{
        address account = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        account.transfer(msg.value);
    }

    // 可以，本账户  给。当前合约转账
    function transfer2()payable{
        this.transfer(msg.value);
    }
    // this.transfer 必须要带payable的回滚函数
    function ()payable{

    }

}