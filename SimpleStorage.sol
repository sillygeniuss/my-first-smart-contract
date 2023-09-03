// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // 设定源文件执行版本，大于等于0.8.19

contract SimpleStorage {
    // Basic Types: https://docs.soliditylang.org/en/v0.8.6/types.html
    bool hasFavoriteNumber;
    bool hasFavoriteFruit = true;

    uint public  favoriteNumber;
    string favoriteIntNumberInText = "nine1nine";

    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // address thisContract = 0xd9145CCE52D386f254917e481eB44e9943F39138;
}
