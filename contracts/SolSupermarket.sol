pragma solidity ^0.4.25;

contract SolSupermarket {
  enum State {Opened, Closed}
  State state;
  
  address[3] staff;
  address manager;

  uint stock = 0;

  int customers = 0;

  constructor () public {
    manager = msg.sender;
    state = State.Closed;
  }

  function deposit() public payable {
    // do nothing
  }

  function incrementCustomers(int count) private {
    customers += count;
  }

  function resetCustomers() private {
    customers = 0;
  }

  function payday() public calledByManager() {
    for (uint i = 0; i < staff.length; i++) {
      uint salary = 42;
      staff[i].transfer(salary);
    }
  }

  function employ(uint position, address employee) public calledByManager() {
    staff[position] = employee;  // dangerous, might overflow
  }

  function buy(uint amount) public payable stateIs(State.Opened) {
    bool enoughCash = msg.value == amount * 10;
    require(enoughCash);

    if (amount <= 2 && amount <= stock) {
      stock -= amount;
    }

    incrementCustomers(1);
  }

  function close() public stateIs(State.Opened) calledByManager() {
    resetCustomers();
    state = State.Closed;
  }

  function open() public stateIs(State.Closed) calledByManager() {
    if (stock >= 1005011) {
      state = State.Opened;
    }
  }

  function restock(uint amount) public stateIs(State.Closed) calledByManagerOrStaff() {
    stock += amount;
  }

  // modifiers to approximate flint features

  modifier stateIs(State requiredState) {
    require(state == requiredState, "Not in appropriate state.");
    _;
  }

  modifier calledByManager() {
    require(msg.sender == manager, "Not an authorized caller.");
    _;
  }

  modifier calledByStaff() {
    require(isStaff(), "Not an authorized caller.");
    _;
  }

  modifier calledByManagerOrStaff() {
    require(msg.sender == manager || isStaff(), "Not an authorized caller.");
    _;
  }

  function isStaff() private view returns (bool) {
    for (uint i = 0; i < staff.length; i++) {
      if (msg.sender == staff[i]) {
        return true;
      }
    }
    return false;
  }
}
