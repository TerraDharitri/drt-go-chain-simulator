(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i64)))
  (type (;9;) (func (param i32) (result i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 8)))
  (import "env" "bigIntAdd" (func (;1;) (type 3)))
  (import "env" "bigIntGetCallValue" (func (;2;) (type 4)))
  (import "env" "getNumArguments" (func (;3;) (type 0)))
  (import "env" "signalError" (func (;4;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;5;) (type 2)))
  (import "env" "mBufferSetBytes" (func (;6;) (type 6)))
  (import "env" "mBufferNew" (func (;7;) (type 0)))
  (import "env" "mBufferAppend" (func (;8;) (type 2)))
  (import "env" "mBufferAppendBytes" (func (;9;) (type 6)))
  (import "env" "checkNoPayment" (func (;10;) (type 1)))
  (import "env" "getNumDCDTTransfers" (func (;11;) (type 0)))
  (import "env" "managedOwnerAddress" (func (;12;) (type 4)))
  (import "env" "managedCaller" (func (;13;) (type 4)))
  (import "env" "mBufferEq" (func (;14;) (type 2)))
  (import "env" "managedAsyncCall" (func (;15;) (type 7)))
  (func (;16;) (type 9) (param i32) (result i32)
    (local i32)
    call 17
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;17;) (type 0) (result i32)
    (local i32)
    i32.const 131300
    i32.const 131300
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;18;) (type 1)
    call 3
    i32.eqz
    if  ;; label = @1
      return
    end
    i32.const 131109
    i32.const 25
    call 4
    unreachable)
  (func (;19;) (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 20
    local.get 0
    i32.const 131139
    i32.const 131134
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call 20)
  (func (;20;) (type 3) (param i32 i32 i32)
    (local i32)
    call 22
    local.tee 3
    local.get 1
    local.get 2
    call 6
    drop
    local.get 0
    local.get 3
    call 24)
  (func (;21;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 17
    local.tee 2
    local.get 0
    local.get 1
    call 6
    drop
    local.get 2)
  (func (;22;) (type 0) (result i32)
    (local i32)
    call 17
    local.tee 0
    i32.const 1
    i32.const 0
    call 6
    drop
    local.get 0)
  (func (;23;) (type 3) (param i32 i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    call 22
    drop
    call 7
    local.tee 4
    local.get 2
    call 8
    drop
    local.get 4
    call 24
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4)
  (func (;24;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 9
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;25;) (type 1)
    call 10
    call 18)
  (func (;26;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      call 11
      i32.eqz
      if  ;; label = @2
        call 17
        local.tee 1
        call 12
        call 17
        local.tee 0
        call 13
        local.get 1
        local.get 0
        call 14
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
        call 18
        block (result i32)  ;; label = @3
          i32.const 131304
          i32.load8_u
          local.tee 1
          if  ;; label = @4
            i32.const -11
            i32.const 2147483647
            local.get 1
            select
            br 1 (;@3;)
          end
          i32.const 131304
          i32.const 1
          i32.store8
          i32.const -11
          call 2
          i32.const -11
        end
        call 16
        call 16
        local.set 4
        i32.const 131260
        i32.const 4
        call 21
        local.set 5
        i32.const 131260
        i32.const 4
        call 21
        local.set 6
        call 17
        local.tee 7
        i64.const 0
        call 0
        local.get 2
        i64.const 72340168526332161
        i64.store offset=24 align=4
        local.get 2
        i32.const 0
        i32.store offset=20
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        local.get 2
        i32.const 20
        i32.add
        local.tee 0
        i32.load8_u offset=11
        local.set 9
        local.get 0
        i32.load8_u offset=10
        local.set 10
        local.get 0
        i32.load8_u offset=9
        local.set 11
        local.get 0
        i32.load8_u offset=8
        local.set 12
        local.get 0
        i32.load8_u offset=7
        local.set 13
        local.get 0
        i32.load8_u offset=6
        local.set 14
        local.get 0
        i32.load8_u offset=5
        local.set 15
        local.get 0
        i32.load8_u offset=4
        local.set 16
        local.get 0
        i32.load
        local.set 3
        i32.const 131223
        i32.const 5
        call 21
        local.set 0
        local.get 1
        call 22
        i32.store offset=24
        local.get 1
        local.get 0
        i32.store offset=20
        local.get 1
        local.get 4
        i32.store offset=28
        local.get 1
        i32.const 8
        i32.add
        local.tee 4
        local.get 1
        i32.const 20
        i32.add
        local.tee 0
        local.get 5
        call 23
        local.get 0
        local.get 4
        local.get 6
        call 23
        local.get 1
        i32.load offset=20
        local.set 17
        local.get 1
        i32.load offset=24
        local.set 0
        call 22
        drop
        call 17
        local.tee 5
        local.get 7
        call 5
        drop
        local.get 0
        local.get 5
        call 24
        local.get 1
        i32.load offset=28
        local.set 7
        call 22
        local.set 5
        local.get 1
        local.get 3
        i32.store8 offset=15
        local.get 1
        local.get 3
        i64.extend_i32_u
        local.tee 19
        i64.const 24
        i64.shr_u
        i32.wrap_i64
        local.tee 6
        i32.store8 offset=12
        local.get 1
        local.get 19
        i64.const 16
        i64.shr_u
        i32.wrap_i64
        local.tee 8
        i32.store8 offset=13
        local.get 1
        local.get 19
        i64.const 8
        i64.shr_u
        i32.wrap_i64
        local.tee 18
        i32.store8 offset=14
        local.get 1
        i32.const 0
        i32.store offset=8
        local.get 5
        local.get 4
        local.get 6
        local.get 8
        i32.or
        i32.const 255
        i32.and
        i32.eqz
        local.tee 8
        i32.const 4
        i32.const 5
        local.get 6
        select
        i32.add
        i32.const 0
        local.get 8
        local.get 18
        i32.const 255
        i32.and
        select
        local.tee 6
        i32.add
        i32.const 0
        local.get 6
        local.get 3
        select
        i32.add
        local.tee 3
        i32.add
        i32.const 8
        local.get 3
        i32.sub
        call 6
        drop
        local.get 0
        local.get 5
        call 24
        local.get 0
        i32.const 131143
        i32.const 9
        local.get 16
        call 19
        local.get 0
        i32.const 131152
        i32.const 7
        local.get 15
        call 19
        local.get 0
        i32.const 131159
        i32.const 8
        local.get 14
        call 19
        local.get 0
        i32.const 131167
        i32.const 7
        local.get 13
        call 19
        local.get 0
        i32.const 131174
        i32.const 7
        local.get 12
        call 19
        local.get 0
        i32.const 131181
        i32.const 14
        local.get 11
        call 19
        local.get 0
        i32.const 131195
        i32.const 10
        local.get 10
        call 19
        local.get 0
        i32.const 131205
        i32.const 18
        local.get 9
        call 19
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 0
        i32.store offset=4
        local.get 2
        local.get 17
        i32.store
        local.get 2
        local.get 7
        i32.store offset=8
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        local.get 2
        i32.load offset=8
        local.set 0
        local.get 2
        i32.load
        local.set 3
        local.get 2
        i32.load offset=4
        local.set 4
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 4
        i32.store offset=28
        local.get 1
        local.get 3
        i32.store offset=24
        local.get 1
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=20
        local.get 1
        local.get 1
        i32.const 12
        i32.add
        i32.store offset=16
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        local.get 2
        i32.const 131228
        i32.const 32
        call 21
        i32.store offset=12
        global.get 0
        i32.const 16
        i32.sub
        local.tee 0
        global.set 0
        local.get 1
        i32.const 16
        i32.add
        local.tee 1
        i32.load
        local.set 3
        local.get 0
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=4
        local.get 0
        local.get 1
        i64.load offset=8 align=4
        i64.store offset=8 align=4
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.load
        i32.load
        local.get 3
        i32.load
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load offset=8
        call 15
        unreachable
      end
      i32.const 131072
      i32.const 37
      call 4
      unreachable
    end
    i32.const 131264
    i32.const 36
    call 4
    unreachable)
  (func (;27;) (type 1)
    nop)
  (memory (;0;) 3)
  (global (;0;) (mut i32) (i32.const 131072))
  (global (;1;) i32 (i32.const 131305))
  (global (;2;) i32 (i32.const 131312))
  (export "memory" (memory 0))
  (export "init" (func 25))
  (export "issue" (func 26))
  (export "callBack" (func 27))
  (export "upgrade" (func 25))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 131072) "function does not accept DCDT paymentwrong number of argumentsfalsetruecanFreezecanWipecanPausecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolesissue")
  (data (;1;) (i32.const 131237) "\01")
  (data (;2;) (i32.const 131257) "\02\ff\ffTESTEndpoint can only be called by owner")
  (data (;3;) (i32.const 131300) "\9c\ff\ff\ff"))
