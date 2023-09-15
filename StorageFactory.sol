// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// named import
import {SimpleStorage} from "./SimpleStorage.sol";
import {SimpoleStorage2, SimpoleStorage3} from "./SimpleStorage.sol";

contract StorageFactory {
    // SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContract() public {
        listOfSimpleStorage.push(new SimpleStorage());
    }

    function sfStore(
        uint256 _simpleStorgeIndex,
        uint256 _newSimpleStorageNum
    ) public {
        // address(listOfSimpleStorage[_simpleStorgeIndex]).store(_newSimpleStorageNum);
        SimpleStorage(address(listOfSimpleStorage[_simpleStorgeIndex])).store(
            _newSimpleStorageNum
        );
    }

    function sfRetreive(
        uint256 _simpleStorageIndex
    ) public view returns (uint256) {
        return
            SimpleStorage(address(listOfSimpleStorage[_simpleStorageIndex]))
                .retreive();
    }
}
