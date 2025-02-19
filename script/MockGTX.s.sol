// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MockGTX} from "../src/MockGTX.sol";

contract MockGTXScript is Script {
    MockGTX public mockGTX;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mockGTX = new MockGTX();

        vm.stopBroadcast();
    }
}
