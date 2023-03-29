pragma solidity ^0.4.0;

contract BoolearnTest{

    bool _a;
    int num1 = 100;
    int num2 = 200;


    function getBool() public  returns(bool){
        return _a;
    }
    
    function panduan() returns(bool){
        return num1 == num2;
    }

    function panduan2( ) returns(bool){
        return num1 != num2;
    }
    

}