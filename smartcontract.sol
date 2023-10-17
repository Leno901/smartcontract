// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) public {
        require(msg.sender == owner, "Only the owner can set the value");
        require(_newValue > value, "New value must be greater than the current value");

        value = _newValue;
    }

    function assertv(uint256 x, uint256 y) public pure returns (uint256) {
        assert(x + y >= x); // This condition will always be true
        return x + y;
    }

    function revertv(uint256 x, uint256 y) public pure returns (uint256) {
        if (x + y < x) {
            revert("Sum overflowed");
        }
        return x + y;
    }
}
