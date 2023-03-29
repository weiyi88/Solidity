pragma solidity ^0.4.0;

contract TwoArray{

    uint[2][3]grade = [
            [1,2],
            [3,4],
            [5,6]
                ];
    
    // 获取 数组有多少个元素
    function getLen()returns(uint){
        return grade.length;
    }

    // 长度不能被修改
    function changeoneLength(){
        // grade.length = 100;
    }

    // 获取每个元素的长度
    function getTwoLength()returns(uint){
        return grade[0].length;
    }

    //获取内动
    function getContent()view returns(uint[2][3]){
        return grade;
    }

    //获取内容并求和
    function ad()view returns(uint){
        uint sum = 0;
        for(uint i=0;i<grade.length;i++){
            for(uint j = 0;j<grade[0].length;j++){
                sum+=grade[i][j];
            }
        }
        return sum;
    }

    // 修改内容
    function changeContent(){
        grade[1][0] = 100;
    }
}