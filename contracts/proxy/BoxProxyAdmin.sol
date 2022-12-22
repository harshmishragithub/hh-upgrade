// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol"; //this is for upgradable contracts

contract BoxProxyAdmin is ProxyAdmin {
    constructor(address /*owner*/) ProxyAdmin() {}
}
