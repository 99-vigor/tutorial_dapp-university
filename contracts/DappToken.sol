pragma solidity ^0.4.2;

contract DappToken {
	uint256 public totalSupply;

	constructor(uint256 _supply) public {
		totalSupply = _supply;
	}
}