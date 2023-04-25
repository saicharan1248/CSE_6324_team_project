pragma solidity 0.8.16;
error InsufficientFunds(address account, uint256 balance, uint256 amount);
contract MyToken {
    mapping(address => uint256) private _balances;
    uint256 private _totalSupply;

    function transfer(address recipient, uint256 amount) public returns (bool) {
        if (_balances[msg.sender] < amount) {
            revert InsufficientFunds(msg.sender, _balances[msg.sender], amount);
        }
        _balances[msg.sender] -= amount;
        _balances[recipient] += amount;
        return true;
    }
}
