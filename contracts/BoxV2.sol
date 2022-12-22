//implementetion (logic contract)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BoxV2 {
    uint256 internal value;
    event ValueChange(uint256 newValue);

    constructor() {}

    function store(uint256 newValue) public {
        value = newValue;
        emit ValueChange(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 2;
    }

    function increment() public returns (uint256) {
        value = value + 1;
        emit ValueChange(value);
    }
}
