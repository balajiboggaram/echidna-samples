import "token.sol";

contract TestToken is Token {
    address echidna_caller = msg.sender;

    constructor() public {
        balances[echidna_caller] = 10000;
    }

    // add the property
    function echidna_test_balance() public view returns (bool) {
	    return balances[echidna_caller] <= 10000; // echidna property to ensure that balance of the caller is always less than 10000
    }
}
