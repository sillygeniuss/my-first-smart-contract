// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// named import
import {SimpleStorage} from "./SimpleStorage.sol";
import {SimpoleStorage2, SimpoleStorage3} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}
