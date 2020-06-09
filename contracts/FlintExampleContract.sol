pragma solidity ^0.4.25;

contract FlintExampleContract {

  constructor() public {
    assembly {
      // Memory address 0x40 holds the next available memory location.
      mstore(0x40, 0x60)
  
      //////////////////////////////////////
      //// --      Initializer       -- ////
      //////////////////////////////////////
  
      init()
  function init() {
    
    let _caller := caller()
  sstore(add(0, 4), 0)
  sstore(add(0, 0), 0)
  }
  
      //////////////////////////////////////
      //// --    Struct functions    -- ////
      //////////////////////////////////////
  
      //// Flint$Global::Global.flint@2:1:19  ////
      
      function Flint$Global$send$Address_$inoutWei(_address, _value, _value$isMem)  {
        let _w := flint$allocateMemory(32)
      Wei$init$$inoutWei(_w, 1, _value, _value$isMem)
      flint$send(Wei$getRawValue(_w, 1), _address)
      }
      
      function Flint$Global$fatalError()  {
        flint$fatalError()
      }
      
      function Flint$Global$assert$Bool(_condition)  {
        switch eq(_condition, 0)
      case 1 {
        Flint$Global$fatalError()
      }
      }
      
      //// Wei::Asset.flint@51:1:10  ////
      
      function Wei$init$Int(_flintSelf, _flintSelf$isMem, _unsafeRawValue)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      switch iszero(eq(_unsafeRawValue, 0))
      case 1 {
        Flint$Global$fatalError()
      }
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _unsafeRawValue, _flintSelf$isMem)
      }
      
      function Wei$init$Bool_Int(_flintSelf, _flintSelf$isMem, ___unsafeCompilerOverride, _unsafeRawValue)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      switch eq(___unsafeCompilerOverride, 0)
      case 1 {
        Flint$Global$fatalError()
      }
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _unsafeRawValue, _flintSelf$isMem)
      }
      
      function Wei$init$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)
      }
      
      function Wei$init$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      Wei$transfer$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)
      }
      
      function Wei$setRawValue$Int(_flintSelf, _flintSelf$isMem, _value) -> ret {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _value, _flintSelf$isMem)
      ret := flint$load(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _flintSelf$isMem)
      }
      
      function Wei$getRawValue(_flintSelf, _flintSelf$isMem) -> ret {
        ret := flint$load(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _flintSelf$isMem)
      }
      
      function Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)  {
        switch lt(Wei$getRawValue(_source, _source$isMem), _amount)
      case 1 {
        Flint$Global$fatalError()
      }
      let _unused1 := Wei$setRawValue$Int(_source, _source$isMem, flint$sub(Wei$getRawValue(_source, _source$isMem), _amount))
      let _unused2 := Wei$setRawValue$Int(_flintSelf, _flintSelf$isMem, flint$add(Wei$getRawValue(_flintSelf, _flintSelf$isMem), _amount))
      }
      
      function Wei$transfer$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)  {
        Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, Wei$getRawValue(_source, _source$isMem))
      }
  
  
      //////////////////////////////////////
      //// --     Flint Runtime      -- ////
      //////////////////////////////////////
  
      function flint$selector() -> ret {
        ret := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000)
      }
      
      function flint$decodeAsAddress(offset) -> ret {
        ret := flint$decodeAsUInt(offset)
      }
      
      function flint$decodeAsUInt(offset) -> ret {
        ret := calldataload(add(4, mul(offset, 0x20)))
      }
      
      function flint$store(ptr, val, mem) {
        switch iszero(mem)
        case 0 {
          mstore(ptr, val)
        }
        default {
          sstore(ptr, val)
        }
      }
      
      function flint$load(ptr, mem) -> ret {
        switch iszero(mem)
        case 0 {
          ret := mload(ptr)
        }
        default {
          ret := sload(ptr)
        }
      }
      
      function flint$computeOffset(base, offset, mem) -> ret {
        switch iszero(mem)
        case 0 {
          ret := add(base, mul(offset, 32))
        }
        default {
          ret := add(base, offset)
        }
      }
      
      function flint$allocateMemory(size) -> ret {
        ret := mload(0x40)
        mstore(0x40, add(ret, size))
      }
      
      function flint$checkNoValue(_value) {
        if iszero(iszero(_value)) {
          flint$fatalError()
        }
      }
      
      function flint$isMatchingTypeState(_state, _stateVariable) -> ret {
        ret := eq(_stateVariable, _state)
      }
      
      function flint$isValidCallerProtection(_address) -> ret {
        ret := eq(_address, caller())
      }
      
      function flint$isCallerProtectionInArray(arrayOffset) -> ret {
        let size := sload(arrayOffset)
        let found := 0
        let _caller := caller()
        for { let i := 0 } and(lt(i, size), iszero(found)) { i := add(i, 1) } {
          if eq(sload(flint$storageOffsetForKey(arrayOffset, i)), _caller) {
            found := 1
          }
        }
        ret := found
      }
      
      function flint$isCallerProtectionInDictionary(dictionaryOffset) -> ret {
        let size := sload(dictionaryOffset)
        let arrayOffset := flint$storageDictionaryKeysArrayOffset(dictionaryOffset)
        let found := 0
        let _caller := caller()
        for { let i := 0 } and(lt(i, size), iszero(found)) { i := add(i, i) } {
          let key := sload(flint$storageOffsetForKey(arrayOffset, i))
          if eq(sload(flint$storageOffsetForKey(dictionaryOffset, key)), _caller) {
            found := 1
          }
        }
        ret := found
      }
      
      function flint$return32Bytes(v) {
        mstore(0, v)
        return(0, 0x20)
      }
      
      function flint$isInvalidSubscriptExpression(index, arraySize) -> ret {
        ret := or(iszero(arraySize), or(lt(index, 0), gt(index, flint$sub(arraySize, 1))))
      }
      
      function flint$storageArrayOffset(arrayOffset, index) -> ret {
        let arraySize := sload(arrayOffset)
      
        switch eq(arraySize, index)
        case 0 {
          if flint$isInvalidSubscriptExpression(index, arraySize) { revert(0, 0) }
        }
        default {
          sstore(arrayOffset, flint$add(arraySize, 1))
        }
      
        ret := flint$storageOffsetForKey(arrayOffset, index)
      }
      
      function flint$storageFixedSizeArrayOffset(arrayOffset, index, arraySize) -> ret {
        if flint$isInvalidSubscriptExpression(index, arraySize) { revert(0, 0) }
        ret := flint$add(arrayOffset, index)
      }
      
      function flint$storageDictionaryOffsetForKey(dictionaryOffset, key) -> ret {
        let offsetForKey := flint$storageOffsetForKey(dictionaryOffset, key)
        mstore(0, offsetForKey)
        let indexOffset := sha3(0, 32)
        switch eq(sload(indexOffset), 0)
        case 1 {
          let keysArrayOffset := flint$storageDictionaryKeysArrayOffset(dictionaryOffset)
          let index := add(sload(dictionaryOffset), 1)
          sstore(indexOffset, index)
          sstore(flint$storageOffsetForKey(keysArrayOffset, index), key)
          sstore(dictionaryOffset, index)
        }
        ret := offsetForKey
      }
      
      function flint$storageDictionaryKeysArrayOffset(dictionaryOffset) -> ret {
        mstore(0, dictionaryOffset)
        ret := sha3(0, 32)
      }
      
      function flint$storageOffsetForKey(offset, key) -> ret {
        mstore(0, key)
        mstore(32, offset)
        ret := sha3(0, 64)
      }
      
      function flint$send(_value, _address) {
        let ret := call(gas(), _address, _value, 0, 0, 0, 0)
      
        if iszero(ret) {
          revert(0, 0)
        }
      }
      
      function flint$fatalError() {
        revert(0, 0)
      }
      
      function flint$add(a, b) -> ret {
        let c := add(a, b)
      
        if lt(c, a) { revert(0, 0) }
        ret := c
      }
      
      function flint$sub(a, b) -> ret {
        if gt(b, a) { revert(0, 0) }
      
        ret := sub(a, b)
      }
      
      function flint$mul(a, b) -> ret {
        switch iszero(a)
        case 1 {
          ret := 0
        }
        default {
          let c := mul(a, b)
          if iszero(eq(div(c, a), b)) { revert(0, 0) }
          ret := c
        }
      }
      
      function flint$div(a, b) -> ret {
        if eq(b, 0) { revert(0, 0) }
        ret := div(a, b)
      }
      
      function flint$power(b, e) -> ret {
        ret := 1
        for { let i := 0 } lt(i, e) { i := add(i, 1) }
        {
            ret := flint$mul(ret, b)
        }
      }
      
      function flint$revertIfGreater(a, b) -> ret {
        if gt(a, b) { revert(0, 0) }
      
        ret := a
      }
    }
  }

  function () public payable {
    assembly {
      // Memory address 0x40 holds the next available memory location.
      mstore(0x40, 0x60)

      if eq(sload(add(0, 5)), 10000) { revert(0, 0) }
      switch flint$selector()
      
      case 0x9c0e3f7a /* write(uint256,uint256) */ {
        
        
        flint$checkNoValue(callvalue())
        FlintExampleContract$write$Int_Int(flint$decodeAsUInt(0), flint$decodeAsUInt(1))
      }
      
      default {
        revert(0, 0)
      }

      //////////////////////////////////////
      //// -- User-defined functions -- ////
      //////////////////////////////////////

      function FlintExampleContract$incrementWriteCount()  {
  let _caller := caller()
sstore(add(0, 4), flint$add(sload(add(0, 4)), 1))
}

function FlintExampleContract$write$Int_Int(_index, _value)  {
  let _caller := caller()
switch lt(_index, 4)
case 1 {
  sstore(flint$storageFixedSizeArrayOffset(0, _index, 4), _value)
FlintExampleContract$incrementWriteCount()
}
}

      //////////////////////////////////////
      //// --   Wrapper functions    -- ////
      //////////////////////////////////////

      

      //////////////////////////////////////
      //// --    Struct functions    -- ////
      //////////////////////////////////////

      //// Flint$Global::Global.flint@2:1:19  ////
      
      function Flint$Global$send$Address_$inoutWei(_address, _value, _value$isMem)  {
        let _w := flint$allocateMemory(32)
      Wei$init$$inoutWei(_w, 1, _value, _value$isMem)
      flint$send(Wei$getRawValue(_w, 1), _address)
      }
      
      function Flint$Global$fatalError()  {
        flint$fatalError()
      }
      
      function Flint$Global$assert$Bool(_condition)  {
        switch eq(_condition, 0)
      case 1 {
        Flint$Global$fatalError()
      }
      }
      
      //// Wei::Asset.flint@51:1:10  ////
      
      function Wei$init$Int(_flintSelf, _flintSelf$isMem, _unsafeRawValue)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      switch iszero(eq(_unsafeRawValue, 0))
      case 1 {
        Flint$Global$fatalError()
      }
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _unsafeRawValue, _flintSelf$isMem)
      }
      
      function Wei$init$Bool_Int(_flintSelf, _flintSelf$isMem, ___unsafeCompilerOverride, _unsafeRawValue)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      switch eq(___unsafeCompilerOverride, 0)
      case 1 {
        Flint$Global$fatalError()
      }
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _unsafeRawValue, _flintSelf$isMem)
      }
      
      function Wei$init$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)
      }
      
      function Wei$init$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)  {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), 0, _flintSelf$isMem)
      Wei$transfer$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)
      }
      
      function Wei$setRawValue$Int(_flintSelf, _flintSelf$isMem, _value) -> ret {
        flint$store(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _value, _flintSelf$isMem)
      ret := flint$load(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _flintSelf$isMem)
      }
      
      function Wei$getRawValue(_flintSelf, _flintSelf$isMem) -> ret {
        ret := flint$load(flint$computeOffset(_flintSelf, 0, _flintSelf$isMem), _flintSelf$isMem)
      }
      
      function Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, _amount)  {
        switch lt(Wei$getRawValue(_source, _source$isMem), _amount)
      case 1 {
        Flint$Global$fatalError()
      }
      let _unused1 := Wei$setRawValue$Int(_source, _source$isMem, flint$sub(Wei$getRawValue(_source, _source$isMem), _amount))
      let _unused2 := Wei$setRawValue$Int(_flintSelf, _flintSelf$isMem, flint$add(Wei$getRawValue(_flintSelf, _flintSelf$isMem), _amount))
      }
      
      function Wei$transfer$$inoutWei(_flintSelf, _flintSelf$isMem, _source, _source$isMem)  {
        Wei$transfer$$inoutWei_Int(_flintSelf, _flintSelf$isMem, _source, _source$isMem, Wei$getRawValue(_source, _source$isMem))
      }


      //////////////////////////////////////
      //// --     Flint Runtime      -- ////
      //////////////////////////////////////

      function flint$selector() -> ret {
        ret := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000)
      }
      
      function flint$decodeAsAddress(offset) -> ret {
        ret := flint$decodeAsUInt(offset)
      }
      
      function flint$decodeAsUInt(offset) -> ret {
        ret := calldataload(add(4, mul(offset, 0x20)))
      }
      
      function flint$store(ptr, val, mem) {
        switch iszero(mem)
        case 0 {
          mstore(ptr, val)
        }
        default {
          sstore(ptr, val)
        }
      }
      
      function flint$load(ptr, mem) -> ret {
        switch iszero(mem)
        case 0 {
          ret := mload(ptr)
        }
        default {
          ret := sload(ptr)
        }
      }
      
      function flint$computeOffset(base, offset, mem) -> ret {
        switch iszero(mem)
        case 0 {
          ret := add(base, mul(offset, 32))
        }
        default {
          ret := add(base, offset)
        }
      }
      
      function flint$allocateMemory(size) -> ret {
        ret := mload(0x40)
        mstore(0x40, add(ret, size))
      }
      
      function flint$checkNoValue(_value) {
        if iszero(iszero(_value)) {
          flint$fatalError()
        }
      }
      
      function flint$isMatchingTypeState(_state, _stateVariable) -> ret {
        ret := eq(_stateVariable, _state)
      }
      
      function flint$isValidCallerProtection(_address) -> ret {
        ret := eq(_address, caller())
      }
      
      function flint$isCallerProtectionInArray(arrayOffset) -> ret {
        let size := sload(arrayOffset)
        let found := 0
        let _caller := caller()
        for { let i := 0 } and(lt(i, size), iszero(found)) { i := add(i, 1) } {
          if eq(sload(flint$storageOffsetForKey(arrayOffset, i)), _caller) {
            found := 1
          }
        }
        ret := found
      }
      
      function flint$isCallerProtectionInDictionary(dictionaryOffset) -> ret {
        let size := sload(dictionaryOffset)
        let arrayOffset := flint$storageDictionaryKeysArrayOffset(dictionaryOffset)
        let found := 0
        let _caller := caller()
        for { let i := 0 } and(lt(i, size), iszero(found)) { i := add(i, i) } {
          let key := sload(flint$storageOffsetForKey(arrayOffset, i))
          if eq(sload(flint$storageOffsetForKey(dictionaryOffset, key)), _caller) {
            found := 1
          }
        }
        ret := found
      }
      
      function flint$return32Bytes(v) {
        mstore(0, v)
        return(0, 0x20)
      }
      
      function flint$isInvalidSubscriptExpression(index, arraySize) -> ret {
        ret := or(iszero(arraySize), or(lt(index, 0), gt(index, flint$sub(arraySize, 1))))
      }
      
      function flint$storageArrayOffset(arrayOffset, index) -> ret {
        let arraySize := sload(arrayOffset)
      
        switch eq(arraySize, index)
        case 0 {
          if flint$isInvalidSubscriptExpression(index, arraySize) { revert(0, 0) }
        }
        default {
          sstore(arrayOffset, flint$add(arraySize, 1))
        }
      
        ret := flint$storageOffsetForKey(arrayOffset, index)
      }
      
      function flint$storageFixedSizeArrayOffset(arrayOffset, index, arraySize) -> ret {
        if flint$isInvalidSubscriptExpression(index, arraySize) { revert(0, 0) }
        ret := flint$add(arrayOffset, index)
      }
      
      function flint$storageDictionaryOffsetForKey(dictionaryOffset, key) -> ret {
        let offsetForKey := flint$storageOffsetForKey(dictionaryOffset, key)
        mstore(0, offsetForKey)
        let indexOffset := sha3(0, 32)
        switch eq(sload(indexOffset), 0)
        case 1 {
          let keysArrayOffset := flint$storageDictionaryKeysArrayOffset(dictionaryOffset)
          let index := add(sload(dictionaryOffset), 1)
          sstore(indexOffset, index)
          sstore(flint$storageOffsetForKey(keysArrayOffset, index), key)
          sstore(dictionaryOffset, index)
        }
        ret := offsetForKey
      }
      
      function flint$storageDictionaryKeysArrayOffset(dictionaryOffset) -> ret {
        mstore(0, dictionaryOffset)
        ret := sha3(0, 32)
      }
      
      function flint$storageOffsetForKey(offset, key) -> ret {
        mstore(0, key)
        mstore(32, offset)
        ret := sha3(0, 64)
      }
      
      function flint$send(_value, _address) {
        let ret := call(gas(), _address, _value, 0, 0, 0, 0)
      
        if iszero(ret) {
          revert(0, 0)
        }
      }
      
      function flint$fatalError() {
        revert(0, 0)
      }
      
      function flint$add(a, b) -> ret {
        let c := add(a, b)
      
        if lt(c, a) { revert(0, 0) }
        ret := c
      }
      
      function flint$sub(a, b) -> ret {
        if gt(b, a) { revert(0, 0) }
      
        ret := sub(a, b)
      }
      
      function flint$mul(a, b) -> ret {
        switch iszero(a)
        case 1 {
          ret := 0
        }
        default {
          let c := mul(a, b)
          if iszero(eq(div(c, a), b)) { revert(0, 0) }
          ret := c
        }
      }
      
      function flint$div(a, b) -> ret {
        if eq(b, 0) { revert(0, 0) }
        ret := div(a, b)
      }
      
      function flint$power(b, e) -> ret {
        ret := 1
        for { let i := 0 } lt(i, e) { i := add(i, 1) }
        {
            ret := flint$mul(ret, b)
        }
      }
      
      function flint$revertIfGreater(a, b) -> ret {
        if gt(a, b) { revert(0, 0) }
      
        ret := a
      }
    }
  }
}
interface _InterfaceFlintExampleContract {
  
  function write(uint256 _index, uint256 _value) external;
  
}