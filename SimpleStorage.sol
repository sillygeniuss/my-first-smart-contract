// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // 设定源文件执行版本，大于等于0.8.19

contract SimpleStorage {
    // Basic Types: https://docs.soliditylang.org/en/v0.8.6/types.html
    bool hasFavoriteNumber;
    bool hasFavoriteFruit = true;

    uint256 myFavoriteNumber;

    uint256[] listOfFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    Person public anders = Person(31, "Anders");
    Person public bob = Person({favoriteNumber: 28, name: "Bob"});

    function store(uint _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retreive() public view returns(uint256) {
        return myFavoriteNumber;
    }
}
