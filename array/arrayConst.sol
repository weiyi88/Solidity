pragma solidity ^0.4.0;

    // 数组字面量，不能修改
contract ArrayLiterals{
    
    // 返回类型 与 相等
    // uint 默认是uint256   
    function getArrrayLiterals() returns(uint[3]){

        // solidity 会默认以最小值推断，返回的数据类型 
        // return [1,2,3];
    }

    function getArrayLiterals2()returns(uint8[3]){
        // uint8 最高255
        return [255,2,3];
    }

    function getArrayLiterals3()returns(uint[3]){
        // 可以强制转换类型，符合返回类型
        return [uint(1),2,3];
    }

    function getArrayLiterals6(uint[3] grade) view returns(uint){
        uint sum = 0;
        for(uint i =0;i<grade.length;i++){
            sum+=grade[i];
        }
        return sum;
    }


}