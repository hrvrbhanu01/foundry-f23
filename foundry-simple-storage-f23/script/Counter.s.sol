// SPDX-License-Identifier: UNLICENSED

//This is a script for deploying our smart-contract inside test src directory:
//vm.  is only used in foundry (cheatcode)
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function run() external returns(Counter) {
        vm.startBroadcast();

        Counter counter = new Counter();

        vm.stopBroadcast();
        return counter;
    }

}
