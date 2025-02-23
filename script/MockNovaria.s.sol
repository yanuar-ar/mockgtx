// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MockVault} from "../src/novaria/MockVault.sol";
import {MockPT} from "../src/novaria/MockPT.sol";

contract MockNovariaScript is Script {
    MockVault public mockVault;
    MockPT public mockPT;

    address token = 0xf1CeAFabFe0c541fe45Bcd2Ed391e8BE4105b66A;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mockVault = new MockVault(token);
        mockPT = new MockPT(address(mockVault));

        console.log("mockVault deployed to", address(mockVault));
        console.log("mockPT deployed to", address(mockPT));

        vm.stopBroadcast();
    }
}
