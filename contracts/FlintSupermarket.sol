pragma solidity ^0.4.25;

contract FlintSupermarket {

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
  sstore(add(0, 0), 0)
  sstore(add(0, 4), 0)
  sstore(add(0, 5), 0)
  sstore(add(0, 3), _caller)
  Wei$init$Int(add(0, 6), 0, 0)
  sstore(add(0, 7), 1)
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

      if eq(sload(add(0, 7)), 10000) { revert(0, 0) }
      switch flint$selector()
      
      case 0xd0e30db0 /* deposit() */ {
        
        
        FlintSupermarket$deposit$Wei()
      }
      
      case 0x6881385b /* payday() */ {
        
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        if eq(_flintCallerCheck, 0) { revert(0, 0) }
        flint$checkNoValue(callvalue())
        flintAttemptCallWrapperHard$FlintSupermarket$payday()
      }
      
      case 0xcc9aba7b /* employ(uint256,address) */ {
        
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        if eq(_flintCallerCheck, 0) { revert(0, 0) }
        flint$checkNoValue(callvalue())
        flintAttemptCallWrapperHard$FlintSupermarket$employ$Int_Address(flint$decodeAsUInt(0), flint$decodeAsAddress(1))
      }
      
      case 0xd96a094a /* buy(uint256) */ {
        let _flintStateCheck := 0
        _flintStateCheck := add(_flintStateCheck, flint$isMatchingTypeState(0, sload(add(0, 7))))
        if eq(_flintStateCheck, 0) { revert(0, 0) }
        
        FlintSupermarket$buy$Int_Wei(flint$decodeAsUInt(0))
      }
      
      case 0x43d726d6 /* close() */ {
        let _flintStateCheck := 0
        _flintStateCheck := add(_flintStateCheck, flint$isMatchingTypeState(0, sload(add(0, 7))))
        if eq(_flintStateCheck, 0) { revert(0, 0) }
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        if eq(_flintCallerCheck, 0) { revert(0, 0) }
        flint$checkNoValue(callvalue())
        flintAttemptCallWrapperHard$FlintSupermarket$close()
      }
      
      case 0xfcfff16f /* open() */ {
        let _flintStateCheck := 0
        _flintStateCheck := add(_flintStateCheck, flint$isMatchingTypeState(1, sload(add(0, 7))))
        if eq(_flintStateCheck, 0) { revert(0, 0) }
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        if eq(_flintCallerCheck, 0) { revert(0, 0) }
        flint$checkNoValue(callvalue())
        flintAttemptCallWrapperHard$FlintSupermarket$open()
      }
      
      case 0xc21a702a /* restock(uint256) */ {
        let _flintStateCheck := 0
        _flintStateCheck := add(_flintStateCheck, flint$isMatchingTypeState(1, sload(add(0, 7))))
        if eq(_flintStateCheck, 0) { revert(0, 0) }
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 0))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 1))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 2))))
        if eq(_flintCallerCheck, 0) { revert(0, 0) }
        flint$checkNoValue(callvalue())
        flintAttemptCallWrapperHard$FlintSupermarket$restock$Int(flint$decodeAsUInt(0))
      }
      
      default {
        revert(0, 0)
      }

      //////////////////////////////////////
      //// -- User-defined functions -- ////
      //////////////////////////////////////

      function FlintSupermarket$deposit$Wei()  {
  let _caller := caller()
let _value := flint$allocateMemory(32)
Wei$init$Bool_Int(_value, 1, 1, callvalue())
Wei$transfer$$inoutWei(add(0, 6), 0, _value, 1)
}

function FlintSupermarket$incrementCustomers$Int(_count)  {
  let _caller := caller()
sstore(add(0, 5), flint$add(sload(add(0, 5)), _count))
}

function FlintSupermarket$resetCustomers()  {
  let _caller := caller()
sstore(add(0, 5), 0)
}

function FlintSupermarket$payday()  {
  for {
  let flint$employee$i := 0
let flint$employee$arrLen := 3
} lt(flint$employee$i, flint$employee$arrLen) {
  flint$employee$i := add(flint$employee$i, 1)
} {
  let _employee := sload(flint$storageFixedSizeArrayOffset(0, flint$employee$i, 3))
let _salary := flint$allocateMemory(32)
Wei$init$$inoutWei_Int(_salary, 1, add(0, 6), 0, 42)
Flint$Global$send$Address_$inoutWei(_employee, _salary, 1)
}
}

function FlintSupermarket$employ$Int_Address(_position, _employee)  {
  sstore(flint$storageFixedSizeArrayOffset(0, _position, 3), _employee)
}

function FlintSupermarket$buy$Int_Wei(_amount)  {
  let _value := flint$allocateMemory(32)
Wei$init$Bool_Int(_value, 1, 1, callvalue())
let _enoughCash := eq(Wei$getRawValue(_value, 1), flint$mul(_amount, 10))
Flint$Global$assert$Bool(_enoughCash)
Wei$transfer$$inoutWei(add(0, 6), 0, _value, 1)
switch and(or(lt(_amount, 2), eq(_amount, 2)), or(lt(_amount, sload(add(0, 4))), eq(_amount, sload(add(0, 4)))))
case 1 {
  sstore(add(0, 4), flint$sub(sload(add(0, 4)), _amount))
}
FlintSupermarket$incrementCustomers$Int(1)
}

function FlintSupermarket$close()  {
  FlintSupermarket$resetCustomers()
sstore(add(0, 7), 1)
}

function FlintSupermarket$open()  {
  switch or(gt(sload(add(0, 4)), 1005011), eq(sload(add(0, 4)), 1005011))
case 1 {
  sstore(add(0, 7), 0)
}
}

function FlintSupermarket$restock$Int(_amount)  {
  sstore(add(0, 4), flint$add(sload(add(0, 4)), _amount))
}

      //////////////////////////////////////
      //// --   Wrapper functions    -- ////
      //////////////////////////////////////

      function flintAttemptCallWrapperHard$FlintSupermarket$payday() {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          revert(0, 0)
        }
        default {
          FlintSupermarket$payday() 
        }
      }
      function flintAttemptCallWrapperSoft$FlintSupermarket$payday() -> ret {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          ret := 0
        }
        default {
          FlintSupermarket$payday() 
          ret := 1
        }
      }
      
      function flintAttemptCallWrapperHard$FlintSupermarket$employ$Int_Address(_position, _employee) {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          revert(0, 0)
        }
        default {
          FlintSupermarket$employ$Int_Address(_position, _employee) 
        }
      }
      function flintAttemptCallWrapperSoft$FlintSupermarket$employ$Int_Address(_position, _employee) -> ret {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          ret := 0
        }
        default {
          FlintSupermarket$employ$Int_Address(_position, _employee) 
          ret := 1
        }
      }
      
      function flintAttemptCallWrapperHard$FlintSupermarket$close() {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          revert(0, 0)
        }
        default {
          FlintSupermarket$close() 
        }
      }
      function flintAttemptCallWrapperSoft$FlintSupermarket$close() -> ret {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          ret := 0
        }
        default {
          FlintSupermarket$close() 
          ret := 1
        }
      }
      
      function flintAttemptCallWrapperHard$FlintSupermarket$open() {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          revert(0, 0)
        }
        default {
          FlintSupermarket$open() 
        }
      }
      function flintAttemptCallWrapperSoft$FlintSupermarket$open() -> ret {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        
        switch _flintCallerCheck
        case 0 {
          ret := 0
        }
        default {
          FlintSupermarket$open() 
          ret := 1
        }
      }
      
      function flintAttemptCallWrapperHard$FlintSupermarket$restock$Int(_amount) {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 0))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 1))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 2))))
        
        switch _flintCallerCheck
        case 0 {
          revert(0, 0)
        }
        default {
          FlintSupermarket$restock$Int(_amount) 
        }
      }
      function flintAttemptCallWrapperSoft$FlintSupermarket$restock$Int(_amount) -> ret {
        let _flintCallerCheck := 0
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(3)))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 0))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 1))))
        _flintCallerCheck := add(_flintCallerCheck, flint$isValidCallerProtection(sload(add(0, 2))))
        
        switch _flintCallerCheck
        case 0 {
          ret := 0
        }
        default {
          FlintSupermarket$restock$Int(_amount) 
          ret := 1
        }
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
}
interface _InterfaceFlintSupermarket {
  
  function deposit() payable external;
  function payday() external;
  function employ(uint256 _position, address _employee) external;
  function buy(uint256 _amount) payable external;
  function close() external;
  function open() view external;
  function restock(uint256 _amount) external;
  
}