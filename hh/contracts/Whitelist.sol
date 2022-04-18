// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Whitelist {

// declare max
// create data structure for addresses (mapping)
// declare number of wl addresses
// create constructor: set max using the constructor parameter
// funtion to add address: 
//      should not already be in the wl
//      should not be maxed out
//      add address to mapping
//      increment num of addresses

    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted.");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "Limit reached.");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}