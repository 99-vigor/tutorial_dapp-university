pragma solidity ^0.4.2;

contract DappToken {
	string public name = "DApp Token";
	string public symbol = "DAPP";
	string public standard = "Dapp Token v1.0";
	uint256 public totalSupply;

	// You can search for events by indexed values in an event.
	// Indexed is only used for event attributes (?)
	event Transfer(
		address indexed _from,
		address indexed _to,
		uint256 _value);

	mapping(address => uint256) public balanceOf;

	constructor(uint256 _initialSupply) public {
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
	}
	function transfer(address _to, uint256 _amount) public returns(bool success) {
		require(balanceOf[msg.sender] >= _amount);
		balanceOf[msg.sender] -= _amount;
		balanceOf[_to] += _amount;
		emit Transfer(msg.sender, _to, _amount);
		return true;
	}
}