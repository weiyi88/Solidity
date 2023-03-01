// 固定长度字节数

/**
 * bytes1 一个字节，长度1
 * bytes2 两个字节，长度2
 * bytes12 12字节，长度12
 * 不能被修改
 */
pragma solidity ^0.4.0;

contract ByteArray{

    bytes1  public num1 = 0x7a;  // 0111 1010
    bytes2  public num2 = 0x7a68;    // 0111 1010    0110    1000

    bytes12 public num3 = 0x7a68656e67a69616e78756e;  
    
    function getLength() returns(uint){
        return num1.length;
    }

    function getLength2() returns(uint){
        return num2.length;
    }

    function getLength3() returns(uint){
        return num3.length;
    }

    function setlength(){
        // num1.length -18; // 不能编译通过，必须是变量才能被修改
    }
}