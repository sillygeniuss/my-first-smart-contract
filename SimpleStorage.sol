// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // 设定源文件执行版本，大于等于0.8.19

contract SimpleStorage {
    // Basic Types: https://docs.soliditylang.org/en/v0.8.6/types.html
    bool hasFavoriteNumber;
    bool hasFavoriteFruit = true;

    uint256 myFavoriteNumber;

    uint256[] listOfFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPerson;

    mapping(string => uint256) public nameToFavoriteNum;

    function store(uint _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retreive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPerson.push(Person(_favoriteNumber, _name));
        nameToFavoriteNum[_name] = _favoriteNumber;
    }
}

contract SimpoleStorage2 {}

contract SimpoleStorage3 {}
