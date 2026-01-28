// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../src/BaseLabeler.sol";

contract BaseLabelerTest is Test {
    BaseLabeler labeler;
    address user1 = address(1);
    address user2 = address(2);
    address target = address(3);

    function setUp() public {
        labeler = new BaseLabeler();
    }

    function test_LabelIsolation() public {
        vm.prank(user1);
        labeler.setLabel(target, "Contact A");

        vm.prank(user2);
        labeler.setLabel(target, "Contact B");

        assertEq(labeler.labels(user1, target), "Contact A");
        assertEq(labeler.labels(user2, target), "Contact B");
    }
}
