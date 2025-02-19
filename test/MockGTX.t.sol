// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MockGTX} from "../src/MockGTX.sol";

contract MockGTXTest is Test {
    MockGTX public mockGTX;

    function setUp() public {
        mockGTX = new MockGTX();
    }
}
