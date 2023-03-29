pragma solidity ^0.4.0;


contract addressTest {
     // 每个字符4位，一个字节=8位，地址40字符=160位
    address public account ; 
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 uint160  账户地址
    //0xd9145CCE52D386f254917e481eB44e9943F39138 uint160  合约地址

    address account1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address account2 = 0xd9145CCE52D386f254917e481eB44e9943F39138;


    // 地址类型 address  = uint160 
    function changeIt() view returns(uint160){
        return uint160(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function changeIt2() view returns(address){
        return address(520786028573371803640530888255888666801131675076);
    }

    // 地址可以比较
    function changeIt3() view returns(bool){
         return account1 > account2;
    }

    function changeIt4() view returns(bool){
         return account1 < account2;
    }

    function changeIt5() view returns(bool){
         return account1 <= account2;
    }

    function changeIt6() view returns(bool){
         return account1 >= account2;
    }


}