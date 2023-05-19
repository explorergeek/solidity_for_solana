pragma solidity ^0.8.0;

library Accounts {

  struct Account {
    uint64 nonce;
    bytes32 owner;
    bytes data;
  }

  function createAccount(bytes32 owner) public returns (Account memory account) {
    account.nonce = 0;
    account.owner = owner;
    account.data = bytes32(0);
    return account;
  }

  function getAccount(bytes32 address) public view returns (Account memory account) {
    account.nonce = 0;
    account.owner = address;
    account.data = bytes32(0);
    return account;
  }

  function updateAccount(Account memory account) public returns (Account memory) {
    account.nonce = account.nonce + 1;
    return account;
  }

}
