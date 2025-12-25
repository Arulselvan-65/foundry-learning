// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract SimpleStorage {
    uint256 public favNumber;

    function save(uint256 num) external {
        favNumber = num;
    }

    function getNumber() external view returns(uint256) {
        return favNumber;
    }
}
