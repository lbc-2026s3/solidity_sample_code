// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// ERC20 : this(0xwallet) -> alice

// ERC20.transfer

// ERC20 balances[0xwallet] = 1110;
// ETH
contract ContractWallet {
    event Deposit(address indexed sender, uint amount, uint balance);
    event ExecuteTransaction(address indexed to, uint value, bytes data);

    address[] public owner;

    mapping (id => ) approves

    modifier onlyOwner() {
        require(owner == msg.sender, "not owner");
        _;
    }

    constructor(address _owner) {
        owner = _owner;
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    // executeTransaction(ERC20,0, trasnfer(address,value) )
    // Bank:
    // ERC20.transfer
    // to: 目标合约地址
    // data: trasnfer(address,value)
    // value: 转账金额 : 0
    // data: 目标合约的函数签名和参数 ABI
    function executeTransaction(
        address _to,
        uint _value,
        bytes memory _data
    ) public onlyOwner {

        if ( approves[id]   ) {
            (bool success, ) = _to.call{value: _value}(_data);

            require(success, "tx failed");

            emit ExecuteTransaction(_to, _value, _data);
        }


    }
}
