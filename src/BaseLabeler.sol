// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BaseLabeler {
    // owner => target address => label
    mapping(address => mapping(address => string)) public labels;

    event LabelSet(address indexed owner, address indexed target, string label);

    function setLabel(address target, string calldata text) external {
        labels[msg.sender][target] = text;
        emit LabelSet(msg.sender, target, text);
    }
}
