pragma solidity ^0.5.3;

contract Store {
  string public value;

  function setValue(string calldata newValue) external {
    value = newValue;
  }
}