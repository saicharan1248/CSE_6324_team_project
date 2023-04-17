pragma solidity 0.8.16;
contract OverUnderFlow {
    uint8 public salt = 100;

    function UnderFlowCheck(uint256 x) external view {
        if (x > salt) revert UnderFlow();

    }

    function OverFlowCheck(uint256 x) external view {
        if(uint256(x + salt) < type(uint8).max) revert OverFlow();
    }
}
