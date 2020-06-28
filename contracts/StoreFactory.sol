pragma solidity ^0.5.3;

import "@openzeppelin/upgrades/contracts/upgradeability/ProxyFactory.sol";
import "./Store.sol";

contract StoreFactory is ProxyFactory {
  address public owner;
  address public impl;

  modifier OnlyOwner() {
    require(msg.sender == owner, 'Only the owner can clone a store');
    _;
  }
  constructor (address _impl) public {
    owner = msg.sender;
    impl = _impl;
  }

  function cloneStore() public OnlyOwner {
    deployMinimal(impl, "");
  }
}