// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // pragma 是一个源自希腊语的词 英语中指代某种特定的指令或约定

contract SimpleContract {
    // 1)基本类型声明
    uint256 numA = 100; // 无符号表示 0或正整数
    int256 numB = -100; // 有符号表示 0或正负整数
    uint8 numC = 255; // 无符号表示 0-255 8代表bit的位数，可以是uint16 uint32 uint64 uint256等类型,目的是节省空间,可减少gas费用的产生
    bool isTrue = false; // 布尔值 true 或 false
    bytes myName = "yfcoder"; // 字符串存储 Solidity 会将 "yfcoder" 转换为一个字节数组，按照 UTF-8 编码方式进行转义。
    string strHello = "hello..."; // 字符串
    address addr = 0x190D407B883997bEf77eFBBe66f8950e716079BC; // 地址类型 钱包的地址

    // 变量的修饰符 public 外部可用 priate 内部可用
    uint256 myFavoriteNumber = 55;

    // 2)函数类型
    // 函数声明 使用function关键字 
    function store(uint256 num) public {
        // 函数名称store 可以自定义 这里的store表示仓储的意思
        // 参数名num 根据需要可以取任何变量名
        // 函数的修饰符：
        // public 该函数对外部世界是可见的 内部也可用
        // private 函数仅内部可以调用 仅内部合约中的其他方法能访问到
        // internal 该函数仅内部可以调用 同一合约中所有的方法都可以调用这个内置函数
        // exteral 接收来自外部的函数调用 内部不能使用
        myFavoriteNumber = num; // 更改变变量的状态 会产生gas费用
    }

    function retrieve() public view returns(uint256){
        // 函数名 retrieve 指取回的意思
        // 函数的修饰符：
        // view 该函数只有读取状态时可以访问到，不会修改状态。
        // pure 该方法不改变任何状态。
        // returns(uint256) 返回值的类型
        return myFavoriteNumber;
    }
}
