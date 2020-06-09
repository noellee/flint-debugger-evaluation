pragma solidity ^0.4.25;

contract SolExampleContract {
  int[4] arr;
  int writeCount = 0;

  function incrementWriteCount() private {
    writeCount += 1;
  }
  
  function write(uint index, int value) public {
    if (index < arr.length) {
      arr[index] = value;
      incrementWriteCount();
    }
  }
}
