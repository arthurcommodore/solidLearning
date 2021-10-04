pragma solidity 0.5.2;

contract HellowWorld {
	string public text;
	uint public number;
	address public userAddres;
	bool public answer;
	mapping (address => uint) public hasInteracted;

	function setText(string memory myText) public {
		text = myText;
		setInteracted();
	}

	function setNumber(uint myNumber) public {
		number = myNumber;
		setInteracted();
	}

	function setUserAddress() public {
		userAddres = msg.sender;
		setInteracted();
	}

	function setAnswer(bool value) public {
		answer = value;
		setInteracted();
	}

	function setInteracted() private {
		hasInteracted[msg.sender] += 1;
	}

	function somar(uint num1, uint num2) public pure returns(uint) {
		return num1 + num2;
	}
	
	function sub(uint num1, uint num2) public pure returns(uint) {
		return num1 - num2;
	}

	function mult(uint num1, uint num2) public pure returns(uint) {
		return num1 * num2;
	}

	function pow(uint num1, uint num2) public pure returns(uint) {
		return num1 ** num2;
	}

	function sumStored(uint num1) public view returns(uint) {
		return num1 + number;
	}
}