// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MockGTXSpot} from "../src/MockGTXSpot.sol";

contract MockGTXSpotScript is Script {
    MockGTXSpot public mockGTXSpot;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mockGTXSpot = new MockGTXSpot();

        vm.stopBroadcast();
    }
}
