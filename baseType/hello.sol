// 版本信息
pragma solidity ^0.4.0;

// 类 也就是合约
contract Helloworld {
    string Myname = "Aring";

    // 权限标志符
    /**
        public 任何人都可以调用该函数，包括Dapp的使用者
        private 只有合约本身可以调用该函数（在另一个函数中） private 
        internal 只有这份合同以及由此产生所有合同才能称之为合同
        external 只有外部可以调用该函数，而合约内部不能调用
    **/

    // 对象的行为
    function getName() public view returns (string) {
        return Myname;
    }

    function changeName(string NewName) public {
        Myname = NewName;
    }

    // 永久，不会读取状态变量，固定输入输出，省gas
    function pureTest(string _name) public pure returns (string) {
        return _name;
    }
}
