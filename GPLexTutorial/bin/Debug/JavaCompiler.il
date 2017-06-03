
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.81.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern QUT.ShiftReduceParser
{
  .publickeytoken = (40 23 96 EF 61 02 BA EC )                         // @#..a...
  .ver 1:4:6:0
}
.assembly GPLexTutorial
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 2E 32 01   // ,Version=v4.5.2.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 35 2E 32 )          // amework 4.5.2
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module GPLexTutorial.exe
// MVID: {73D53FE1-9EDC-4FB6-B8A6-C9F9BB467A4B}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITPREFERRED
// Image base: 0x05690000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi beforefieldinit JavaCompiler.Node
       extends [mscorlib]System.Object
{
  .method private hidebysig instance void 
          Indent(int32 n) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init ([0] int32 i,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0014

    IL_0005:  ldstr      "    "
    IL_000a:  call       void [mscorlib]System.Console::Write(string)
    IL_000f:  nop
    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  add
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  clt
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  brtrue.s   IL_0005

    IL_001c:  ret
  } // end of method Node::Indent

  .method public hidebysig instance void 
          DumpValue(int32 indent) cil managed
  {
    // Code size       325 (0x145)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.Reflection.FieldInfo[] V_0,
             [1] int32 V_1,
             [2] class [mscorlib]System.Reflection.FieldInfo 'field',
             [3] object 'value',
             [4] bool V_4,
             [5] bool V_5,
             [6] class [mscorlib]System.Collections.IEnumerable list,
             [7] class [mscorlib]System.Collections.IEnumerator V_7,
             [8] object item,
             [9] bool V_9,
             [10] class [mscorlib]System.IDisposable V_10)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.0
    IL_0003:  call       instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0008:  ldc.i4.s   36
    IL_000a:  callvirt   instance class [mscorlib]System.Reflection.FieldInfo[] [mscorlib]System.Type::GetFields(valuetype [mscorlib]System.Reflection.BindingFlags)
    IL_000f:  stloc.0
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.1
    IL_0012:  br         IL_013b

    IL_0017:  ldloc.0
    IL_0018:  ldloc.1
    IL_0019:  ldelem.ref
    IL_001a:  stloc.2
    IL_001b:  nop
    IL_001c:  ldloc.2
    IL_001d:  ldarg.0
    IL_001e:  callvirt   instance object [mscorlib]System.Reflection.FieldInfo::GetValue(object)
    IL_0023:  stloc.3
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  call       instance void JavaCompiler.Node::Indent(int32)
    IL_002d:  nop
    IL_002e:  ldloc.3
    IL_002f:  isinst     JavaCompiler.Node
    IL_0034:  ldnull
    IL_0035:  cgt.un
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.s    V_4
    IL_003b:  brfalse.s  IL_0064

    IL_003d:  nop
    IL_003e:  ldstr      "{0}: "
    IL_0043:  ldloc.2
    IL_0044:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0049:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_004e:  nop
    IL_004f:  ldloc.3
    IL_0050:  castclass  JavaCompiler.Node
    IL_0055:  ldarg.1
    IL_0056:  ldc.i4.2
    IL_0057:  add
    IL_0058:  callvirt   instance void JavaCompiler.Node::DumpValue(int32)
    IL_005d:  nop
    IL_005e:  nop
    IL_005f:  br         IL_0136

    IL_0064:  ldloc.3
    IL_0065:  isinst     [mscorlib]System.Collections.IEnumerable
    IL_006a:  brfalse.s  IL_007a

    IL_006c:  ldloc.3
    IL_006d:  isinst     [mscorlib]System.String
    IL_0072:  ldnull
    IL_0073:  cgt.un
    IL_0075:  ldc.i4.0
    IL_0076:  ceq
    IL_0078:  br.s       IL_007b

    IL_007a:  ldc.i4.0
    IL_007b:  stloc.s    V_5
    IL_007d:  ldloc.s    V_5
    IL_007f:  brfalse    IL_0124

    IL_0084:  nop
    IL_0085:  ldstr      "{0}: ["
    IL_008a:  ldloc.2
    IL_008b:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0090:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0095:  nop
    IL_0096:  ldloc.3
    IL_0097:  castclass  [mscorlib]System.Collections.IEnumerable
    IL_009c:  stloc.s    list
    IL_009e:  nop
    IL_009f:  ldloc.s    list
    IL_00a1:  callvirt   instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.IEnumerable::GetEnumerator()
    IL_00a6:  stloc.s    V_7
    .try
    {
      IL_00a8:  br.s       IL_00eb

      IL_00aa:  ldloc.s    V_7
      IL_00ac:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
      IL_00b1:  stloc.s    item
      IL_00b3:  nop
      IL_00b4:  ldloc.s    item
      IL_00b6:  isinst     JavaCompiler.Node
      IL_00bb:  ldnull
      IL_00bc:  cgt.un
      IL_00be:  stloc.s    V_9
      IL_00c0:  ldloc.s    V_9
      IL_00c2:  brfalse.s  IL_00d6

      IL_00c4:  ldloc.s    item
      IL_00c6:  castclass  JavaCompiler.Node
      IL_00cb:  ldarg.1
      IL_00cc:  ldc.i4.2
      IL_00cd:  add
      IL_00ce:  callvirt   instance void JavaCompiler.Node::DumpValue(int32)
      IL_00d3:  nop
      IL_00d4:  br.s       IL_00ea

      IL_00d6:  nop
      IL_00d7:  ldarg.0
      IL_00d8:  ldarg.1
      IL_00d9:  ldc.i4.2
      IL_00da:  add
      IL_00db:  call       instance void JavaCompiler.Node::Indent(int32)
      IL_00e0:  nop
      IL_00e1:  ldloc.s    item
      IL_00e3:  call       void [mscorlib]System.Console::WriteLine(object)
      IL_00e8:  nop
      IL_00e9:  nop
      IL_00ea:  nop
      IL_00eb:  ldloc.s    V_7
      IL_00ed:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00f2:  brtrue.s   IL_00aa

      IL_00f4:  leave.s    IL_010c

    }  // end .try
    finally
    {
      IL_00f6:  ldloc.s    V_7
      IL_00f8:  isinst     [mscorlib]System.IDisposable
      IL_00fd:  stloc.s    V_10
      IL_00ff:  ldloc.s    V_10
      IL_0101:  brfalse.s  IL_010b

      IL_0103:  ldloc.s    V_10
      IL_0105:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_010a:  nop
      IL_010b:  endfinally
    }  // end handler
    IL_010c:  ldarg.0
    IL_010d:  ldarg.1
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  call       instance void JavaCompiler.Node::Indent(int32)
    IL_0115:  nop
    IL_0116:  ldstr      "]"
    IL_011b:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0120:  nop
    IL_0121:  nop
    IL_0122:  br.s       IL_0136

    IL_0124:  ldstr      "{0}: {1}"
    IL_0129:  ldloc.2
    IL_012a:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_012f:  ldloc.3
    IL_0130:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0135:  nop
    IL_0136:  nop
    IL_0137:  ldloc.1
    IL_0138:  ldc.i4.1
    IL_0139:  add
    IL_013a:  stloc.1
    IL_013b:  ldloc.1
    IL_013c:  ldloc.0
    IL_013d:  ldlen
    IL_013e:  conv.i4
    IL_013f:  blt        IL_0017

    IL_0144:  ret
  } // end of method Node::DumpValue

  .method public hidebysig newslot abstract virtual 
          instance bool  ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
  } // end of method Node::ResolveNames

  .method public hidebysig newslot abstract virtual 
          instance void  CheckType(int32 indent) cil managed
  {
  } // end of method Node::CheckType

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
  } // end of method Node::GenerateCode

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Node::.ctor

} // end of class JavaCompiler.Node

.class public abstract auto ansi beforefieldinit JavaCompiler.Expression
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Expression::.ctor

} // end of class JavaCompiler.Expression

.class public abstract auto ansi beforefieldinit JavaCompiler.Statement
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Statement::.ctor

} // end of class JavaCompiler.Statement

.class public auto ansi beforefieldinit JavaCompiler.IntegerLiteral
       extends JavaCompiler.Expression
{
  .field public int32 'value'
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 'value') cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Expression::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 JavaCompiler.IntegerLiteral::'value'
    IL_000f:  ret
  } // end of method IntegerLiteral::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method IntegerLiteral::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method IntegerLiteral::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method IntegerLiteral::GenerateCode

} // end of class JavaCompiler.IntegerLiteral

.class public auto ansi beforefieldinit JavaCompiler.Identifier
       extends JavaCompiler.Expression
{
  .field private string name
  .field private class JavaCompiler.Declaration declaration
  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string JavaCompiler.Identifier::name
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Identifier::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      string JavaCompiler.Identifier::name
    IL_0008:  ret
  } // end of method Identifier::set_Name

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      ""
    IL_0006:  stfld      string JavaCompiler.Identifier::name
    IL_000b:  ldarg.0
    IL_000c:  call       instance void JavaCompiler.Expression::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      string JavaCompiler.Identifier::name
    IL_001a:  ret
  } // end of method Identifier::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brfalse.s  IL_001d

    IL_0009:  nop
    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  ldarg.0
    IL_000d:  ldfld      string JavaCompiler.Identifier::name
    IL_0012:  callvirt   instance class JavaCompiler.Declaration JavaCompiler.LexicalScope::Resolve(string)
    IL_0017:  stfld      class JavaCompiler.Declaration JavaCompiler.Identifier::declaration
    IL_001c:  nop
    IL_001d:  ldc.i4.1
    IL_001e:  stloc.1
    IL_001f:  br.s       IL_0021

    IL_0021:  ldloc.1
    IL_0022:  ret
  } // end of method Identifier::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Identifier::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Identifier::GenerateCode

  .property instance string Name()
  {
    .get instance string JavaCompiler.Identifier::get_Name()
    .set instance void JavaCompiler.Identifier::set_Name(string)
  } // end of property Identifier::Name
} // end of class JavaCompiler.Identifier

.class public auto ansi beforefieldinit JavaCompiler.Assignment
       extends JavaCompiler.Expression
{
  .field private class JavaCompiler.Expression lhs
  .field private class JavaCompiler.Expression rhs
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.Expression lhs,
                               class JavaCompiler.Expression rhs) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Expression::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.Expression JavaCompiler.Assignment::lhs
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.Expression JavaCompiler.Assignment::rhs
    IL_0016:  ret
  } // end of method Assignment::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Expression JavaCompiler.Assignment::lhs
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class JavaCompiler.Expression JavaCompiler.Assignment::rhs
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_001a:  pop
    IL_001b:  ldc.i4.1
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method Assignment::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Assignment::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldarg.1
    IL_0011:  ldstr      "ldc.i4.s {0}"
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class JavaCompiler.Expression JavaCompiler.Assignment::rhs
    IL_001c:  castclass  JavaCompiler.IntegerLiteral
    IL_0021:  ldfld      int32 JavaCompiler.IntegerLiteral::'value'
    IL_0026:  box        [mscorlib]System.Int32
    IL_002b:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object)
    IL_0030:  nop
    IL_0031:  ldarg.1
    IL_0032:  ldstr      "stloc.0"
    IL_0037:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_003c:  nop
    IL_003d:  ret
  } // end of method Assignment::GenerateCode

} // end of class JavaCompiler.Assignment

.class public auto ansi beforefieldinit JavaCompiler.ExpressionStatement
       extends JavaCompiler.Statement
{
  .field private class JavaCompiler.Assignment assignment
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.Assignment assignment) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Statement::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.Assignment JavaCompiler.ExpressionStatement::assignment
    IL_000f:  ret
  } // end of method ExpressionStatement::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Assignment JavaCompiler.ExpressionStatement::assignment
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method ExpressionStatement::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method ExpressionStatement::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Assignment JavaCompiler.ExpressionStatement::assignment
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method ExpressionStatement::GenerateCode

} // end of class JavaCompiler.ExpressionStatement

.class public auto ansi sealed JavaCompiler.IntegralType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JavaCompiler.IntegralType Int = int32(0x00000000)
} // end of class JavaCompiler.IntegralType

.class public auto ansi beforefieldinit JavaCompiler.UnannType
       extends JavaCompiler.Type
{
  .method public hidebysig virtual instance string 
          GetTypeName() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      ""
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method UnannType::GetTypeName

  .method public hidebysig virtual instance bool 
          Equal(class JavaCompiler.Type other) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     JavaCompiler.UnannType
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0012

    IL_000e:  ldc.i4.1
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0016

    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.1
    IL_0017:  ret
  } // end of method UnannType::Equal

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_0008:  pop
    IL_0009:  ldc.i4.1
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method UnannType::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method UnannType::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method UnannType::GenerateCode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Type::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method UnannType::.ctor

} // end of class JavaCompiler.UnannType

.class public auto ansi beforefieldinit JavaCompiler.NameType
       extends JavaCompiler.UnannType
{
  .field private string typeName
  .method public hidebysig virtual instance string 
          GetTypeName() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "string"
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method NameType::GetTypeName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string typeName) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.UnannType::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      string JavaCompiler.NameType::typeName
    IL_000f:  ret
  } // end of method NameType::.ctor

  .method public hidebysig virtual instance bool 
          Equal(class JavaCompiler.Type other) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     JavaCompiler.NameType
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0012

    IL_000e:  ldc.i4.1
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0016

    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.1
    IL_0017:  ret
  } // end of method NameType::Equal

} // end of class JavaCompiler.NameType

.class public auto ansi beforefieldinit JavaCompiler.PrimitiveType
       extends JavaCompiler.UnannType
{
  .field private valuetype JavaCompiler.IntegralType integraltype
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JavaCompiler.IntegralType integraltype) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.UnannType::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      valuetype JavaCompiler.IntegralType JavaCompiler.PrimitiveType::integraltype
    IL_000f:  ret
  } // end of method PrimitiveType::.ctor

  .method public hidebysig virtual instance bool 
          Equal(class JavaCompiler.Type other) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     JavaCompiler.PrimitiveType
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0012

    IL_000e:  ldc.i4.1
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0016

    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.1
    IL_0017:  ret
  } // end of method PrimitiveType::Equal

  .method public hidebysig virtual instance string 
          GetTypeName() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "int32"
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method PrimitiveType::GetTypeName

} // end of class JavaCompiler.PrimitiveType

.class public auto ansi beforefieldinit JavaCompiler.ArrayType
       extends JavaCompiler.UnannType
{
  .field private class JavaCompiler.UnannType arrayType
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.UnannType arrayType) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.UnannType::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.UnannType JavaCompiler.ArrayType::arrayType
    IL_000f:  ret
  } // end of method ArrayType::.ctor

  .method public hidebysig virtual instance string 
          GetTypeName() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.UnannType JavaCompiler.ArrayType::arrayType
    IL_0007:  callvirt   instance string JavaCompiler.Type::GetTypeName()
    IL_000c:  ldstr      "[]"
    IL_0011:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method ArrayType::GetTypeName

  .method public hidebysig virtual instance bool 
          Equal(class JavaCompiler.Type other) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     JavaCompiler.ArrayType
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0012

    IL_000e:  ldc.i4.1
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0016

    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.1
    IL_0017:  ret
  } // end of method ArrayType::Equal

} // end of class JavaCompiler.ArrayType

.class public abstract auto ansi beforefieldinit JavaCompiler.VariableModifier
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method VariableModifier::.ctor

} // end of class JavaCompiler.VariableModifier

.class public auto ansi beforefieldinit JavaCompiler.VariableModifiers
       extends JavaCompiler.Node
{
  .field private class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> variableModifier
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> varibalemodifier) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> JavaCompiler.VariableModifiers::variableModifier
    IL_000f:  ret
  } // end of method VariableModifiers::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_0008:  pop
    IL_0009:  ldc.i4.1
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method VariableModifiers::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method VariableModifiers::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method VariableModifiers::GenerateCode

} // end of class JavaCompiler.VariableModifiers

.class public auto ansi beforefieldinit JavaCompiler.LocalVariableDeclaration
       extends JavaCompiler.Statement
       implements JavaCompiler.Declaration
{
  .field private class JavaCompiler.UnannType unannType
  .field private class JavaCompiler.Identifier variableDeclarator
  .method public hidebysig newslot virtual final 
          instance string  GetName() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.LocalVariableDeclaration::variableDeclarator
    IL_0007:  callvirt   instance string JavaCompiler.Identifier::get_Name()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method LocalVariableDeclaration::GetName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.UnannType unanntype,
                               class JavaCompiler.Identifier variabledeclarator) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Statement::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.UnannType JavaCompiler.LocalVariableDeclaration::unannType
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.Identifier JavaCompiler.LocalVariableDeclaration::variableDeclarator
    IL_0016:  ret
  } // end of method LocalVariableDeclaration::.ctor

  .method public hidebysig newslot virtual final 
          instance class JavaCompiler.Type 
          GetTypeFrom() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.Type V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.UnannType JavaCompiler.LocalVariableDeclaration::unannType
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method LocalVariableDeclaration::GetTypeFrom

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.LocalVariableDeclaration::variableDeclarator
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method LocalVariableDeclaration::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method LocalVariableDeclaration::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       87 (0x57)
    .maxstack  3
    .locals init ([0] string s,
             [1] string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class JavaCompiler.UnannType JavaCompiler.LocalVariableDeclaration::unannType
    IL_0016:  callvirt   instance string JavaCompiler.Type::GetTypeName()
    IL_001b:  stloc.1
    IL_001c:  ldloc.1
    IL_001d:  ldstr      "int32"
    IL_0022:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0027:  brtrue.s   IL_002b

    IL_0029:  br.s       IL_002d

    IL_002b:  br.s       IL_002d

    IL_002d:  ldstr      ".locals init ([0] {0} {1})"
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class JavaCompiler.UnannType JavaCompiler.LocalVariableDeclaration::unannType
    IL_0038:  callvirt   instance string JavaCompiler.Type::GetTypeName()
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class JavaCompiler.Identifier JavaCompiler.LocalVariableDeclaration::variableDeclarator
    IL_0043:  callvirt   instance string JavaCompiler.Identifier::get_Name()
    IL_0048:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_004d:  stloc.0
    IL_004e:  ldarg.1
    IL_004f:  ldloc.0
    IL_0050:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_0055:  nop
    IL_0056:  ret
  } // end of method LocalVariableDeclaration::GenerateCode

} // end of class JavaCompiler.LocalVariableDeclaration

.class public auto ansi beforefieldinit JavaCompiler.LocalVariableDeclarationStatement
       extends JavaCompiler.Node
{
  .field private class JavaCompiler.LocalVariableDeclaration localVariableDeclaration
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.LocalVariableDeclaration localvariabledeclaration) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.LocalVariableDeclaration JavaCompiler.LocalVariableDeclarationStatement::localVariableDeclaration
    IL_000f:  ret
  } // end of method LocalVariableDeclarationStatement::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.LocalVariableDeclaration JavaCompiler.LocalVariableDeclarationStatement::localVariableDeclaration
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method LocalVariableDeclarationStatement::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method LocalVariableDeclarationStatement::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method LocalVariableDeclarationStatement::GenerateCode

} // end of class JavaCompiler.LocalVariableDeclarationStatement

.class public auto ansi beforefieldinit JavaCompiler.Block
       extends JavaCompiler.Statement
{
  .field private class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> blockStatements
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> blockstatements) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Statement::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.Block::blockStatements
    IL_000f:  ret
  } // end of method Block::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       156 (0x9c)
    .maxstack  2
    .locals init ([0] class JavaCompiler.LexicalScope newScope,
             [1] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement> V_1,
             [2] class JavaCompiler.Statement blkstat,
             [3] bool V_3,
             [4] class JavaCompiler.Declaration decl,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement> V_5,
             [6] class JavaCompiler.Statement V_6,
             [7] bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void JavaCompiler.LexicalScope::.ctor(class JavaCompiler.LexicalScope)
    IL_0007:  stloc.0
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.Block::blockStatements
    IL_000f:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>::GetEnumerator()
    IL_0014:  stloc.1
    .try
    {
      IL_0015:  br.s       IL_003f

      IL_0017:  ldloca.s   V_1
      IL_0019:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::get_Current()
      IL_001e:  stloc.2
      IL_001f:  ldloc.2
      IL_0020:  isinst     JavaCompiler.Declaration
      IL_0025:  ldnull
      IL_0026:  cgt.un
      IL_0028:  stloc.3
      IL_0029:  ldloc.3
      IL_002a:  brfalse.s  IL_003f

      IL_002c:  nop
      IL_002d:  ldloc.2
      IL_002e:  castclass  JavaCompiler.Declaration
      IL_0033:  stloc.s    decl
      IL_0035:  ldloc.0
      IL_0036:  ldloc.s    decl
      IL_0038:  callvirt   instance void JavaCompiler.LexicalScope::Add(class JavaCompiler.Declaration)
      IL_003d:  nop
      IL_003e:  nop
      IL_003f:  ldloca.s   V_1
      IL_0041:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::MoveNext()
      IL_0046:  brtrue.s   IL_0017

      IL_0048:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004a:  ldloca.s   V_1
      IL_004c:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>
      IL_0052:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0057:  nop
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  nop
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.Block::blockStatements
    IL_0060:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>::GetEnumerator()
    IL_0065:  stloc.s    V_5
    .try
    {
      IL_0067:  br.s       IL_007a

      IL_0069:  ldloca.s   V_5
      IL_006b:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::get_Current()
      IL_0070:  stloc.s    V_6
      IL_0072:  ldarg.0
      IL_0073:  ldloc.0
      IL_0074:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
      IL_0079:  pop
      IL_007a:  ldloca.s   V_5
      IL_007c:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::MoveNext()
      IL_0081:  brtrue.s   IL_0069

      IL_0083:  leave.s    IL_0094

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_5
      IL_0087:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>
      IL_008d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0092:  nop
      IL_0093:  endfinally
    }  // end handler
    IL_0094:  ldc.i4.1
    IL_0095:  stloc.s    V_7
    IL_0097:  br.s       IL_0099

    IL_0099:  ldloc.s    V_7
    IL_009b:  ret
  } // end of method Block::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Block::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       88 (0x58)
    .maxstack  3
    .locals init ([0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement> V_0,
             [1] class JavaCompiler.Statement statement)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  nop
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.Block::blockStatements
    IL_0017:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>::GetEnumerator()
    IL_001c:  stloc.0
    .try
    {
      IL_001d:  br.s       IL_0031

      IL_001f:  ldloca.s   V_0
      IL_0021:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::get_Current()
      IL_0026:  stloc.1
      IL_0027:  nop
      IL_0028:  ldloc.1
      IL_0029:  ldarg.1
      IL_002a:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
      IL_002f:  nop
      IL_0030:  nop
      IL_0031:  ldloca.s   V_0
      IL_0033:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>::MoveNext()
      IL_0038:  brtrue.s   IL_001f

      IL_003a:  leave.s    IL_004b

    }  // end .try
    finally
    {
      IL_003c:  ldloca.s   V_0
      IL_003e:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.Statement>
      IL_0044:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0049:  nop
      IL_004a:  endfinally
    }  // end handler
    IL_004b:  ldarg.1
    IL_004c:  ldstr      "ret"
    IL_0051:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_0056:  nop
    IL_0057:  ret
  } // end of method Block::GenerateCode

} // end of class JavaCompiler.Block

.class public auto ansi sealed JavaCompiler.MethodModifier
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JavaCompiler.MethodModifier Public = int32(0x00000000)
  .field public static literal valuetype JavaCompiler.MethodModifier Static = int32(0x00000001)
} // end of class JavaCompiler.MethodModifier

.class public auto ansi beforefieldinit JavaCompiler.FormalParameter
       extends JavaCompiler.Node
       implements JavaCompiler.Declaration
{
  .field private class JavaCompiler.UnannType unannType
  .field private class JavaCompiler.Identifier variableDeclarator
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.UnannType unanntype,
                               class JavaCompiler.Identifier variabledeclarator) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.UnannType JavaCompiler.FormalParameter::unannType
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.Identifier JavaCompiler.FormalParameter::variableDeclarator
    IL_0016:  ret
  } // end of method FormalParameter::.ctor

  .method public hidebysig newslot virtual final 
          instance class JavaCompiler.Type 
          GetTypeFrom() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.Type V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.UnannType JavaCompiler.FormalParameter::unannType
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method FormalParameter::GetTypeFrom

  .method public hidebysig newslot virtual final 
          instance string  GetName() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.FormalParameter::variableDeclarator
    IL_0007:  callvirt   instance string JavaCompiler.Identifier::get_Name()
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method FormalParameter::GetName

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.FormalParameter::variableDeclarator
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method FormalParameter::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method FormalParameter::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method FormalParameter::GenerateCode

} // end of class JavaCompiler.FormalParameter

.class public auto ansi beforefieldinit JavaCompiler.MethodDeclarator
       extends JavaCompiler.Node
{
  .field private class JavaCompiler.Identifier identifier
  .field private class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> formalParameterList
  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> 
          get_FormalParameterList() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::formalParameterList
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method MethodDeclarator::get_FormalParameterList

  .method public hidebysig specialname instance void 
          set_FormalParameterList(class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::formalParameterList
    IL_0008:  ret
  } // end of method MethodDeclarator::set_FormalParameterList

  .method public hidebysig specialname instance class JavaCompiler.Identifier 
          get_Identifier() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.Identifier V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::identifier
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method MethodDeclarator::get_Identifier

  .method public hidebysig specialname instance void 
          set_Identifier(class JavaCompiler.Identifier 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::identifier
    IL_0008:  ret
  } // end of method MethodDeclarator::set_Identifier

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.Identifier identifier,
                               class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> formalparameterlist) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::identifier
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::formalParameterList
    IL_0016:  ret
  } // end of method MethodDeclarator::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       159 (0x9f)
    .maxstack  2
    .locals init ([0] class JavaCompiler.LexicalScope newScope,
             [1] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter> V_1,
             [2] class JavaCompiler.FormalParameter formal,
             [3] bool V_3,
             [4] class JavaCompiler.Declaration decl,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter> V_5,
             [6] class JavaCompiler.FormalParameter V_6,
             [7] bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::identifier
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldarg.1
    IL_000f:  newobj     instance void JavaCompiler.LexicalScope::.ctor(class JavaCompiler.LexicalScope)
    IL_0014:  stloc.0
    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::formalParameterList
    IL_001c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>::GetEnumerator()
    IL_0021:  stloc.1
    .try
    {
      IL_0022:  br.s       IL_0042

      IL_0024:  ldloca.s   V_1
      IL_0026:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::get_Current()
      IL_002b:  stloc.2
      IL_002c:  ldloc.2
      IL_002d:  ldnull
      IL_002e:  cgt.un
      IL_0030:  stloc.3
      IL_0031:  ldloc.3
      IL_0032:  brfalse.s  IL_0042

      IL_0034:  nop
      IL_0035:  ldloc.2
      IL_0036:  stloc.s    decl
      IL_0038:  ldloc.0
      IL_0039:  ldloc.s    decl
      IL_003b:  callvirt   instance void JavaCompiler.LexicalScope::Add(class JavaCompiler.Declaration)
      IL_0040:  nop
      IL_0041:  nop
      IL_0042:  ldloca.s   V_1
      IL_0044:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::MoveNext()
      IL_0049:  brtrue.s   IL_0024

      IL_004b:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004d:  ldloca.s   V_1
      IL_004f:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>
      IL_0055:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_005a:  nop
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  nop
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::formalParameterList
    IL_0063:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>::GetEnumerator()
    IL_0068:  stloc.s    V_5
    .try
    {
      IL_006a:  br.s       IL_007d

      IL_006c:  ldloca.s   V_5
      IL_006e:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::get_Current()
      IL_0073:  stloc.s    V_6
      IL_0075:  ldarg.0
      IL_0076:  ldloc.0
      IL_0077:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
      IL_007c:  pop
      IL_007d:  ldloca.s   V_5
      IL_007f:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::MoveNext()
      IL_0084:  brtrue.s   IL_006c

      IL_0086:  leave.s    IL_0097

    }  // end .try
    finally
    {
      IL_0088:  ldloca.s   V_5
      IL_008a:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>
      IL_0090:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0095:  nop
      IL_0096:  endfinally
    }  // end handler
    IL_0097:  ldc.i4.1
    IL_0098:  stloc.s    V_7
    IL_009a:  br.s       IL_009c

    IL_009c:  ldloc.s    V_7
    IL_009e:  ret
  } // end of method MethodDeclarator::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MethodDeclarator::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MethodDeclarator::GenerateCode

  .property instance class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>
          FormalParameterList()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::get_FormalParameterList()
    .set instance void JavaCompiler.MethodDeclarator::set_FormalParameterList(class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>)
  } // end of property MethodDeclarator::FormalParameterList
  .property instance class JavaCompiler.Identifier
          Identifier()
  {
    .get instance class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::get_Identifier()
    .set instance void JavaCompiler.MethodDeclarator::set_Identifier(class JavaCompiler.Identifier)
  } // end of property MethodDeclarator::Identifier
} // end of class JavaCompiler.MethodDeclarator

.class public auto ansi sealed JavaCompiler.Result
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JavaCompiler.Result Void = int32(0x00000000)
} // end of class JavaCompiler.Result

.class public auto ansi beforefieldinit JavaCompiler.MethodHeader
       extends JavaCompiler.Node
{
  .field public valuetype JavaCompiler.Result result
  .field public class JavaCompiler.MethodDeclarator methodDeclarator
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JavaCompiler.Result result,
                               class JavaCompiler.MethodDeclarator methoddeclarator) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      valuetype JavaCompiler.Result JavaCompiler.MethodHeader::result
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.MethodDeclarator JavaCompiler.MethodHeader::methodDeclarator
    IL_0016:  ret
  } // end of method MethodHeader::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.MethodDeclarator JavaCompiler.MethodHeader::methodDeclarator
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method MethodHeader::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MethodHeader::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MethodHeader::GenerateCode

} // end of class JavaCompiler.MethodHeader

.class public auto ansi beforefieldinit JavaCompiler.MethodDeclaration
       extends JavaCompiler.Node
{
  .field private class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> methodmodifiers
  .field private class JavaCompiler.MethodHeader methodHeader
  .field private class JavaCompiler.Block methodBody
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> methodmodifier,
                               class JavaCompiler.MethodHeader methodheader,
                               class JavaCompiler.Block methodbody) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.MethodDeclaration::methodmodifiers
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.MethodHeader JavaCompiler.MethodDeclaration::methodHeader
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      class JavaCompiler.Block JavaCompiler.MethodDeclaration::methodBody
    IL_001d:  ret
  } // end of method MethodDeclaration::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.MethodHeader JavaCompiler.MethodDeclaration::methodHeader
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class JavaCompiler.Block JavaCompiler.MethodDeclaration::methodBody
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_001a:  pop
    IL_001b:  ldc.i4.1
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method MethodDeclaration::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MethodDeclaration::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       490 (0x1ea)
    .maxstack  6
    .locals init ([0] string modifiers,
             [1] string result,
             [2] string name,
             [3] string parameters,
             [4] class JavaCompiler.Type a,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<valuetype JavaCompiler.MethodModifier> V_5,
             [6] valuetype JavaCompiler.MethodModifier modifier,
             [7] valuetype JavaCompiler.MethodModifier V_7,
             [8] valuetype JavaCompiler.Result V_8,
             [9] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter> V_9,
             [10] class JavaCompiler.FormalParameter parameter,
             [11] class JavaCompiler.ArrayType arrayType,
             [12] bool V_12,
             [13] bool V_13)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldstr      ""
    IL_0015:  stloc.0
    IL_0016:  nop
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.MethodDeclaration::methodmodifiers
    IL_001d:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier>::GetEnumerator()
    IL_0022:  stloc.s    V_5
    .try
    {
      IL_0024:  br.s       IL_005e

      IL_0026:  ldloca.s   V_5
      IL_0028:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<valuetype JavaCompiler.MethodModifier>::get_Current()
      IL_002d:  stloc.s    modifier
      IL_002f:  nop
      IL_0030:  ldloc.s    modifier
      IL_0032:  stloc.s    V_7
      IL_0034:  ldloc.s    V_7
      IL_0036:  brfalse.s  IL_0041

      IL_0038:  br.s       IL_003a

      IL_003a:  ldloc.s    V_7
      IL_003c:  ldc.i4.1
      IL_003d:  beq.s      IL_004f

      IL_003f:  br.s       IL_005d

      IL_0041:  ldloc.0
      IL_0042:  ldstr      "public "
      IL_0047:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_004c:  stloc.0
      IL_004d:  br.s       IL_005d

      IL_004f:  ldloc.0
      IL_0050:  ldstr      "static "
      IL_0055:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_005a:  stloc.0
      IL_005b:  br.s       IL_005d

      IL_005d:  nop
      IL_005e:  ldloca.s   V_5
      IL_0060:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<valuetype JavaCompiler.MethodModifier>::MoveNext()
      IL_0065:  brtrue.s   IL_0026

      IL_0067:  leave.s    IL_0078

    }  // end .try
    finally
    {
      IL_0069:  ldloca.s   V_5
      IL_006b:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<valuetype JavaCompiler.MethodModifier>
      IL_0071:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0076:  nop
      IL_0077:  endfinally
    }  // end handler
    IL_0078:  ldstr      ""
    IL_007d:  stloc.1
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class JavaCompiler.MethodHeader JavaCompiler.MethodDeclaration::methodHeader
    IL_0084:  ldfld      valuetype JavaCompiler.Result JavaCompiler.MethodHeader::result
    IL_0089:  stloc.s    V_8
    IL_008b:  ldloc.s    V_8
    IL_008d:  brfalse.s  IL_0091

    IL_008f:  br.s       IL_0099

    IL_0091:  ldstr      "void "
    IL_0096:  stloc.1
    IL_0097:  br.s       IL_0099

    IL_0099:  ldstr      ""
    IL_009e:  stloc.2
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class JavaCompiler.MethodHeader JavaCompiler.MethodDeclaration::methodHeader
    IL_00a5:  ldfld      class JavaCompiler.MethodDeclarator JavaCompiler.MethodHeader::methodDeclarator
    IL_00aa:  callvirt   instance class JavaCompiler.Identifier JavaCompiler.MethodDeclarator::get_Identifier()
    IL_00af:  callvirt   instance string JavaCompiler.Identifier::get_Name()
    IL_00b4:  stloc.2
    IL_00b5:  ldstr      ""
    IL_00ba:  stloc.3
    IL_00bb:  nop
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class JavaCompiler.MethodHeader JavaCompiler.MethodDeclaration::methodHeader
    IL_00c2:  ldfld      class JavaCompiler.MethodDeclarator JavaCompiler.MethodHeader::methodDeclarator
    IL_00c7:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.MethodDeclarator::get_FormalParameterList()
    IL_00cc:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>::GetEnumerator()
    IL_00d1:  stloc.s    V_9
    .try
    {
      IL_00d3:  br.s       IL_0145

      IL_00d5:  ldloca.s   V_9
      IL_00d7:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::get_Current()
      IL_00dc:  stloc.s    parameter
      IL_00de:  nop
      IL_00df:  ldstr      "nametype"
      IL_00e4:  newobj     instance void JavaCompiler.NameType::.ctor(string)
      IL_00e9:  newobj     instance void JavaCompiler.ArrayType::.ctor(class JavaCompiler.UnannType)
      IL_00ee:  stloc.s    arrayType
      IL_00f0:  ldloc.s    parameter
      IL_00f2:  callvirt   instance class JavaCompiler.Type JavaCompiler.FormalParameter::GetTypeFrom()
      IL_00f7:  ldloc.s    arrayType
      IL_00f9:  callvirt   instance bool JavaCompiler.Type::Equal(class JavaCompiler.Type)
      IL_00fe:  stloc.s    V_12
      IL_0100:  ldloc.s    V_12
      IL_0102:  brfalse.s  IL_0144

      IL_0104:  nop
      IL_0105:  ldc.i4.5
      IL_0106:  newarr     [mscorlib]System.String
      IL_010b:  dup
      IL_010c:  ldc.i4.0
      IL_010d:  ldloc.3
      IL_010e:  stelem.ref
      IL_010f:  dup
      IL_0110:  ldc.i4.1
      IL_0111:  ldloc.s    parameter
      IL_0113:  callvirt   instance class JavaCompiler.Type JavaCompiler.FormalParameter::GetTypeFrom()
      IL_0118:  castclass  JavaCompiler.ArrayType
      IL_011d:  callvirt   instance string JavaCompiler.Type::GetTypeName()
      IL_0122:  stelem.ref
      IL_0123:  dup
      IL_0124:  ldc.i4.2
      IL_0125:  ldstr      " "
      IL_012a:  stelem.ref
      IL_012b:  dup
      IL_012c:  ldc.i4.3
      IL_012d:  ldloc.s    parameter
      IL_012f:  callvirt   instance string JavaCompiler.FormalParameter::GetName()
      IL_0134:  stelem.ref
      IL_0135:  dup
      IL_0136:  ldc.i4.4
      IL_0137:  ldstr      ","
      IL_013c:  stelem.ref
      IL_013d:  call       string [mscorlib]System.String::Concat(string[])
      IL_0142:  stloc.3
      IL_0143:  nop
      IL_0144:  nop
      IL_0145:  ldloca.s   V_9
      IL_0147:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>::MoveNext()
      IL_014c:  brtrue.s   IL_00d5

      IL_014e:  leave.s    IL_015f

    }  // end .try
    finally
    {
      IL_0150:  ldloca.s   V_9
      IL_0152:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class JavaCompiler.FormalParameter>
      IL_0158:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_015d:  nop
      IL_015e:  endfinally
    }  // end handler
    IL_015f:  ldloc.3
    IL_0160:  ldloc.3
    IL_0161:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0166:  ldc.i4.1
    IL_0167:  sub
    IL_0168:  callvirt   instance string [mscorlib]System.String::Remove(int32)
    IL_016d:  stloc.3
    IL_016e:  ldarg.1
    IL_016f:  ldstr      ".method {0}{1}{2}({3})"
    IL_0174:  ldc.i4.4
    IL_0175:  newarr     [mscorlib]System.Object
    IL_017a:  dup
    IL_017b:  ldc.i4.0
    IL_017c:  ldloc.0
    IL_017d:  stelem.ref
    IL_017e:  dup
    IL_017f:  ldc.i4.1
    IL_0180:  ldloc.1
    IL_0181:  stelem.ref
    IL_0182:  dup
    IL_0183:  ldc.i4.2
    IL_0184:  ldloc.2
    IL_0185:  stelem.ref
    IL_0186:  dup
    IL_0187:  ldc.i4.3
    IL_0188:  ldloc.3
    IL_0189:  stelem.ref
    IL_018a:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object[])
    IL_018f:  nop
    IL_0190:  ldarg.1
    IL_0191:  ldstr      "{"
    IL_0196:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_019b:  nop
    IL_019c:  ldloc.2
    IL_019d:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_01a2:  ldstr      "main"
    IL_01a7:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_01ac:  stloc.s    V_13
    IL_01ae:  ldloc.s    V_13
    IL_01b0:  brfalse.s  IL_01ce

    IL_01b2:  nop
    IL_01b3:  ldarg.1
    IL_01b4:  ldstr      ".entrypoint"
    IL_01b9:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_01be:  nop
    IL_01bf:  ldarg.1
    IL_01c0:  ldstr      ".maxstack 1"
    IL_01c5:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_01ca:  nop
    IL_01cb:  nop
    IL_01cc:  br.s       IL_01d0

    IL_01ce:  nop
    IL_01cf:  nop
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class JavaCompiler.Block JavaCompiler.MethodDeclaration::methodBody
    IL_01d6:  ldarg.1
    IL_01d7:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_01dc:  nop
    IL_01dd:  ldarg.1
    IL_01de:  ldstr      "}"
    IL_01e3:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_01e8:  nop
    IL_01e9:  ret
  } // end of method MethodDeclaration::GenerateCode

} // end of class JavaCompiler.MethodDeclaration

.class public auto ansi beforefieldinit JavaCompiler.ClassBody
       extends JavaCompiler.Node
{
  .field private class JavaCompiler.MethodDeclaration methodDeclaration
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.MethodDeclaration methoddeclaration) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.MethodDeclaration JavaCompiler.ClassBody::methodDeclaration
    IL_000f:  ret
  } // end of method ClassBody::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.MethodDeclaration JavaCompiler.ClassBody::methodDeclaration
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method ClassBody::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method ClassBody::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class JavaCompiler.MethodDeclaration JavaCompiler.ClassBody::methodDeclaration
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_001c:  nop
    IL_001d:  ret
  } // end of method ClassBody::GenerateCode

} // end of class JavaCompiler.ClassBody

.class public auto ansi sealed JavaCompiler.ClassModifier
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JavaCompiler.ClassModifier Public = int32(0x00000000)
} // end of class JavaCompiler.ClassModifier

.class public auto ansi beforefieldinit JavaCompiler.NormalClassDeclaration
       extends JavaCompiler.TypeDeclaration
{
  .field private valuetype JavaCompiler.ClassModifier classModifier
  .field private class JavaCompiler.Identifier identifier
  .field private class JavaCompiler.ClassBody classBody
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JavaCompiler.ClassModifier classmodifier,
                               class JavaCompiler.Identifier identifier,
                               class JavaCompiler.ClassBody classbody) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.TypeDeclaration::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      valuetype JavaCompiler.ClassModifier JavaCompiler.NormalClassDeclaration::classModifier
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class JavaCompiler.Identifier JavaCompiler.NormalClassDeclaration::identifier
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      class JavaCompiler.ClassBody JavaCompiler.NormalClassDeclaration::classBody
    IL_001d:  ret
  } // end of method NormalClassDeclaration::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.Identifier JavaCompiler.NormalClassDeclaration::identifier
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_000d:  pop
    IL_000e:  ldc.i4.1
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method NormalClassDeclaration::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method NormalClassDeclaration::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       104 (0x68)
    .maxstack  4
    .locals init ([0] string modifier,
             [1] valuetype JavaCompiler.ClassModifier V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldstr      ""
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      valuetype JavaCompiler.ClassModifier JavaCompiler.NormalClassDeclaration::classModifier
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brfalse.s  IL_0022

    IL_0020:  br.s       IL_002a

    IL_0022:  ldstr      "public "
    IL_0027:  stloc.0
    IL_0028:  br.s       IL_002a

    IL_002a:  ldarg.1
    IL_002b:  ldstr      ".class {0}{1}"
    IL_0030:  ldloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class JavaCompiler.Identifier JavaCompiler.NormalClassDeclaration::identifier
    IL_0037:  callvirt   instance string JavaCompiler.Identifier::get_Name()
    IL_003c:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object,
                                                                                 object)
    IL_0041:  nop
    IL_0042:  ldarg.1
    IL_0043:  ldstr      "{"
    IL_0048:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_004d:  nop
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class JavaCompiler.ClassBody JavaCompiler.NormalClassDeclaration::classBody
    IL_0054:  ldarg.1
    IL_0055:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_005a:  nop
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "}"
    IL_0061:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_0066:  nop
    IL_0067:  ret
  } // end of method NormalClassDeclaration::GenerateCode

} // end of class JavaCompiler.NormalClassDeclaration

.class public abstract auto ansi beforefieldinit JavaCompiler.TypeDeclaration
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method TypeDeclaration::.ctor

} // end of class JavaCompiler.TypeDeclaration

.class public abstract auto ansi beforefieldinit JavaCompiler.PackageDeclaration
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method PackageDeclaration::.ctor

} // end of class JavaCompiler.PackageDeclaration

.class public abstract auto ansi beforefieldinit JavaCompiler.ImportDeclaration
       extends JavaCompiler.Node
{
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method ImportDeclaration::.ctor

} // end of class JavaCompiler.ImportDeclaration

.class public auto ansi beforefieldinit JavaCompiler.CompilationUnit
       extends JavaCompiler.Node
{
  .field private class JavaCompiler.PackageDeclaration packageDeclaration
  .field private class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.ImportDeclaration> importDeclaration
  .field private class JavaCompiler.NormalClassDeclaration typeDeclaration
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.PackageDeclaration packagedeclaration,
                               class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.ImportDeclaration> importdeclation,
                               class JavaCompiler.NormalClassDeclaration typedeclaration) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.PackageDeclaration JavaCompiler.CompilationUnit::packageDeclaration
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.ImportDeclaration> JavaCompiler.CompilationUnit::importDeclaration
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.CompilationUnit::typeDeclaration
    IL_001d:  ret
  } // end of method CompilationUnit::.ctor

  .method public hidebysig virtual instance bool 
          ResolveNames(class JavaCompiler.LexicalScope scope) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.CompilationUnit::typeDeclaration
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_001d

    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.CompilationUnit::typeDeclaration
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_001b:  pop
    IL_001c:  nop
    IL_001d:  ldc.i4.1
    IL_001e:  stloc.1
    IL_001f:  br.s       IL_0021

    IL_0021:  ldloc.1
    IL_0022:  ret
  } // end of method CompilationUnit::ResolveNames

  .method public hidebysig virtual instance void 
          CheckType(int32 indent) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method CompilationUnit::CheckType

  .method public hidebysig virtual instance void 
          GenerateCode(class [mscorlib]System.IO.StreamWriter 'stream') cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.IO.StreamWriter::get_BaseStream()
    IL_0007:  ldc.i4.0
    IL_0008:  conv.i8
    IL_0009:  ldc.i4.2
    IL_000a:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_000f:  pop
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.CompilationUnit::typeDeclaration
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_001c:  nop
    IL_001d:  ret
  } // end of method CompilationUnit::GenerateCode

} // end of class JavaCompiler.CompilationUnit

.class interface public abstract auto ansi JavaCompiler.Declaration
{
  .method public hidebysig newslot abstract virtual 
          instance class JavaCompiler.Type 
          GetTypeFrom() cil managed
  {
  } // end of method Declaration::GetTypeFrom

  .method public hidebysig newslot abstract virtual 
          instance string  GetName() cil managed
  {
  } // end of method Declaration::GetName

} // end of class JavaCompiler.Declaration

.class public auto ansi beforefieldinit JavaCompiler.LexicalScope
       extends [mscorlib]System.Object
{
  .field family class JavaCompiler.LexicalScope parentScope
  .field family class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration> symbol_table
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.LexicalScope parentScope) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class JavaCompiler.LexicalScope JavaCompiler.LexicalScope::parentScope
    IL_000f:  ldarg.0
    IL_0010:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration>::.ctor()
    IL_0015:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration> JavaCompiler.LexicalScope::symbol_table
    IL_001a:  ret
  } // end of method LexicalScope::.ctor

  .method public hidebysig instance void 
          Add(class JavaCompiler.Declaration decl) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration> JavaCompiler.LexicalScope::symbol_table
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance string JavaCompiler.Declaration::GetName()
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration>::Add(!0,
                                                                                                                                           !1)
    IL_0013:  nop
    IL_0014:  ret
  } // end of method LexicalScope::Add

  .method public hidebysig instance class JavaCompiler.Declaration 
          ResolveHere(string symbol) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] class JavaCompiler.Declaration V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration> JavaCompiler.LexicalScope::symbol_table
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration>::ContainsKey(!0)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  brfalse.s  IL_0020

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration> JavaCompiler.LexicalScope::symbol_table
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class JavaCompiler.Declaration>::get_Item(!0)
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_0024

    IL_0020:  ldnull
    IL_0021:  stloc.1
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.1
    IL_0025:  ret
  } // end of method LexicalScope::ResolveHere

  .method public hidebysig instance class JavaCompiler.Declaration 
          Resolve(string symbol) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  2
    .locals init ([0] class JavaCompiler.Declaration local,
             [1] bool V_1,
             [2] class JavaCompiler.Declaration V_2,
             [3] bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance class JavaCompiler.Declaration JavaCompiler.LexicalScope::ResolveHere(string)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldnull
    IL_000b:  cgt.un
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  brfalse.s  IL_0015

    IL_0011:  ldloc.0
    IL_0012:  stloc.2
    IL_0013:  br.s       IL_0035

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class JavaCompiler.LexicalScope JavaCompiler.LexicalScope::parentScope
    IL_001b:  ldnull
    IL_001c:  cgt.un
    IL_001e:  stloc.3
    IL_001f:  ldloc.3
    IL_0020:  brfalse.s  IL_0031

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class JavaCompiler.LexicalScope JavaCompiler.LexicalScope::parentScope
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance class JavaCompiler.Declaration JavaCompiler.LexicalScope::Resolve(string)
    IL_002e:  stloc.2
    IL_002f:  br.s       IL_0035

    IL_0031:  ldnull
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_0035

    IL_0035:  ldloc.2
    IL_0036:  ret
  } // end of method LexicalScope::Resolve

} // end of class JavaCompiler.LexicalScope

.class public auto ansi sealed JavaCompiler.Tokens
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JavaCompiler.Tokens 'error' = int32(0x0000007F)
  .field public static literal valuetype JavaCompiler.Tokens EOF = int32(0x00000080)
  .field public static literal valuetype JavaCompiler.Tokens IntegerLiteral = int32(0x00000081)
  .field public static literal valuetype JavaCompiler.Tokens Identifier = int32(0x00000082)
  .field public static literal valuetype JavaCompiler.Tokens PUBLIC = int32(0x00000083)
  .field public static literal valuetype JavaCompiler.Tokens CLASS = int32(0x00000084)
  .field public static literal valuetype JavaCompiler.Tokens STATIC = int32(0x00000085)
  .field public static literal valuetype JavaCompiler.Tokens VOID = int32(0x00000086)
  .field public static literal valuetype JavaCompiler.Tokens INT = int32(0x00000087)
  .field public static literal valuetype JavaCompiler.Tokens PRIVATE = int32(0x00000088)
  .field public static literal valuetype JavaCompiler.Tokens PROTECTED = int32(0x00000089)
} // end of class JavaCompiler.Tokens

.class public sequential ansi sealed beforefieldinit JavaCompiler.ValueType
       extends [mscorlib]System.ValueType
{
  .field public int32 num
  .field public string name
  .field public class JavaCompiler.CompilationUnit compUnit
  .field public class JavaCompiler.NormalClassDeclaration normclassDecl
  .field public valuetype JavaCompiler.ClassModifier classModi
  .field public class JavaCompiler.ClassBody classBodi
  .field public class JavaCompiler.MethodDeclaration methDecl
  .field public valuetype JavaCompiler.MethodModifier methModi
  .field public valuetype JavaCompiler.Result result
  .field public class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> stmts
  .field public class JavaCompiler.Block block
  .field public class JavaCompiler.MethodDeclarator methodecla
  .field public class JavaCompiler.MethodHeader methodhea
  .field public class JavaCompiler.Statement stmt
  .field public class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> methodmodilist
  .field public class JavaCompiler.FormalParameter fmpara
  .field public class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> fmparalist
  .field public class JavaCompiler.UnannType untype
  .field public class JavaCompiler.VariableModifier varmodi
  .field public class JavaCompiler.Identifier ident
  .field public class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> varmodis
  .field public class JavaCompiler.Assignment assign
  .field public class JavaCompiler.Expression expr
  .field public class JavaCompiler.LocalVariableDeclaration localvardcl
  .field public valuetype JavaCompiler.IntegralType inttype
} // end of class JavaCompiler.ValueType

.class public abstract auto ansi beforefieldinit JavaCompiler.ScanBase
       extends class [QUT.ShiftReduceParser]QUT.Gppg.AbstractScanner`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 1E 47 61 72 64 65 6E 73 20 50 6F 69 6E 74   // ...Gardens Point
                                                                                                  20 50 61 72 73 65 72 20 47 65 6E 65 72 61 74 6F   //  Parser Generato
                                                                                                  72 05 31 2E 35 2E 32 00 00 )                      // r.1.5.2..
  .field private class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation __yylloc
  .method public hidebysig specialname virtual 
          instance class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation 
          get_yylloc() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation JavaCompiler.ScanBase::__yylloc
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ScanBase::get_yylloc

  .method public hidebysig specialname virtual 
          instance void  set_yylloc(class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation JavaCompiler.ScanBase::__yylloc
    IL_0008:  ret
  } // end of method ScanBase::set_yylloc

  .method family hidebysig newslot virtual 
          instance bool  yywrap() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method ScanBase::yywrap

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.LexLocation::.ctor()
    IL_0006:  stfld      class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation JavaCompiler.ScanBase::__yylloc
    IL_000b:  ldarg.0
    IL_000c:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.AbstractScanner`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::.ctor()
    IL_0011:  nop
    IL_0012:  ret
  } // end of method ScanBase::.ctor

  .property instance class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation
          yylloc()
  {
    .get instance class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation JavaCompiler.ScanBase::get_yylloc()
    .set instance void JavaCompiler.ScanBase::set_yylloc(class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation)
  } // end of property ScanBase::yylloc
} // end of class JavaCompiler.ScanBase

.class public auto ansi beforefieldinit JavaCompiler.ScanObj
       extends [mscorlib]System.Object
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 1E 47 61 72 64 65 6E 73 20 50 6F 69 6E 74   // ...Gardens Point
                                                                                                  20 50 61 72 73 65 72 20 47 65 6E 65 72 61 74 6F   //  Parser Generato
                                                                                                  72 05 31 2E 35 2E 32 00 00 )                      // r.1.5.2..
  .field public int32 token
  .field public valuetype JavaCompiler.ValueType yylval
  .field public class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation yylloc
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 t,
                               valuetype JavaCompiler.ValueType val,
                               class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation loc) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 JavaCompiler.ScanObj::token
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      valuetype JavaCompiler.ValueType JavaCompiler.ScanObj::yylval
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation JavaCompiler.ScanObj::yylloc
    IL_001d:  ret
  } // end of method ScanObj::.ctor

} // end of class JavaCompiler.ScanObj

.class public auto ansi JavaCompiler.Parser
       extends class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 1E 47 61 72 64 65 6E 73 20 50 6F 69 6E 74   // ...Gardens Point
                                                                                                  20 50 61 72 73 65 72 20 47 65 6E 65 72 61 74 6F   //  Parser Generato
                                                                                                  72 05 31 2E 35 2E 32 00 00 )                      // r.1.5.2..
  .field public static class JavaCompiler.Node root
  .field private static class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string> aliases
  .field private static class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] rules
  .field private static class [QUT.ShiftReduceParser]QUT.Gppg.State[] states
  .field private static string[] nonTerms
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       4162 (0x1042)
    .maxstack  7
    .locals init ([0] int32 sNo,
             [1] bool V_1)
    IL_0000:  ldc.i4.s   58
    IL_0002:  newarr     [QUT.ShiftReduceParser]QUT.Gppg.Rule
    IL_0007:  stsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_000c:  ldc.i4.s   86
    IL_000e:  newarr     [QUT.ShiftReduceParser]QUT.Gppg.State
    IL_0013:  stsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0018:  ldc.i4.s   46
    IL_001a:  newarr     [mscorlib]System.String
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldstr      "CompilationUnit"
    IL_0026:  stelem.ref
    IL_0027:  dup
    IL_0028:  ldc.i4.1
    IL_0029:  ldstr      "NormalClassDeclaration"
    IL_002e:  stelem.ref
    IL_002f:  dup
    IL_0030:  ldc.i4.2
    IL_0031:  ldstr      "TypeDeclaration"
    IL_0036:  stelem.ref
    IL_0037:  dup
    IL_0038:  ldc.i4.3
    IL_0039:  ldstr      "ClassModifier"
    IL_003e:  stelem.ref
    IL_003f:  dup
    IL_0040:  ldc.i4.4
    IL_0041:  ldstr      "ClassBody"
    IL_0046:  stelem.ref
    IL_0047:  dup
    IL_0048:  ldc.i4.5
    IL_0049:  ldstr      "MethodModifier"
    IL_004e:  stelem.ref
    IL_004f:  dup
    IL_0050:  ldc.i4.6
    IL_0051:  ldstr      "MethodDeclaration"
    IL_0056:  stelem.ref
    IL_0057:  dup
    IL_0058:  ldc.i4.7
    IL_0059:  ldstr      "Result"
    IL_005e:  stelem.ref
    IL_005f:  dup
    IL_0060:  ldc.i4.8
    IL_0061:  ldstr      "BlockStatement"
    IL_0066:  stelem.ref
    IL_0067:  dup
    IL_0068:  ldc.i4.s   9
    IL_006a:  ldstr      "LocalVariableDeclarationStatement"
    IL_006f:  stelem.ref
    IL_0070:  dup
    IL_0071:  ldc.i4.s   10
    IL_0073:  ldstr      "ExpressionStatement"
    IL_0078:  stelem.ref
    IL_0079:  dup
    IL_007a:  ldc.i4.s   11
    IL_007c:  ldstr      "Statement"
    IL_0081:  stelem.ref
    IL_0082:  dup
    IL_0083:  ldc.i4.s   12
    IL_0085:  ldstr      "BlockStatements"
    IL_008a:  stelem.ref
    IL_008b:  dup
    IL_008c:  ldc.i4.s   13
    IL_008e:  ldstr      "MethodDeclarator"
    IL_0093:  stelem.ref
    IL_0094:  dup
    IL_0095:  ldc.i4.s   14
    IL_0097:  ldstr      "MethodHeader"
    IL_009c:  stelem.ref
    IL_009d:  dup
    IL_009e:  ldc.i4.s   15
    IL_00a0:  ldstr      "Block"
    IL_00a5:  stelem.ref
    IL_00a6:  dup
    IL_00a7:  ldc.i4.s   16
    IL_00a9:  ldstr      "MethodBody"
    IL_00ae:  stelem.ref
    IL_00af:  dup
    IL_00b0:  ldc.i4.s   17
    IL_00b2:  ldstr      "MethodModifiers"
    IL_00b7:  stelem.ref
    IL_00b8:  dup
    IL_00b9:  ldc.i4.s   18
    IL_00bb:  ldstr      "FormalParameter"
    IL_00c0:  stelem.ref
    IL_00c1:  dup
    IL_00c2:  ldc.i4.s   19
    IL_00c4:  ldstr      "FormalParameterList"
    IL_00c9:  stelem.ref
    IL_00ca:  dup
    IL_00cb:  ldc.i4.s   20
    IL_00cd:  ldstr      "UnannType"
    IL_00d2:  stelem.ref
    IL_00d3:  dup
    IL_00d4:  ldc.i4.s   21
    IL_00d6:  ldstr      "UnannPrimitiveType"
    IL_00db:  stelem.ref
    IL_00dc:  dup
    IL_00dd:  ldc.i4.s   22
    IL_00df:  ldstr      "UnannReferenceType"
    IL_00e4:  stelem.ref
    IL_00e5:  dup
    IL_00e6:  ldc.i4.s   23
    IL_00e8:  ldstr      "NumericType"
    IL_00ed:  stelem.ref
    IL_00ee:  dup
    IL_00ef:  ldc.i4.s   24
    IL_00f1:  ldstr      "IntegralType"
    IL_00f6:  stelem.ref
    IL_00f7:  dup
    IL_00f8:  ldc.i4.s   25
    IL_00fa:  ldstr      "UnannClassType"
    IL_00ff:  stelem.ref
    IL_0100:  dup
    IL_0101:  ldc.i4.s   26
    IL_0103:  ldstr      "UnannArrayType"
    IL_0108:  stelem.ref
    IL_0109:  dup
    IL_010a:  ldc.i4.s   27
    IL_010c:  ldstr      "UnannClassOrInterfaceType"
    IL_0111:  stelem.ref
    IL_0112:  dup
    IL_0113:  ldc.i4.s   28
    IL_0115:  ldstr      "VariableModifier"
    IL_011a:  stelem.ref
    IL_011b:  dup
    IL_011c:  ldc.i4.s   29
    IL_011e:  ldstr      "VariableModifiers"
    IL_0123:  stelem.ref
    IL_0124:  dup
    IL_0125:  ldc.i4.s   30
    IL_0127:  ldstr      "Assignment"
    IL_012c:  stelem.ref
    IL_012d:  dup
    IL_012e:  ldc.i4.s   31
    IL_0130:  ldstr      "Expression"
    IL_0135:  stelem.ref
    IL_0136:  dup
    IL_0137:  ldc.i4.s   32
    IL_0139:  ldstr      "LeftHandSide"
    IL_013e:  stelem.ref
    IL_013f:  dup
    IL_0140:  ldc.i4.s   33
    IL_0142:  ldstr      "LocalVariableDeclaration"
    IL_0147:  stelem.ref
    IL_0148:  dup
    IL_0149:  ldc.i4.s   34
    IL_014b:  ldstr      "VariableDeclaratorId"
    IL_0150:  stelem.ref
    IL_0151:  dup
    IL_0152:  ldc.i4.s   35
    IL_0154:  ldstr      "VariableDeclarator"
    IL_0159:  stelem.ref
    IL_015a:  dup
    IL_015b:  ldc.i4.s   36
    IL_015d:  ldstr      "$accept"
    IL_0162:  stelem.ref
    IL_0163:  dup
    IL_0164:  ldc.i4.s   37
    IL_0166:  ldstr      "PackageDeclaration"
    IL_016b:  stelem.ref
    IL_016c:  dup
    IL_016d:  ldc.i4.s   38
    IL_016f:  ldstr      "ImportDeclarations"
    IL_0174:  stelem.ref
    IL_0175:  dup
    IL_0176:  ldc.i4.s   39
    IL_0178:  ldstr      "empty"
    IL_017d:  stelem.ref
    IL_017e:  dup
    IL_017f:  ldc.i4.s   40
    IL_0181:  ldstr      "TypeParameters"
    IL_0186:  stelem.ref
    IL_0187:  dup
    IL_0188:  ldc.i4.s   41
    IL_018a:  ldstr      "Dims"
    IL_018f:  stelem.ref
    IL_0190:  dup
    IL_0191:  ldc.i4.s   42
    IL_0193:  ldstr      "Annotations"
    IL_0198:  stelem.ref
    IL_0199:  dup
    IL_019a:  ldc.i4.s   43
    IL_019c:  ldstr      "MoreDims"
    IL_01a1:  stelem.ref
    IL_01a2:  dup
    IL_01a3:  ldc.i4.s   44
    IL_01a5:  ldstr      "TypeArguments_opt"
    IL_01aa:  stelem.ref
    IL_01ab:  dup
    IL_01ac:  ldc.i4.s   45
    IL_01ae:  ldstr      "AssignmentOperator"
    IL_01b3:  stelem.ref
    IL_01b4:  stsfld     string[] JavaCompiler.Parser::nonTerms
    IL_01b9:  nop
    IL_01ba:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_01bf:  ldc.i4.0
    IL_01c0:  ldc.i4.s   -3
    IL_01c2:  ldc.i4.6
    IL_01c3:  newarr     [mscorlib]System.Int32
    IL_01c8:  dup
    IL_01c9:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::B58C90035CB06D523DB96990B500B99753ABDFFE
    IL_01ce:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_01d3:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_01d8:  stelem.ref
    IL_01d9:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_01de:  ldc.i4.1
    IL_01df:  ldc.i4.2
    IL_01e0:  newarr     [mscorlib]System.Int32
    IL_01e5:  dup
    IL_01e6:  ldc.i4.0
    IL_01e7:  ldc.i4     0x80
    IL_01ec:  stelem.i4
    IL_01ed:  dup
    IL_01ee:  ldc.i4.1
    IL_01ef:  ldc.i4.2
    IL_01f0:  stelem.i4
    IL_01f1:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_01f6:  stelem.ref
    IL_01f7:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_01fc:  ldc.i4.2
    IL_01fd:  ldc.i4.m1
    IL_01fe:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0203:  stelem.ref
    IL_0204:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0209:  ldc.i4.3
    IL_020a:  ldc.i4.s   -3
    IL_020c:  ldc.i4.4
    IL_020d:  newarr     [mscorlib]System.Int32
    IL_0212:  dup
    IL_0213:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'7CCB833282C9B6E947C892544B30E47B9EE8E05A'
    IL_0218:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_021d:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_0222:  stelem.ref
    IL_0223:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0228:  ldc.i4.4
    IL_0229:  ldc.i4.2
    IL_022a:  newarr     [mscorlib]System.Int32
    IL_022f:  dup
    IL_0230:  ldc.i4.0
    IL_0231:  ldc.i4     0x83
    IL_0236:  stelem.i4
    IL_0237:  dup
    IL_0238:  ldc.i4.1
    IL_0239:  ldc.i4.s   83
    IL_023b:  stelem.i4
    IL_023c:  ldc.i4.6
    IL_023d:  newarr     [mscorlib]System.Int32
    IL_0242:  dup
    IL_0243:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::B2CAC0C39642285D8F264297961602A916A7E2E7
    IL_0248:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_024d:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0252:  stelem.ref
    IL_0253:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0258:  ldc.i4.5
    IL_0259:  ldc.i4.s   -2
    IL_025b:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0260:  stelem.ref
    IL_0261:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0266:  ldc.i4.6
    IL_0267:  ldc.i4.s   -6
    IL_0269:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_026e:  stelem.ref
    IL_026f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0274:  ldc.i4.7
    IL_0275:  ldc.i4.2
    IL_0276:  newarr     [mscorlib]System.Int32
    IL_027b:  dup
    IL_027c:  ldc.i4.0
    IL_027d:  ldc.i4     0x84
    IL_0282:  stelem.i4
    IL_0283:  dup
    IL_0284:  ldc.i4.1
    IL_0285:  ldc.i4.8
    IL_0286:  stelem.i4
    IL_0287:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_028c:  stelem.ref
    IL_028d:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0292:  ldc.i4.8
    IL_0293:  ldc.i4.2
    IL_0294:  newarr     [mscorlib]System.Int32
    IL_0299:  dup
    IL_029a:  ldc.i4.0
    IL_029b:  ldc.i4     0x82
    IL_02a0:  stelem.i4
    IL_02a1:  dup
    IL_02a2:  ldc.i4.1
    IL_02a3:  ldc.i4.s   9
    IL_02a5:  stelem.i4
    IL_02a6:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_02ab:  stelem.ref
    IL_02ac:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_02b1:  ldc.i4.s   9
    IL_02b3:  ldc.i4.s   -3
    IL_02b5:  ldc.i4.4
    IL_02b6:  newarr     [mscorlib]System.Int32
    IL_02bb:  dup
    IL_02bc:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'7CF4D40D2981482799E8B8BA75C5BDA7E996AB88'
    IL_02c1:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_02c6:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_02cb:  stelem.ref
    IL_02cc:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_02d1:  ldc.i4.s   10
    IL_02d3:  ldc.i4.2
    IL_02d4:  newarr     [mscorlib]System.Int32
    IL_02d9:  dup
    IL_02da:  ldc.i4.0
    IL_02db:  ldc.i4.s   123
    IL_02dd:  stelem.i4
    IL_02de:  dup
    IL_02df:  ldc.i4.1
    IL_02e0:  ldc.i4.s   11
    IL_02e2:  stelem.i4
    IL_02e3:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_02e8:  stelem.ref
    IL_02e9:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_02ee:  ldc.i4.s   11
    IL_02f0:  ldc.i4.8
    IL_02f1:  newarr     [mscorlib]System.Int32
    IL_02f6:  dup
    IL_02f7:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::CDEF00C73C6B9A716905CFC10980C286F8FC3790
    IL_02fc:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0301:  ldc.i4.s   10
    IL_0303:  newarr     [mscorlib]System.Int32
    IL_0308:  dup
    IL_0309:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' '<PrivateImplementationDetails>'::B62EAD6F93AB829D2BBCF5EDA0A6CDCED9B6E1E1
    IL_030e:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0313:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0318:  stelem.ref
    IL_0319:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_031e:  ldc.i4.s   12
    IL_0320:  ldc.i4.2
    IL_0321:  newarr     [mscorlib]System.Int32
    IL_0326:  dup
    IL_0327:  ldc.i4.0
    IL_0328:  ldc.i4.s   125
    IL_032a:  stelem.i4
    IL_032b:  dup
    IL_032c:  ldc.i4.1
    IL_032d:  ldc.i4.s   13
    IL_032f:  stelem.i4
    IL_0330:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_0335:  stelem.ref
    IL_0336:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_033b:  ldc.i4.s   13
    IL_033d:  ldc.i4.s   -7
    IL_033f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0344:  stelem.ref
    IL_0345:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_034a:  ldc.i4.s   14
    IL_034c:  ldc.i4.s   -10
    IL_034e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0353:  stelem.ref
    IL_0354:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0359:  ldc.i4.s   15
    IL_035b:  ldc.i4.2
    IL_035c:  newarr     [mscorlib]System.Int32
    IL_0361:  dup
    IL_0362:  ldc.i4.0
    IL_0363:  ldc.i4     0x86
    IL_0368:  stelem.i4
    IL_0369:  dup
    IL_036a:  ldc.i4.1
    IL_036b:  ldc.i4.s   75
    IL_036d:  stelem.i4
    IL_036e:  ldc.i4.4
    IL_036f:  newarr     [mscorlib]System.Int32
    IL_0374:  dup
    IL_0375:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'4D6DFDD3971F577B2EB2A40DEAA5A18CB557019B'
    IL_037a:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_037f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0384:  stelem.ref
    IL_0385:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_038a:  ldc.i4.s   16
    IL_038c:  ldc.i4.2
    IL_038d:  newarr     [mscorlib]System.Int32
    IL_0392:  dup
    IL_0393:  ldc.i4.0
    IL_0394:  ldc.i4.s   123
    IL_0396:  stelem.i4
    IL_0397:  dup
    IL_0398:  ldc.i4.1
    IL_0399:  ldc.i4.s   19
    IL_039b:  stelem.i4
    IL_039c:  ldc.i4.4
    IL_039d:  newarr     [mscorlib]System.Int32
    IL_03a2:  dup
    IL_03a3:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'4AF742FE1255C7637F7BB2B35C73048AEB2B63D5'
    IL_03a8:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_03ad:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_03b2:  stelem.ref
    IL_03b3:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_03b8:  ldc.i4.s   17
    IL_03ba:  ldc.i4.s   -12
    IL_03bc:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_03c1:  stelem.ref
    IL_03c2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_03c7:  ldc.i4.s   18
    IL_03c9:  ldc.i4.s   -24
    IL_03cb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_03d0:  stelem.ref
    IL_03d1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_03d6:  ldc.i4.s   19
    IL_03d8:  ldc.i4.s   -3
    IL_03da:  ldc.i4.4
    IL_03db:  newarr     [mscorlib]System.Int32
    IL_03e0:  dup
    IL_03e1:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'22A0F58379C1A7E7460957E7A67D15131967BAD7'
    IL_03e6:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_03eb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_03f0:  stelem.ref
    IL_03f1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_03f6:  ldc.i4.s   20
    IL_03f8:  ldc.i4.6
    IL_03f9:  newarr     [mscorlib]System.Int32
    IL_03fe:  dup
    IL_03ff:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'425B330B5B4E0336A06572C6BEC36747C8480C0E'
    IL_0404:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0409:  ldc.i4.s   20
    IL_040b:  newarr     [mscorlib]System.Int32
    IL_0410:  dup
    IL_0411:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=80' '<PrivateImplementationDetails>'::'86BCB8BB10E3DEC944DEE89D7ABD12B563F9D037'
    IL_0416:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_041b:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0420:  stelem.ref
    IL_0421:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0426:  ldc.i4.s   21
    IL_0428:  ldc.i4.s   -25
    IL_042a:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_042f:  stelem.ref
    IL_0430:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0435:  ldc.i4.s   22
    IL_0437:  ldc.i4.s   -26
    IL_0439:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_043e:  stelem.ref
    IL_043f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0444:  ldc.i4.s   23
    IL_0446:  ldc.i4.s   -28
    IL_0448:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_044d:  stelem.ref
    IL_044e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0453:  ldc.i4.s   24
    IL_0455:  ldc.i4.2
    IL_0456:  newarr     [mscorlib]System.Int32
    IL_045b:  dup
    IL_045c:  ldc.i4.0
    IL_045d:  ldc.i4.s   59
    IL_045f:  stelem.i4
    IL_0460:  dup
    IL_0461:  ldc.i4.1
    IL_0462:  ldc.i4.s   25
    IL_0464:  stelem.i4
    IL_0465:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_046a:  stelem.ref
    IL_046b:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0470:  ldc.i4.s   25
    IL_0472:  ldc.i4.s   -30
    IL_0474:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0479:  stelem.ref
    IL_047a:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_047f:  ldc.i4.s   26
    IL_0481:  ldc.i4.4
    IL_0482:  newarr     [mscorlib]System.Int32
    IL_0487:  dup
    IL_0488:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'80B896F488188EE0BB10A1121D1A617632E993CB'
    IL_048d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0492:  ldc.i4.s   16
    IL_0494:  newarr     [mscorlib]System.Int32
    IL_0499:  dup
    IL_049a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::'70A3E4F2CAD914097FFA614DCB5B7C54CDC42C37'
    IL_049f:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_04a4:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_04a9:  stelem.ref
    IL_04aa:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_04af:  ldc.i4.s   27
    IL_04b1:  ldc.i4.2
    IL_04b2:  newarr     [mscorlib]System.Int32
    IL_04b7:  dup
    IL_04b8:  ldc.i4.0
    IL_04b9:  ldc.i4     0x82
    IL_04be:  stelem.i4
    IL_04bf:  dup
    IL_04c0:  ldc.i4.1
    IL_04c1:  ldc.i4.s   30
    IL_04c3:  stelem.i4
    IL_04c4:  ldc.i4.4
    IL_04c5:  newarr     [mscorlib]System.Int32
    IL_04ca:  dup
    IL_04cb:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::AF25B75388232B0E0ED839B3041F4B8361588371
    IL_04d0:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_04d5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_04da:  stelem.ref
    IL_04db:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_04e0:  ldc.i4.s   28
    IL_04e2:  ldc.i4.s   -31
    IL_04e4:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_04e9:  stelem.ref
    IL_04ea:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_04ef:  ldc.i4.s   29
    IL_04f1:  ldc.i4.s   -50
    IL_04f3:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_04f8:  stelem.ref
    IL_04f9:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_04fe:  ldc.i4.s   30
    IL_0500:  ldc.i4.s   -51
    IL_0502:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0507:  stelem.ref
    IL_0508:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_050d:  ldc.i4.s   31
    IL_050f:  ldc.i4.s   -35
    IL_0511:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0516:  stelem.ref
    IL_0517:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_051c:  ldc.i4.s   32
    IL_051e:  ldc.i4.s   -47
    IL_0520:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0525:  stelem.ref
    IL_0526:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_052b:  ldc.i4.s   33
    IL_052d:  ldc.i4.s   -48
    IL_052f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0534:  stelem.ref
    IL_0535:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_053a:  ldc.i4.s   34
    IL_053c:  ldc.i4.s   -49
    IL_053e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0543:  stelem.ref
    IL_0544:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0549:  ldc.i4.s   35
    IL_054b:  ldc.i4.s   -36
    IL_054d:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0552:  stelem.ref
    IL_0553:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0558:  ldc.i4.s   36
    IL_055a:  ldc.i4.4
    IL_055b:  newarr     [mscorlib]System.Int32
    IL_0560:  dup
    IL_0561:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::E43995CCB19E6A1A85322C85C14067D346290E73
    IL_0566:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_056b:  ldc.i4.6
    IL_056c:  newarr     [mscorlib]System.Int32
    IL_0571:  dup
    IL_0572:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'832657139EF8EEB638B3EEB19D8E8034603941AB'
    IL_0577:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_057c:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0581:  stelem.ref
    IL_0582:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0587:  ldc.i4.s   37
    IL_0589:  ldc.i4.s   -39
    IL_058b:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0590:  stelem.ref
    IL_0591:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0596:  ldc.i4.s   38
    IL_0598:  ldc.i4.2
    IL_0599:  newarr     [mscorlib]System.Int32
    IL_059e:  dup
    IL_059f:  ldc.i4.0
    IL_05a0:  ldc.i4.s   91
    IL_05a2:  stelem.i4
    IL_05a3:  dup
    IL_05a4:  ldc.i4.1
    IL_05a5:  ldc.i4.s   39
    IL_05a7:  stelem.i4
    IL_05a8:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_05ad:  stelem.ref
    IL_05ae:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_05b3:  ldc.i4.s   39
    IL_05b5:  ldc.i4.2
    IL_05b6:  newarr     [mscorlib]System.Int32
    IL_05bb:  dup
    IL_05bc:  ldc.i4.0
    IL_05bd:  ldc.i4.s   93
    IL_05bf:  stelem.i4
    IL_05c0:  dup
    IL_05c1:  ldc.i4.1
    IL_05c2:  ldc.i4.s   40
    IL_05c4:  stelem.i4
    IL_05c5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_05ca:  stelem.ref
    IL_05cb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_05d0:  ldc.i4.s   40
    IL_05d2:  ldc.i4.s   -3
    IL_05d4:  ldc.i4.8
    IL_05d5:  newarr     [mscorlib]System.Int32
    IL_05da:  dup
    IL_05db:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::FC430569B5A5AD4A1A78A297A073E90497EAE102
    IL_05e0:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_05e5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_05ea:  stelem.ref
    IL_05eb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_05f0:  ldc.i4.s   41
    IL_05f2:  ldc.i4.s   -40
    IL_05f4:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_05f9:  stelem.ref
    IL_05fa:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_05ff:  ldc.i4.s   42
    IL_0601:  ldc.i4.s   -41
    IL_0603:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0608:  stelem.ref
    IL_0609:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_060e:  ldc.i4.s   43
    IL_0610:  ldc.i4.4
    IL_0611:  newarr     [mscorlib]System.Int32
    IL_0616:  dup
    IL_0617:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::E2BCF0B0FFEBCCA84A15DF269BAE5BA21A9D4432
    IL_061c:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0621:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_0626:  stelem.ref
    IL_0627:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_062c:  ldc.i4.s   44
    IL_062e:  ldc.i4.s   -43
    IL_0630:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0635:  stelem.ref
    IL_0636:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_063b:  ldc.i4.s   45
    IL_063d:  ldc.i4.s   -44
    IL_063f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0644:  stelem.ref
    IL_0645:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_064a:  ldc.i4.s   46
    IL_064c:  ldc.i4.s   -3
    IL_064e:  ldc.i4.4
    IL_064f:  newarr     [mscorlib]System.Int32
    IL_0654:  dup
    IL_0655:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::D08338B780738581E95BDDCE05C44459ADF6D6BB
    IL_065a:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_065f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_0664:  stelem.ref
    IL_0665:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_066a:  ldc.i4.s   47
    IL_066c:  ldc.i4.s   -45
    IL_066e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0673:  stelem.ref
    IL_0674:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0679:  ldc.i4.s   48
    IL_067b:  ldc.i4.s   -46
    IL_067d:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0682:  stelem.ref
    IL_0683:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0688:  ldc.i4.s   49
    IL_068a:  ldc.i4.s   -38
    IL_068c:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0691:  stelem.ref
    IL_0692:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0697:  ldc.i4.s   50
    IL_0699:  ldc.i4.s   -3
    IL_069b:  ldc.i4.6
    IL_069c:  newarr     [mscorlib]System.Int32
    IL_06a1:  dup
    IL_06a2:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'0D736771679D0E9FE28137E2C21470F3A33877F4'
    IL_06a7:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_06ac:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_06b1:  stelem.ref
    IL_06b2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_06b7:  ldc.i4.s   51
    IL_06b9:  ldc.i4.s   -32
    IL_06bb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_06c0:  stelem.ref
    IL_06c1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_06c6:  ldc.i4.s   52
    IL_06c8:  ldc.i4.s   -33
    IL_06ca:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_06cf:  stelem.ref
    IL_06d0:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_06d5:  ldc.i4.s   53
    IL_06d7:  ldc.i4.s   -29
    IL_06d9:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_06de:  stelem.ref
    IL_06df:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_06e4:  ldc.i4.s   54
    IL_06e6:  ldc.i4.s   -52
    IL_06e8:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_06ed:  stelem.ref
    IL_06ee:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_06f3:  ldc.i4.s   55
    IL_06f5:  ldc.i4.2
    IL_06f6:  newarr     [mscorlib]System.Int32
    IL_06fb:  dup
    IL_06fc:  ldc.i4.0
    IL_06fd:  ldc.i4.s   59
    IL_06ff:  stelem.i4
    IL_0700:  dup
    IL_0701:  ldc.i4.1
    IL_0702:  ldc.i4.s   56
    IL_0704:  stelem.i4
    IL_0705:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_070a:  stelem.ref
    IL_070b:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0710:  ldc.i4.s   56
    IL_0712:  ldc.i4.s   -53
    IL_0714:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0719:  stelem.ref
    IL_071a:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_071f:  ldc.i4.s   57
    IL_0721:  ldc.i4.2
    IL_0722:  newarr     [mscorlib]System.Int32
    IL_0727:  dup
    IL_0728:  ldc.i4.0
    IL_0729:  ldc.i4.s   61
    IL_072b:  stelem.i4
    IL_072c:  dup
    IL_072d:  ldc.i4.1
    IL_072e:  ldc.i4.s   61
    IL_0730:  stelem.i4
    IL_0731:  ldc.i4.2
    IL_0732:  newarr     [mscorlib]System.Int32
    IL_0737:  dup
    IL_0738:  ldc.i4.0
    IL_0739:  ldc.i4.s   -46
    IL_073b:  stelem.i4
    IL_073c:  dup
    IL_073d:  ldc.i4.1
    IL_073e:  ldc.i4.s   58
    IL_0740:  stelem.i4
    IL_0741:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0746:  stelem.ref
    IL_0747:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_074c:  ldc.i4.s   58
    IL_074e:  ldc.i4.2
    IL_074f:  newarr     [mscorlib]System.Int32
    IL_0754:  dup
    IL_0755:  ldc.i4.0
    IL_0756:  ldc.i4     0x81
    IL_075b:  stelem.i4
    IL_075c:  dup
    IL_075d:  ldc.i4.1
    IL_075e:  ldc.i4.s   60
    IL_0760:  stelem.i4
    IL_0761:  ldc.i4.2
    IL_0762:  newarr     [mscorlib]System.Int32
    IL_0767:  dup
    IL_0768:  ldc.i4.0
    IL_0769:  ldc.i4.s   -32
    IL_076b:  stelem.i4
    IL_076c:  dup
    IL_076d:  ldc.i4.1
    IL_076e:  ldc.i4.s   59
    IL_0770:  stelem.i4
    IL_0771:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0776:  stelem.ref
    IL_0777:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_077c:  ldc.i4.s   59
    IL_077e:  ldc.i4.s   -54
    IL_0780:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0785:  stelem.ref
    IL_0786:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_078b:  ldc.i4.s   60
    IL_078d:  ldc.i4.s   -57
    IL_078f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0794:  stelem.ref
    IL_0795:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_079a:  ldc.i4.s   61
    IL_079c:  ldc.i4.s   -56
    IL_079e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_07a3:  stelem.ref
    IL_07a4:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_07a9:  ldc.i4.s   62
    IL_07ab:  ldc.i4.s   -55
    IL_07ad:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_07b2:  stelem.ref
    IL_07b3:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_07b8:  ldc.i4.s   63
    IL_07ba:  ldc.i4.s   -27
    IL_07bc:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_07c1:  stelem.ref
    IL_07c2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_07c7:  ldc.i4.s   64
    IL_07c9:  ldc.i4.2
    IL_07ca:  newarr     [mscorlib]System.Int32
    IL_07cf:  dup
    IL_07d0:  ldc.i4.0
    IL_07d1:  ldc.i4     0x82
    IL_07d6:  stelem.i4
    IL_07d7:  dup
    IL_07d8:  ldc.i4.1
    IL_07d9:  ldc.i4.s   66
    IL_07db:  stelem.i4
    IL_07dc:  ldc.i4.2
    IL_07dd:  newarr     [mscorlib]System.Int32
    IL_07e2:  dup
    IL_07e3:  ldc.i4.0
    IL_07e4:  ldc.i4.s   -14
    IL_07e6:  stelem.i4
    IL_07e7:  dup
    IL_07e8:  ldc.i4.1
    IL_07e9:  ldc.i4.s   65
    IL_07eb:  stelem.i4
    IL_07ec:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_07f1:  stelem.ref
    IL_07f2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_07f7:  ldc.i4.s   65
    IL_07f9:  ldc.i4.s   -18
    IL_07fb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0800:  stelem.ref
    IL_0801:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0806:  ldc.i4.s   66
    IL_0808:  ldc.i4.2
    IL_0809:  newarr     [mscorlib]System.Int32
    IL_080e:  dup
    IL_080f:  ldc.i4.0
    IL_0810:  ldc.i4.s   40
    IL_0812:  stelem.i4
    IL_0813:  dup
    IL_0814:  ldc.i4.1
    IL_0815:  ldc.i4.s   67
    IL_0817:  stelem.i4
    IL_0818:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_081d:  stelem.ref
    IL_081e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0823:  ldc.i4.s   67
    IL_0825:  ldc.i4.s   -3
    IL_0827:  ldc.i4.4
    IL_0828:  newarr     [mscorlib]System.Int32
    IL_082d:  dup
    IL_082e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'282C6DE3D86E2A4342193D2B7F85A624B39F05AE'
    IL_0833:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0838:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32,
                                                                                    int32[])
    IL_083d:  stelem.ref
    IL_083e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0843:  ldc.i4.s   68
    IL_0845:  ldc.i4.6
    IL_0846:  newarr     [mscorlib]System.Int32
    IL_084b:  dup
    IL_084c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'1C13440DA2078262FAAD9D59395C3DE89C1A48E0'
    IL_0851:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0856:  ldc.i4.8
    IL_0857:  newarr     [mscorlib]System.Int32
    IL_085c:  dup
    IL_085d:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::'04EDF8D01342FF2BE21ACDF644D47B6B699F2640'
    IL_0862:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0867:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_086c:  stelem.ref
    IL_086d:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0872:  ldc.i4.s   69
    IL_0874:  ldc.i4.s   -20
    IL_0876:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_087b:  stelem.ref
    IL_087c:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0881:  ldc.i4.s   70
    IL_0883:  ldc.i4.s   -21
    IL_0885:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_088a:  stelem.ref
    IL_088b:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0890:  ldc.i4.s   71
    IL_0892:  ldc.i4.4
    IL_0893:  newarr     [mscorlib]System.Int32
    IL_0898:  dup
    IL_0899:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'80B896F488188EE0BB10A1121D1A617632E993CB'
    IL_089e:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_08a3:  ldc.i4.s   16
    IL_08a5:  newarr     [mscorlib]System.Int32
    IL_08aa:  dup
    IL_08ab:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::'42E3BCE12E100DBED988E4BEAD40C0AF3FE862EA'
    IL_08b0:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_08b5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_08ba:  stelem.ref
    IL_08bb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_08c0:  ldc.i4.s   72
    IL_08c2:  ldc.i4.2
    IL_08c3:  newarr     [mscorlib]System.Int32
    IL_08c8:  dup
    IL_08c9:  ldc.i4.0
    IL_08ca:  ldc.i4     0x82
    IL_08cf:  stelem.i4
    IL_08d0:  dup
    IL_08d1:  ldc.i4.1
    IL_08d2:  ldc.i4.s   30
    IL_08d4:  stelem.i4
    IL_08d5:  ldc.i4.2
    IL_08d6:  newarr     [mscorlib]System.Int32
    IL_08db:  dup
    IL_08dc:  ldc.i4.0
    IL_08dd:  ldc.i4.s   -35
    IL_08df:  stelem.i4
    IL_08e0:  dup
    IL_08e1:  ldc.i4.1
    IL_08e2:  ldc.i4.s   73
    IL_08e4:  stelem.i4
    IL_08e5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_08ea:  stelem.ref
    IL_08eb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_08f0:  ldc.i4.s   73
    IL_08f2:  ldc.i4.s   -23
    IL_08f4:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_08f9:  stelem.ref
    IL_08fa:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_08ff:  ldc.i4.s   74
    IL_0901:  ldc.i4.s   -22
    IL_0903:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0908:  stelem.ref
    IL_0909:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_090e:  ldc.i4.s   75
    IL_0910:  ldc.i4.s   -19
    IL_0912:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0917:  stelem.ref
    IL_0918:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_091d:  ldc.i4.s   76
    IL_091f:  ldc.i4.6
    IL_0920:  newarr     [mscorlib]System.Int32
    IL_0925:  dup
    IL_0926:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'51D3CD1F5361AEA05770A6302B42C1BEFD932F4B'
    IL_092b:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0930:  ldc.i4.6
    IL_0931:  newarr     [mscorlib]System.Int32
    IL_0936:  dup
    IL_0937:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::A1F34BB1DB54FC708F2F236D9312281B1BAB49C3
    IL_093c:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0941:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[],
                                                                                    int32[])
    IL_0946:  stelem.ref
    IL_0947:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_094c:  ldc.i4.s   77
    IL_094e:  ldc.i4.s   -14
    IL_0950:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0955:  stelem.ref
    IL_0956:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_095b:  ldc.i4.s   78
    IL_095d:  ldc.i4.s   -16
    IL_095f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0964:  stelem.ref
    IL_0965:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_096a:  ldc.i4.s   79
    IL_096c:  ldc.i4.s   -17
    IL_096e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0973:  stelem.ref
    IL_0974:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0979:  ldc.i4.s   80
    IL_097b:  ldc.i4.s   -15
    IL_097d:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_0982:  stelem.ref
    IL_0983:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0988:  ldc.i4.s   81
    IL_098a:  ldc.i4.4
    IL_098b:  newarr     [mscorlib]System.Int32
    IL_0990:  dup
    IL_0991:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'1E0415EC6B7D5BD87FF3A85EA4780B80D1B29CC8'
    IL_0996:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_099b:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32[])
    IL_09a0:  stelem.ref
    IL_09a1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09a6:  ldc.i4.s   82
    IL_09a8:  ldc.i4.s   -9
    IL_09aa:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_09af:  stelem.ref
    IL_09b0:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09b5:  ldc.i4.s   83
    IL_09b7:  ldc.i4.s   -8
    IL_09b9:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_09be:  stelem.ref
    IL_09bf:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09c4:  ldc.i4.s   84
    IL_09c6:  ldc.i4.s   -5
    IL_09c8:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_09cd:  stelem.ref
    IL_09ce:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09d3:  ldc.i4.s   85
    IL_09d5:  ldc.i4.s   -4
    IL_09d7:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.State::.ctor(int32)
    IL_09dc:  stelem.ref
    IL_09dd:  ldc.i4.0
    IL_09de:  stloc.0
    IL_09df:  br.s       IL_09f2

    IL_09e1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09e6:  ldloc.0
    IL_09e7:  ldelem.ref
    IL_09e8:  ldloc.0
    IL_09e9:  stfld      int32 [QUT.ShiftReduceParser]QUT.Gppg.State::number
    IL_09ee:  ldloc.0
    IL_09ef:  ldc.i4.1
    IL_09f0:  add
    IL_09f1:  stloc.0
    IL_09f2:  ldloc.0
    IL_09f3:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_09f8:  ldlen
    IL_09f9:  conv.i4
    IL_09fa:  clt
    IL_09fc:  stloc.1
    IL_09fd:  ldloc.1
    IL_09fe:  brtrue.s   IL_09e1

    IL_0a00:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a05:  ldc.i4.1
    IL_0a06:  ldc.i4.s   -37
    IL_0a08:  ldc.i4.2
    IL_0a09:  newarr     [mscorlib]System.Int32
    IL_0a0e:  dup
    IL_0a0f:  ldc.i4.0
    IL_0a10:  ldc.i4.m1
    IL_0a11:  stelem.i4
    IL_0a12:  dup
    IL_0a13:  ldc.i4.1
    IL_0a14:  ldc.i4     0x80
    IL_0a19:  stelem.i4
    IL_0a1a:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a1f:  stelem.ref
    IL_0a20:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a25:  ldc.i4.2
    IL_0a26:  ldc.i4.m1
    IL_0a27:  ldc.i4.3
    IL_0a28:  newarr     [mscorlib]System.Int32
    IL_0a2d:  dup
    IL_0a2e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::C2D31722E50C02855135F3A5C184AD66D33F456E
    IL_0a33:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0a38:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a3d:  stelem.ref
    IL_0a3e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a43:  ldc.i4.3
    IL_0a44:  ldc.i4.s   -40
    IL_0a46:  ldc.i4.0
    IL_0a47:  newarr     [mscorlib]System.Int32
    IL_0a4c:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a51:  stelem.ref
    IL_0a52:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a57:  ldc.i4.4
    IL_0a58:  ldc.i4.s   -38
    IL_0a5a:  ldc.i4.1
    IL_0a5b:  newarr     [mscorlib]System.Int32
    IL_0a60:  dup
    IL_0a61:  ldc.i4.0
    IL_0a62:  ldc.i4.s   -40
    IL_0a64:  stelem.i4
    IL_0a65:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a6a:  stelem.ref
    IL_0a6b:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a70:  ldc.i4.5
    IL_0a71:  ldc.i4.s   -39
    IL_0a73:  ldc.i4.1
    IL_0a74:  newarr     [mscorlib]System.Int32
    IL_0a79:  dup
    IL_0a7a:  ldc.i4.0
    IL_0a7b:  ldc.i4.s   -40
    IL_0a7d:  stelem.i4
    IL_0a7e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a83:  stelem.ref
    IL_0a84:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0a89:  ldc.i4.6
    IL_0a8a:  ldc.i4.s   -3
    IL_0a8c:  ldc.i4.1
    IL_0a8d:  newarr     [mscorlib]System.Int32
    IL_0a92:  dup
    IL_0a93:  ldc.i4.0
    IL_0a94:  ldc.i4.s   -2
    IL_0a96:  stelem.i4
    IL_0a97:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0a9c:  stelem.ref
    IL_0a9d:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0aa2:  ldc.i4.7
    IL_0aa3:  ldc.i4.s   -2
    IL_0aa5:  ldc.i4.7
    IL_0aa6:  newarr     [mscorlib]System.Int32
    IL_0aab:  dup
    IL_0aac:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=28' '<PrivateImplementationDetails>'::'75CD11FA324D766851CA731DD9D1793E6CDE3145'
    IL_0ab1:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0ab6:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0abb:  stelem.ref
    IL_0abc:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ac1:  ldc.i4.8
    IL_0ac2:  ldc.i4.s   -4
    IL_0ac4:  ldc.i4.1
    IL_0ac5:  newarr     [mscorlib]System.Int32
    IL_0aca:  dup
    IL_0acb:  ldc.i4.0
    IL_0acc:  ldc.i4     0x83
    IL_0ad1:  stelem.i4
    IL_0ad2:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0ad7:  stelem.ref
    IL_0ad8:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0add:  ldc.i4.s   9
    IL_0adf:  ldc.i4.s   -41
    IL_0ae1:  ldc.i4.1
    IL_0ae2:  newarr     [mscorlib]System.Int32
    IL_0ae7:  dup
    IL_0ae8:  ldc.i4.0
    IL_0ae9:  ldc.i4.s   -40
    IL_0aeb:  stelem.i4
    IL_0aec:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0af1:  stelem.ref
    IL_0af2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0af7:  ldc.i4.s   10
    IL_0af9:  ldc.i4.s   -5
    IL_0afb:  ldc.i4.1
    IL_0afc:  newarr     [mscorlib]System.Int32
    IL_0b01:  dup
    IL_0b02:  ldc.i4.0
    IL_0b03:  ldc.i4.s   -7
    IL_0b05:  stelem.i4
    IL_0b06:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b0b:  stelem.ref
    IL_0b0c:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b11:  ldc.i4.s   11
    IL_0b13:  ldc.i4.s   -5
    IL_0b15:  ldc.i4.1
    IL_0b16:  newarr     [mscorlib]System.Int32
    IL_0b1b:  dup
    IL_0b1c:  ldc.i4.0
    IL_0b1d:  ldc.i4.s   -40
    IL_0b1f:  stelem.i4
    IL_0b20:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b25:  stelem.ref
    IL_0b26:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b2b:  ldc.i4.s   12
    IL_0b2d:  ldc.i4.s   -7
    IL_0b2f:  ldc.i4.3
    IL_0b30:  newarr     [mscorlib]System.Int32
    IL_0b35:  dup
    IL_0b36:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::B696995357AF5A800EFA12D6A54A821115D1987A
    IL_0b3b:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0b40:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b45:  stelem.ref
    IL_0b46:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b4b:  ldc.i4.s   13
    IL_0b4d:  ldc.i4.s   -7
    IL_0b4f:  ldc.i4.1
    IL_0b50:  newarr     [mscorlib]System.Int32
    IL_0b55:  dup
    IL_0b56:  ldc.i4.0
    IL_0b57:  ldc.i4.s   -40
    IL_0b59:  stelem.i4
    IL_0b5a:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b5f:  stelem.ref
    IL_0b60:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b65:  ldc.i4.s   14
    IL_0b67:  ldc.i4.s   -18
    IL_0b69:  ldc.i4.2
    IL_0b6a:  newarr     [mscorlib]System.Int32
    IL_0b6f:  dup
    IL_0b70:  ldc.i4.0
    IL_0b71:  ldc.i4.s   -6
    IL_0b73:  stelem.i4
    IL_0b74:  dup
    IL_0b75:  ldc.i4.1
    IL_0b76:  ldc.i4.s   -18
    IL_0b78:  stelem.i4
    IL_0b79:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b7e:  stelem.ref
    IL_0b7f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b84:  ldc.i4.s   15
    IL_0b86:  ldc.i4.s   -18
    IL_0b88:  ldc.i4.1
    IL_0b89:  newarr     [mscorlib]System.Int32
    IL_0b8e:  dup
    IL_0b8f:  ldc.i4.0
    IL_0b90:  ldc.i4.s   -40
    IL_0b92:  stelem.i4
    IL_0b93:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0b98:  stelem.ref
    IL_0b99:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0b9e:  ldc.i4.s   16
    IL_0ba0:  ldc.i4.s   -6
    IL_0ba2:  ldc.i4.1
    IL_0ba3:  newarr     [mscorlib]System.Int32
    IL_0ba8:  dup
    IL_0ba9:  ldc.i4.0
    IL_0baa:  ldc.i4     0x83
    IL_0baf:  stelem.i4
    IL_0bb0:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0bb5:  stelem.ref
    IL_0bb6:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0bbb:  ldc.i4.s   17
    IL_0bbd:  ldc.i4.s   -6
    IL_0bbf:  ldc.i4.1
    IL_0bc0:  newarr     [mscorlib]System.Int32
    IL_0bc5:  dup
    IL_0bc6:  ldc.i4.0
    IL_0bc7:  ldc.i4     0x85
    IL_0bcc:  stelem.i4
    IL_0bcd:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0bd2:  stelem.ref
    IL_0bd3:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0bd8:  ldc.i4.s   18
    IL_0bda:  ldc.i4.s   -15
    IL_0bdc:  ldc.i4.2
    IL_0bdd:  newarr     [mscorlib]System.Int32
    IL_0be2:  dup
    IL_0be3:  ldc.i4.0
    IL_0be4:  ldc.i4.s   -8
    IL_0be6:  stelem.i4
    IL_0be7:  dup
    IL_0be8:  ldc.i4.1
    IL_0be9:  ldc.i4.s   -14
    IL_0beb:  stelem.i4
    IL_0bec:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0bf1:  stelem.ref
    IL_0bf2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0bf7:  ldc.i4.s   19
    IL_0bf9:  ldc.i4.s   -8
    IL_0bfb:  ldc.i4.1
    IL_0bfc:  newarr     [mscorlib]System.Int32
    IL_0c01:  dup
    IL_0c02:  ldc.i4.0
    IL_0c03:  ldc.i4     0x86
    IL_0c08:  stelem.i4
    IL_0c09:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0c0e:  stelem.ref
    IL_0c0f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0c14:  ldc.i4.s   20
    IL_0c16:  ldc.i4.s   -14
    IL_0c18:  ldc.i4.4
    IL_0c19:  newarr     [mscorlib]System.Int32
    IL_0c1e:  dup
    IL_0c1f:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::CEE60A83A9EFF633F451A28320B892E126A291F4
    IL_0c24:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0c29:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0c2e:  stelem.ref
    IL_0c2f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0c34:  ldc.i4.s   21
    IL_0c36:  ldc.i4.s   -20
    IL_0c38:  ldc.i4.2
    IL_0c39:  newarr     [mscorlib]System.Int32
    IL_0c3e:  dup
    IL_0c3f:  ldc.i4.0
    IL_0c40:  ldc.i4.s   -20
    IL_0c42:  stelem.i4
    IL_0c43:  dup
    IL_0c44:  ldc.i4.1
    IL_0c45:  ldc.i4.s   -19
    IL_0c47:  stelem.i4
    IL_0c48:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0c4d:  stelem.ref
    IL_0c4e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0c53:  ldc.i4.s   22
    IL_0c55:  ldc.i4.s   -20
    IL_0c57:  ldc.i4.1
    IL_0c58:  newarr     [mscorlib]System.Int32
    IL_0c5d:  dup
    IL_0c5e:  ldc.i4.0
    IL_0c5f:  ldc.i4.s   -40
    IL_0c61:  stelem.i4
    IL_0c62:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0c67:  stelem.ref
    IL_0c68:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0c6d:  ldc.i4.s   23
    IL_0c6f:  ldc.i4.s   -19
    IL_0c71:  ldc.i4.3
    IL_0c72:  newarr     [mscorlib]System.Int32
    IL_0c77:  dup
    IL_0c78:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::D0154107136F45B547C52B5FDA9BDA656D1D4EFC
    IL_0c7d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0c82:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0c87:  stelem.ref
    IL_0c88:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0c8d:  ldc.i4.s   24
    IL_0c8f:  ldc.i4.s   -17
    IL_0c91:  ldc.i4.1
    IL_0c92:  newarr     [mscorlib]System.Int32
    IL_0c97:  dup
    IL_0c98:  ldc.i4.0
    IL_0c99:  ldc.i4.s   -16
    IL_0c9b:  stelem.i4
    IL_0c9c:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0ca1:  stelem.ref
    IL_0ca2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ca7:  ldc.i4.s   25
    IL_0ca9:  ldc.i4.s   -16
    IL_0cab:  ldc.i4.3
    IL_0cac:  newarr     [mscorlib]System.Int32
    IL_0cb1:  dup
    IL_0cb2:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::B2A158CA51AD493917F3155B46057E61D7181784
    IL_0cb7:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0cbc:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0cc1:  stelem.ref
    IL_0cc2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0cc7:  ldc.i4.s   26
    IL_0cc9:  ldc.i4.s   -13
    IL_0ccb:  ldc.i4.2
    IL_0ccc:  newarr     [mscorlib]System.Int32
    IL_0cd1:  dup
    IL_0cd2:  ldc.i4.0
    IL_0cd3:  ldc.i4.s   -13
    IL_0cd5:  stelem.i4
    IL_0cd6:  dup
    IL_0cd7:  ldc.i4.1
    IL_0cd8:  ldc.i4.s   -9
    IL_0cda:  stelem.i4
    IL_0cdb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0ce0:  stelem.ref
    IL_0ce1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ce6:  ldc.i4.s   27
    IL_0ce8:  ldc.i4.s   -13
    IL_0cea:  ldc.i4.1
    IL_0ceb:  newarr     [mscorlib]System.Int32
    IL_0cf0:  dup
    IL_0cf1:  ldc.i4.0
    IL_0cf2:  ldc.i4.s   -40
    IL_0cf4:  stelem.i4
    IL_0cf5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0cfa:  stelem.ref
    IL_0cfb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d00:  ldc.i4.s   28
    IL_0d02:  ldc.i4.s   -9
    IL_0d04:  ldc.i4.1
    IL_0d05:  newarr     [mscorlib]System.Int32
    IL_0d0a:  dup
    IL_0d0b:  ldc.i4.0
    IL_0d0c:  ldc.i4.s   -10
    IL_0d0e:  stelem.i4
    IL_0d0f:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0d14:  stelem.ref
    IL_0d15:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d1a:  ldc.i4.s   29
    IL_0d1c:  ldc.i4.s   -9
    IL_0d1e:  ldc.i4.1
    IL_0d1f:  newarr     [mscorlib]System.Int32
    IL_0d24:  dup
    IL_0d25:  ldc.i4.0
    IL_0d26:  ldc.i4.s   -12
    IL_0d28:  stelem.i4
    IL_0d29:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0d2e:  stelem.ref
    IL_0d2f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d34:  ldc.i4.s   30
    IL_0d36:  ldc.i4.s   -10
    IL_0d38:  ldc.i4.2
    IL_0d39:  newarr     [mscorlib]System.Int32
    IL_0d3e:  dup
    IL_0d3f:  ldc.i4.0
    IL_0d40:  ldc.i4.s   -34
    IL_0d42:  stelem.i4
    IL_0d43:  dup
    IL_0d44:  ldc.i4.1
    IL_0d45:  ldc.i4.s   59
    IL_0d47:  stelem.i4
    IL_0d48:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0d4d:  stelem.ref
    IL_0d4e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d53:  ldc.i4.s   31
    IL_0d55:  ldc.i4.s   -34
    IL_0d57:  ldc.i4.3
    IL_0d58:  newarr     [mscorlib]System.Int32
    IL_0d5d:  dup
    IL_0d5e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'6663FE421E05E19E11F210E3F5BDCA5D4E471A1E'
    IL_0d63:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0d68:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0d6d:  stelem.ref
    IL_0d6e:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d73:  ldc.i4.s   32
    IL_0d75:  ldc.i4.s   -30
    IL_0d77:  ldc.i4.2
    IL_0d78:  newarr     [mscorlib]System.Int32
    IL_0d7d:  dup
    IL_0d7e:  ldc.i4.0
    IL_0d7f:  ldc.i4.s   -29
    IL_0d81:  stelem.i4
    IL_0d82:  dup
    IL_0d83:  ldc.i4.1
    IL_0d84:  ldc.i4.s   -30
    IL_0d86:  stelem.i4
    IL_0d87:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0d8c:  stelem.ref
    IL_0d8d:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0d92:  ldc.i4.s   33
    IL_0d94:  ldc.i4.s   -30
    IL_0d96:  ldc.i4.1
    IL_0d97:  newarr     [mscorlib]System.Int32
    IL_0d9c:  dup
    IL_0d9d:  ldc.i4.0
    IL_0d9e:  ldc.i4.s   -40
    IL_0da0:  stelem.i4
    IL_0da1:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0da6:  stelem.ref
    IL_0da7:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0dac:  ldc.i4.s   34
    IL_0dae:  ldc.i4.s   -29
    IL_0db0:  ldc.i4.1
    IL_0db1:  newarr     [mscorlib]System.Int32
    IL_0db6:  dup
    IL_0db7:  ldc.i4.0
    IL_0db8:  ldc.i4.s   -40
    IL_0dba:  stelem.i4
    IL_0dbb:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0dc0:  stelem.ref
    IL_0dc1:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0dc6:  ldc.i4.s   35
    IL_0dc8:  ldc.i4.s   -21
    IL_0dca:  ldc.i4.1
    IL_0dcb:  newarr     [mscorlib]System.Int32
    IL_0dd0:  dup
    IL_0dd1:  ldc.i4.0
    IL_0dd2:  ldc.i4.s   -22
    IL_0dd4:  stelem.i4
    IL_0dd5:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0dda:  stelem.ref
    IL_0ddb:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0de0:  ldc.i4.s   36
    IL_0de2:  ldc.i4.s   -21
    IL_0de4:  ldc.i4.1
    IL_0de5:  newarr     [mscorlib]System.Int32
    IL_0dea:  dup
    IL_0deb:  ldc.i4.0
    IL_0dec:  ldc.i4.s   -23
    IL_0dee:  stelem.i4
    IL_0def:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0df4:  stelem.ref
    IL_0df5:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0dfa:  ldc.i4.s   37
    IL_0dfc:  ldc.i4.s   -23
    IL_0dfe:  ldc.i4.1
    IL_0dff:  newarr     [mscorlib]System.Int32
    IL_0e04:  dup
    IL_0e05:  ldc.i4.0
    IL_0e06:  ldc.i4.s   -28
    IL_0e08:  stelem.i4
    IL_0e09:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e0e:  stelem.ref
    IL_0e0f:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0e14:  ldc.i4.s   38
    IL_0e16:  ldc.i4.s   -23
    IL_0e18:  ldc.i4.1
    IL_0e19:  newarr     [mscorlib]System.Int32
    IL_0e1e:  dup
    IL_0e1f:  ldc.i4.0
    IL_0e20:  ldc.i4.s   -27
    IL_0e22:  stelem.i4
    IL_0e23:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e28:  stelem.ref
    IL_0e29:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0e2e:  ldc.i4.s   39
    IL_0e30:  ldc.i4.s   -27
    IL_0e32:  ldc.i4.2
    IL_0e33:  newarr     [mscorlib]System.Int32
    IL_0e38:  dup
    IL_0e39:  ldc.i4.0
    IL_0e3a:  ldc.i4.s   -28
    IL_0e3c:  stelem.i4
    IL_0e3d:  dup
    IL_0e3e:  ldc.i4.1
    IL_0e3f:  ldc.i4.s   -42
    IL_0e41:  stelem.i4
    IL_0e42:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e47:  stelem.ref
    IL_0e48:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0e4d:  ldc.i4.s   40
    IL_0e4f:  ldc.i4.s   -42
    IL_0e51:  ldc.i4.4
    IL_0e52:  newarr     [mscorlib]System.Int32
    IL_0e57:  dup
    IL_0e58:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::DE661ADBEA46EDC77291404523EB1B6E1D75E227
    IL_0e5d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0e62:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e67:  stelem.ref
    IL_0e68:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0e6d:  ldc.i4.s   41
    IL_0e6f:  ldc.i4.s   -44
    IL_0e71:  ldc.i4.1
    IL_0e72:  newarr     [mscorlib]System.Int32
    IL_0e77:  dup
    IL_0e78:  ldc.i4.0
    IL_0e79:  ldc.i4.s   -42
    IL_0e7b:  stelem.i4
    IL_0e7c:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e81:  stelem.ref
    IL_0e82:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0e87:  ldc.i4.s   42
    IL_0e89:  ldc.i4.s   -44
    IL_0e8b:  ldc.i4.1
    IL_0e8c:  newarr     [mscorlib]System.Int32
    IL_0e91:  dup
    IL_0e92:  ldc.i4.0
    IL_0e93:  ldc.i4.s   -40
    IL_0e95:  stelem.i4
    IL_0e96:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0e9b:  stelem.ref
    IL_0e9c:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ea1:  ldc.i4.s   43
    IL_0ea3:  ldc.i4.s   -43
    IL_0ea5:  ldc.i4.1
    IL_0ea6:  newarr     [mscorlib]System.Int32
    IL_0eab:  dup
    IL_0eac:  ldc.i4.0
    IL_0ead:  ldc.i4.s   -40
    IL_0eaf:  stelem.i4
    IL_0eb0:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0eb5:  stelem.ref
    IL_0eb6:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ebb:  ldc.i4.s   44
    IL_0ebd:  ldc.i4.s   -28
    IL_0ebf:  ldc.i4.1
    IL_0ec0:  newarr     [mscorlib]System.Int32
    IL_0ec5:  dup
    IL_0ec6:  ldc.i4.0
    IL_0ec7:  ldc.i4.s   -26
    IL_0ec9:  stelem.i4
    IL_0eca:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0ecf:  stelem.ref
    IL_0ed0:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ed5:  ldc.i4.s   45
    IL_0ed7:  ldc.i4.s   -26
    IL_0ed9:  ldc.i4.2
    IL_0eda:  newarr     [mscorlib]System.Int32
    IL_0edf:  dup
    IL_0ee0:  ldc.i4.0
    IL_0ee1:  ldc.i4     0x82
    IL_0ee6:  stelem.i4
    IL_0ee7:  dup
    IL_0ee8:  ldc.i4.1
    IL_0ee9:  ldc.i4.s   -45
    IL_0eeb:  stelem.i4
    IL_0eec:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0ef1:  stelem.ref
    IL_0ef2:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ef7:  ldc.i4.s   46
    IL_0ef9:  ldc.i4.s   -45
    IL_0efb:  ldc.i4.1
    IL_0efc:  newarr     [mscorlib]System.Int32
    IL_0f01:  dup
    IL_0f02:  ldc.i4.0
    IL_0f03:  ldc.i4.s   -40
    IL_0f05:  stelem.i4
    IL_0f06:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f0b:  stelem.ref
    IL_0f0c:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f11:  ldc.i4.s   47
    IL_0f13:  ldc.i4.s   -22
    IL_0f15:  ldc.i4.1
    IL_0f16:  newarr     [mscorlib]System.Int32
    IL_0f1b:  dup
    IL_0f1c:  ldc.i4.0
    IL_0f1d:  ldc.i4.s   -24
    IL_0f1f:  stelem.i4
    IL_0f20:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f25:  stelem.ref
    IL_0f26:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f2b:  ldc.i4.s   48
    IL_0f2d:  ldc.i4.s   -24
    IL_0f2f:  ldc.i4.1
    IL_0f30:  newarr     [mscorlib]System.Int32
    IL_0f35:  dup
    IL_0f36:  ldc.i4.0
    IL_0f37:  ldc.i4.s   -25
    IL_0f39:  stelem.i4
    IL_0f3a:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f3f:  stelem.ref
    IL_0f40:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f45:  ldc.i4.s   49
    IL_0f47:  ldc.i4.s   -25
    IL_0f49:  ldc.i4.1
    IL_0f4a:  newarr     [mscorlib]System.Int32
    IL_0f4f:  dup
    IL_0f50:  ldc.i4.0
    IL_0f51:  ldc.i4     0x87
    IL_0f56:  stelem.i4
    IL_0f57:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f5c:  stelem.ref
    IL_0f5d:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f62:  ldc.i4.s   50
    IL_0f64:  ldc.i4.s   -36
    IL_0f66:  ldc.i4.1
    IL_0f67:  newarr     [mscorlib]System.Int32
    IL_0f6c:  dup
    IL_0f6d:  ldc.i4.0
    IL_0f6e:  ldc.i4.s   -35
    IL_0f70:  stelem.i4
    IL_0f71:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f76:  stelem.ref
    IL_0f77:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f7c:  ldc.i4.s   51
    IL_0f7e:  ldc.i4.s   -35
    IL_0f80:  ldc.i4.1
    IL_0f81:  newarr     [mscorlib]System.Int32
    IL_0f86:  dup
    IL_0f87:  ldc.i4.0
    IL_0f88:  ldc.i4     0x82
    IL_0f8d:  stelem.i4
    IL_0f8e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0f93:  stelem.ref
    IL_0f94:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0f99:  ldc.i4.s   52
    IL_0f9b:  ldc.i4.s   -12
    IL_0f9d:  ldc.i4.1
    IL_0f9e:  newarr     [mscorlib]System.Int32
    IL_0fa3:  dup
    IL_0fa4:  ldc.i4.0
    IL_0fa5:  ldc.i4.s   -11
    IL_0fa7:  stelem.i4
    IL_0fa8:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0fad:  stelem.ref
    IL_0fae:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0fb3:  ldc.i4.s   53
    IL_0fb5:  ldc.i4.s   -11
    IL_0fb7:  ldc.i4.2
    IL_0fb8:  newarr     [mscorlib]System.Int32
    IL_0fbd:  dup
    IL_0fbe:  ldc.i4.0
    IL_0fbf:  ldc.i4.s   -31
    IL_0fc1:  stelem.i4
    IL_0fc2:  dup
    IL_0fc3:  ldc.i4.1
    IL_0fc4:  ldc.i4.s   59
    IL_0fc6:  stelem.i4
    IL_0fc7:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0fcc:  stelem.ref
    IL_0fcd:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0fd2:  ldc.i4.s   54
    IL_0fd4:  ldc.i4.s   -31
    IL_0fd6:  ldc.i4.3
    IL_0fd7:  newarr     [mscorlib]System.Int32
    IL_0fdc:  dup
    IL_0fdd:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'977B202400AE6A7BFF63D07CBFD4DD66514E9272'
    IL_0fe2:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0fe7:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_0fec:  stelem.ref
    IL_0fed:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0ff2:  ldc.i4.s   55
    IL_0ff4:  ldc.i4.s   -33
    IL_0ff6:  ldc.i4.1
    IL_0ff7:  newarr     [mscorlib]System.Int32
    IL_0ffc:  dup
    IL_0ffd:  ldc.i4.0
    IL_0ffe:  ldc.i4     0x82
    IL_1003:  stelem.i4
    IL_1004:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_1009:  stelem.ref
    IL_100a:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_100f:  ldc.i4.s   56
    IL_1011:  ldc.i4.s   -46
    IL_1013:  ldc.i4.1
    IL_1014:  newarr     [mscorlib]System.Int32
    IL_1019:  dup
    IL_101a:  ldc.i4.0
    IL_101b:  ldc.i4.s   61
    IL_101d:  stelem.i4
    IL_101e:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_1023:  stelem.ref
    IL_1024:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_1029:  ldc.i4.s   57
    IL_102b:  ldc.i4.s   -32
    IL_102d:  ldc.i4.1
    IL_102e:  newarr     [mscorlib]System.Int32
    IL_1033:  dup
    IL_1034:  ldc.i4.0
    IL_1035:  ldc.i4     0x81
    IL_103a:  stelem.i4
    IL_103b:  newobj     instance void [QUT.ShiftReduceParser]QUT.Gppg.Rule::.ctor(int32,
                                                                                   int32[])
    IL_1040:  stelem.ref
    IL_1041:  ret
  } // end of method Parser::.cctor

  .method family hidebysig virtual instance void 
          Initialize() cil managed
  {
    // Code size       52 (0x34)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   127
    IL_0004:  ldc.i4     0x80
    IL_0009:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::InitSpecialTokens(int32,
                                                                                                                                                                                                        int32)
    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.State[] JavaCompiler.Parser::states
    IL_0015:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::InitStates(class [QUT.ShiftReduceParser]QUT.Gppg.State[])
    IL_001a:  nop
    IL_001b:  ldarg.0
    IL_001c:  ldsfld     class [QUT.ShiftReduceParser]QUT.Gppg.Rule[] JavaCompiler.Parser::rules
    IL_0021:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::InitRules(class [QUT.ShiftReduceParser]QUT.Gppg.Rule[])
    IL_0026:  nop
    IL_0027:  ldarg.0
    IL_0028:  ldsfld     string[] JavaCompiler.Parser::nonTerms
    IL_002d:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::InitNonTerminals(string[])
    IL_0032:  nop
    IL_0033:  ret
  } // end of method Parser::Initialize

  .method family hidebysig virtual instance void 
          DoAction(int32 action) cil managed
  {
    // Code size       2609 (0xa31)
    .maxstack  6
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  ldloc.0
    IL_0004:  ldc.i4.2
    IL_0005:  sub
    IL_0006:  switch     ( 
                          IL_00f0,
                          IL_0a30,
                          IL_0a30,
                          IL_0a30,
                          IL_0120,
                          IL_014f,
                          IL_01c2,
                          IL_0a30,
                          IL_01d5,
                          IL_0a30,
                          IL_0209,
                          IL_0a30,
                          IL_0277,
                          IL_02d4,
                          IL_02eb,
                          IL_02fe,
                          IL_0311,
                          IL_0362,
                          IL_0375,
                          IL_03cb,
                          IL_0428,
                          IL_043f,
                          IL_0490,
                          IL_04bf,
                          IL_04f3,
                          IL_0550,
                          IL_0567,
                          IL_0596,
                          IL_05c5,
                          IL_05f4,
                          IL_0645,
                          IL_06a2,
                          IL_06b9,
                          IL_06cc,
                          IL_06fb,
                          IL_072a,
                          IL_0759,
                          IL_0788,
                          IL_0a30,
                          IL_0a30,
                          IL_0a30,
                          IL_0a30,
                          IL_07bc,
                          IL_07eb,
                          IL_0a30,
                          IL_081f,
                          IL_084e,
                          IL_087d,
                          IL_0895,
                          IL_08c4,
                          IL_08f8,
                          IL_0927,
                          IL_095b,
                          IL_09ac,
                          IL_09dd,
                          IL_09ff)
    IL_00eb:  br         IL_0a30

    IL_00f0:  nop
    IL_00f1:  ldnull
    IL_00f2:  ldnull
    IL_00f3:  ldarg.0
    IL_00f4:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_00ff:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0104:  ldc.i4.1
    IL_0105:  sub
    IL_0106:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_010b:  ldfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.ValueType::normclassDecl
    IL_0110:  newobj     instance void JavaCompiler.CompilationUnit::.ctor(class JavaCompiler.PackageDeclaration,
                                                                           class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.ImportDeclaration>,
                                                                           class JavaCompiler.NormalClassDeclaration)
    IL_0115:  stsfld     class JavaCompiler.Node JavaCompiler.Parser::root
    IL_011a:  nop
    IL_011b:  br         IL_0a30

    IL_0120:  nop
    IL_0121:  ldarg.0
    IL_0122:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0127:  ldarg.0
    IL_0128:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_012d:  ldarg.0
    IL_012e:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0133:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0138:  ldc.i4.1
    IL_0139:  sub
    IL_013a:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_013f:  ldfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.ValueType::normclassDecl
    IL_0144:  stfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.ValueType::normclassDecl
    IL_0149:  nop
    IL_014a:  br         IL_0a30

    IL_014f:  nop
    IL_0150:  ldarg.0
    IL_0151:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0156:  ldarg.0
    IL_0157:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_015c:  ldarg.0
    IL_015d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0162:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0167:  ldc.i4.7
    IL_0168:  sub
    IL_0169:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_016e:  ldfld      valuetype JavaCompiler.ClassModifier JavaCompiler.ValueType::classModi
    IL_0173:  ldarg.0
    IL_0174:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0179:  ldarg.0
    IL_017a:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_017f:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0184:  ldc.i4.5
    IL_0185:  sub
    IL_0186:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_018b:  ldfld      string JavaCompiler.ValueType::name
    IL_0190:  newobj     instance void JavaCompiler.Identifier::.ctor(string)
    IL_0195:  ldarg.0
    IL_0196:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_019b:  ldarg.0
    IL_019c:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_01a1:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_01a6:  ldc.i4.2
    IL_01a7:  sub
    IL_01a8:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_01ad:  ldfld      class JavaCompiler.ClassBody JavaCompiler.ValueType::classBodi
    IL_01b2:  newobj     instance void JavaCompiler.NormalClassDeclaration::.ctor(valuetype JavaCompiler.ClassModifier,
                                                                                  class JavaCompiler.Identifier,
                                                                                  class JavaCompiler.ClassBody)
    IL_01b7:  stfld      class JavaCompiler.NormalClassDeclaration JavaCompiler.ValueType::normclassDecl
    IL_01bc:  nop
    IL_01bd:  br         IL_0a30

    IL_01c2:  nop
    IL_01c3:  ldarg.0
    IL_01c4:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_01c9:  ldc.i4.0
    IL_01ca:  stfld      valuetype JavaCompiler.ClassModifier JavaCompiler.ValueType::classModi
    IL_01cf:  nop
    IL_01d0:  br         IL_0a30

    IL_01d5:  nop
    IL_01d6:  ldarg.0
    IL_01d7:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_01e2:  ldarg.0
    IL_01e3:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_01e8:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_01ed:  ldc.i4.1
    IL_01ee:  sub
    IL_01ef:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_01f4:  ldfld      class JavaCompiler.MethodDeclaration JavaCompiler.ValueType::methDecl
    IL_01f9:  newobj     instance void JavaCompiler.ClassBody::.ctor(class JavaCompiler.MethodDeclaration)
    IL_01fe:  stfld      class JavaCompiler.ClassBody JavaCompiler.ValueType::classBodi
    IL_0203:  nop
    IL_0204:  br         IL_0a30

    IL_0209:  nop
    IL_020a:  ldarg.0
    IL_020b:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0210:  ldarg.0
    IL_0211:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0216:  ldarg.0
    IL_0217:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_021c:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0221:  ldc.i4.3
    IL_0222:  sub
    IL_0223:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0228:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.ValueType::methodmodilist
    IL_022d:  ldarg.0
    IL_022e:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0233:  ldarg.0
    IL_0234:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0239:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_023e:  ldc.i4.2
    IL_023f:  sub
    IL_0240:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0245:  ldfld      class JavaCompiler.MethodHeader JavaCompiler.ValueType::methodhea
    IL_024a:  ldarg.0
    IL_024b:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0250:  ldarg.0
    IL_0251:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0256:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_025b:  ldc.i4.1
    IL_025c:  sub
    IL_025d:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0262:  ldfld      class JavaCompiler.Block JavaCompiler.ValueType::block
    IL_0267:  newobj     instance void JavaCompiler.MethodDeclaration::.ctor(class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier>,
                                                                             class JavaCompiler.MethodHeader,
                                                                             class JavaCompiler.Block)
    IL_026c:  stfld      class JavaCompiler.MethodDeclaration JavaCompiler.ValueType::methDecl
    IL_0271:  nop
    IL_0272:  br         IL_0a30

    IL_0277:  nop
    IL_0278:  ldarg.0
    IL_0279:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_027e:  ldarg.0
    IL_027f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0284:  ldarg.0
    IL_0285:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_028a:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_028f:  ldc.i4.1
    IL_0290:  sub
    IL_0291:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0296:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.ValueType::methodmodilist
    IL_029b:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.ValueType::methodmodilist
    IL_02a0:  ldarg.0
    IL_02a1:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_02a6:  ldfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.ValueType::methodmodilist
    IL_02ab:  ldarg.0
    IL_02ac:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_02b1:  ldarg.0
    IL_02b2:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_02b7:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_02bc:  ldc.i4.2
    IL_02bd:  sub
    IL_02be:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_02c3:  ldfld      valuetype JavaCompiler.MethodModifier JavaCompiler.ValueType::methModi
    IL_02c8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier>::Add(!0)
    IL_02cd:  nop
    IL_02ce:  nop
    IL_02cf:  br         IL_0a30

    IL_02d4:  nop
    IL_02d5:  ldarg.0
    IL_02d6:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_02db:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier>::.ctor()
    IL_02e0:  stfld      class [mscorlib]System.Collections.Generic.List`1<valuetype JavaCompiler.MethodModifier> JavaCompiler.ValueType::methodmodilist
    IL_02e5:  nop
    IL_02e6:  br         IL_0a30

    IL_02eb:  nop
    IL_02ec:  ldarg.0
    IL_02ed:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_02f2:  ldc.i4.0
    IL_02f3:  stfld      valuetype JavaCompiler.MethodModifier JavaCompiler.ValueType::methModi
    IL_02f8:  nop
    IL_02f9:  br         IL_0a30

    IL_02fe:  nop
    IL_02ff:  ldarg.0
    IL_0300:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0305:  ldc.i4.1
    IL_0306:  stfld      valuetype JavaCompiler.MethodModifier JavaCompiler.ValueType::methModi
    IL_030b:  nop
    IL_030c:  br         IL_0a30

    IL_0311:  nop
    IL_0312:  ldarg.0
    IL_0313:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0318:  ldarg.0
    IL_0319:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_031e:  ldarg.0
    IL_031f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0324:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0329:  ldc.i4.2
    IL_032a:  sub
    IL_032b:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0330:  ldfld      valuetype JavaCompiler.Result JavaCompiler.ValueType::result
    IL_0335:  ldarg.0
    IL_0336:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_033b:  ldarg.0
    IL_033c:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0341:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0346:  ldc.i4.1
    IL_0347:  sub
    IL_0348:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_034d:  ldfld      class JavaCompiler.MethodDeclarator JavaCompiler.ValueType::methodecla
    IL_0352:  newobj     instance void JavaCompiler.MethodHeader::.ctor(valuetype JavaCompiler.Result,
                                                                        class JavaCompiler.MethodDeclarator)
    IL_0357:  stfld      class JavaCompiler.MethodHeader JavaCompiler.ValueType::methodhea
    IL_035c:  nop
    IL_035d:  br         IL_0a30

    IL_0362:  nop
    IL_0363:  ldarg.0
    IL_0364:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0369:  ldc.i4.0
    IL_036a:  stfld      valuetype JavaCompiler.Result JavaCompiler.ValueType::result
    IL_036f:  nop
    IL_0370:  br         IL_0a30

    IL_0375:  nop
    IL_0376:  ldarg.0
    IL_0377:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_037c:  ldarg.0
    IL_037d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0382:  ldarg.0
    IL_0383:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0388:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_038d:  ldc.i4.4
    IL_038e:  sub
    IL_038f:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0394:  ldfld      string JavaCompiler.ValueType::name
    IL_0399:  newobj     instance void JavaCompiler.Identifier::.ctor(string)
    IL_039e:  ldarg.0
    IL_039f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_03a4:  ldarg.0
    IL_03a5:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_03aa:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_03af:  ldc.i4.2
    IL_03b0:  sub
    IL_03b1:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_03b6:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.ValueType::fmparalist
    IL_03bb:  newobj     instance void JavaCompiler.MethodDeclarator::.ctor(class JavaCompiler.Identifier,
                                                                            class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>)
    IL_03c0:  stfld      class JavaCompiler.MethodDeclarator JavaCompiler.ValueType::methodecla
    IL_03c5:  nop
    IL_03c6:  br         IL_0a30

    IL_03cb:  nop
    IL_03cc:  ldarg.0
    IL_03cd:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_03d2:  ldarg.0
    IL_03d3:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_03d8:  ldarg.0
    IL_03d9:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_03de:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_03e3:  ldc.i4.2
    IL_03e4:  sub
    IL_03e5:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_03ea:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.ValueType::fmparalist
    IL_03ef:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.ValueType::fmparalist
    IL_03f4:  ldarg.0
    IL_03f5:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_03fa:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.ValueType::fmparalist
    IL_03ff:  ldarg.0
    IL_0400:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0405:  ldarg.0
    IL_0406:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_040b:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0410:  ldc.i4.1
    IL_0411:  sub
    IL_0412:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0417:  ldfld      class JavaCompiler.FormalParameter JavaCompiler.ValueType::fmpara
    IL_041c:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>::Add(!0)
    IL_0421:  nop
    IL_0422:  nop
    IL_0423:  br         IL_0a30

    IL_0428:  nop
    IL_0429:  ldarg.0
    IL_042a:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_042f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter>::.ctor()
    IL_0434:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.FormalParameter> JavaCompiler.ValueType::fmparalist
    IL_0439:  nop
    IL_043a:  br         IL_0a30

    IL_043f:  nop
    IL_0440:  ldarg.0
    IL_0441:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0446:  ldarg.0
    IL_0447:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_044c:  ldarg.0
    IL_044d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0452:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0457:  ldc.i4.2
    IL_0458:  sub
    IL_0459:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_045e:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0463:  ldarg.0
    IL_0464:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0469:  ldarg.0
    IL_046a:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_046f:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0474:  ldc.i4.1
    IL_0475:  sub
    IL_0476:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_047b:  ldfld      class JavaCompiler.Identifier JavaCompiler.ValueType::ident
    IL_0480:  newobj     instance void JavaCompiler.FormalParameter::.ctor(class JavaCompiler.UnannType,
                                                                           class JavaCompiler.Identifier)
    IL_0485:  stfld      class JavaCompiler.FormalParameter JavaCompiler.ValueType::fmpara
    IL_048a:  nop
    IL_048b:  br         IL_0a30

    IL_0490:  nop
    IL_0491:  ldarg.0
    IL_0492:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0497:  ldarg.0
    IL_0498:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_049d:  ldarg.0
    IL_049e:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_04a3:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_04a8:  ldc.i4.1
    IL_04a9:  sub
    IL_04aa:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_04af:  ldfld      class JavaCompiler.Block JavaCompiler.ValueType::block
    IL_04b4:  stfld      class JavaCompiler.Block JavaCompiler.ValueType::block
    IL_04b9:  nop
    IL_04ba:  br         IL_0a30

    IL_04bf:  nop
    IL_04c0:  ldarg.0
    IL_04c1:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_04c6:  ldarg.0
    IL_04c7:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_04cc:  ldarg.0
    IL_04cd:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_04d2:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_04d7:  ldc.i4.2
    IL_04d8:  sub
    IL_04d9:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_04de:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.ValueType::stmts
    IL_04e3:  newobj     instance void JavaCompiler.Block::.ctor(class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>)
    IL_04e8:  stfld      class JavaCompiler.Block JavaCompiler.ValueType::block
    IL_04ed:  nop
    IL_04ee:  br         IL_0a30

    IL_04f3:  nop
    IL_04f4:  ldarg.0
    IL_04f5:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_04fa:  ldarg.0
    IL_04fb:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0500:  ldarg.0
    IL_0501:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0506:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_050b:  ldc.i4.2
    IL_050c:  sub
    IL_050d:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0512:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.ValueType::stmts
    IL_0517:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.ValueType::stmts
    IL_051c:  ldarg.0
    IL_051d:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0522:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.ValueType::stmts
    IL_0527:  ldarg.0
    IL_0528:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_052d:  ldarg.0
    IL_052e:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0533:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0538:  ldc.i4.1
    IL_0539:  sub
    IL_053a:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_053f:  ldfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_0544:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>::Add(!0)
    IL_0549:  nop
    IL_054a:  nop
    IL_054b:  br         IL_0a30

    IL_0550:  nop
    IL_0551:  ldarg.0
    IL_0552:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0557:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement>::.ctor()
    IL_055c:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.Statement> JavaCompiler.ValueType::stmts
    IL_0561:  nop
    IL_0562:  br         IL_0a30

    IL_0567:  nop
    IL_0568:  ldarg.0
    IL_0569:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_056e:  ldarg.0
    IL_056f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0574:  ldarg.0
    IL_0575:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_057a:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_057f:  ldc.i4.1
    IL_0580:  sub
    IL_0581:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0586:  ldfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_058b:  stfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_0590:  nop
    IL_0591:  br         IL_0a30

    IL_0596:  nop
    IL_0597:  ldarg.0
    IL_0598:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_059d:  ldarg.0
    IL_059e:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_05a3:  ldarg.0
    IL_05a4:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_05a9:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_05ae:  ldc.i4.1
    IL_05af:  sub
    IL_05b0:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_05b5:  ldfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_05ba:  stfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_05bf:  nop
    IL_05c0:  br         IL_0a30

    IL_05c5:  nop
    IL_05c6:  ldarg.0
    IL_05c7:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_05cc:  ldarg.0
    IL_05cd:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_05d2:  ldarg.0
    IL_05d3:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_05d8:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_05dd:  ldc.i4.2
    IL_05de:  sub
    IL_05df:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_05e4:  ldfld      class JavaCompiler.LocalVariableDeclaration JavaCompiler.ValueType::localvardcl
    IL_05e9:  stfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_05ee:  nop
    IL_05ef:  br         IL_0a30

    IL_05f4:  nop
    IL_05f5:  ldarg.0
    IL_05f6:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_05fb:  ldarg.0
    IL_05fc:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0601:  ldarg.0
    IL_0602:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0607:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_060c:  ldc.i4.2
    IL_060d:  sub
    IL_060e:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0613:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0618:  ldarg.0
    IL_0619:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_061e:  ldarg.0
    IL_061f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0624:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0629:  ldc.i4.1
    IL_062a:  sub
    IL_062b:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0630:  ldfld      class JavaCompiler.Identifier JavaCompiler.ValueType::ident
    IL_0635:  newobj     instance void JavaCompiler.LocalVariableDeclaration::.ctor(class JavaCompiler.UnannType,
                                                                                    class JavaCompiler.Identifier)
    IL_063a:  stfld      class JavaCompiler.LocalVariableDeclaration JavaCompiler.ValueType::localvardcl
    IL_063f:  nop
    IL_0640:  br         IL_0a30

    IL_0645:  nop
    IL_0646:  ldarg.0
    IL_0647:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_064c:  ldarg.0
    IL_064d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0652:  ldarg.0
    IL_0653:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0658:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_065d:  ldc.i4.1
    IL_065e:  sub
    IL_065f:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0664:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> JavaCompiler.ValueType::varmodis
    IL_0669:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> JavaCompiler.ValueType::varmodis
    IL_066e:  ldarg.0
    IL_066f:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0674:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> JavaCompiler.ValueType::varmodis
    IL_0679:  ldarg.0
    IL_067a:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_067f:  ldarg.0
    IL_0680:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0685:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_068a:  ldc.i4.2
    IL_068b:  sub
    IL_068c:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0691:  ldfld      class JavaCompiler.VariableModifier JavaCompiler.ValueType::varmodi
    IL_0696:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier>::Add(!0)
    IL_069b:  nop
    IL_069c:  nop
    IL_069d:  br         IL_0a30

    IL_06a2:  nop
    IL_06a3:  ldarg.0
    IL_06a4:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_06a9:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier>::.ctor()
    IL_06ae:  stfld      class [mscorlib]System.Collections.Generic.List`1<class JavaCompiler.VariableModifier> JavaCompiler.ValueType::varmodis
    IL_06b3:  nop
    IL_06b4:  br         IL_0a30

    IL_06b9:  nop
    IL_06ba:  ldarg.0
    IL_06bb:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_06c0:  ldnull
    IL_06c1:  stfld      class JavaCompiler.VariableModifier JavaCompiler.ValueType::varmodi
    IL_06c6:  nop
    IL_06c7:  br         IL_0a30

    IL_06cc:  nop
    IL_06cd:  ldarg.0
    IL_06ce:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_06d3:  ldarg.0
    IL_06d4:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_06d9:  ldarg.0
    IL_06da:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_06df:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_06e4:  ldc.i4.1
    IL_06e5:  sub
    IL_06e6:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_06eb:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_06f0:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_06f5:  nop
    IL_06f6:  br         IL_0a30

    IL_06fb:  nop
    IL_06fc:  ldarg.0
    IL_06fd:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0702:  ldarg.0
    IL_0703:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0708:  ldarg.0
    IL_0709:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_070e:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0713:  ldc.i4.1
    IL_0714:  sub
    IL_0715:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_071a:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_071f:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0724:  nop
    IL_0725:  br         IL_0a30

    IL_072a:  nop
    IL_072b:  ldarg.0
    IL_072c:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0731:  ldarg.0
    IL_0732:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0737:  ldarg.0
    IL_0738:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_073d:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0742:  ldc.i4.1
    IL_0743:  sub
    IL_0744:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0749:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_074e:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0753:  nop
    IL_0754:  br         IL_0a30

    IL_0759:  nop
    IL_075a:  ldarg.0
    IL_075b:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0760:  ldarg.0
    IL_0761:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0766:  ldarg.0
    IL_0767:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_076c:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0771:  ldc.i4.1
    IL_0772:  sub
    IL_0773:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0778:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_077d:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0782:  nop
    IL_0783:  br         IL_0a30

    IL_0788:  nop
    IL_0789:  ldarg.0
    IL_078a:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_078f:  ldarg.0
    IL_0790:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0795:  ldarg.0
    IL_0796:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_079b:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_07a0:  ldc.i4.2
    IL_07a1:  sub
    IL_07a2:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_07a7:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_07ac:  newobj     instance void JavaCompiler.ArrayType::.ctor(class JavaCompiler.UnannType)
    IL_07b1:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_07b6:  nop
    IL_07b7:  br         IL_0a30

    IL_07bc:  nop
    IL_07bd:  ldarg.0
    IL_07be:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_07c3:  ldarg.0
    IL_07c4:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_07c9:  ldarg.0
    IL_07ca:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_07cf:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_07d4:  ldc.i4.1
    IL_07d5:  sub
    IL_07d6:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_07db:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_07e0:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_07e5:  nop
    IL_07e6:  br         IL_0a30

    IL_07eb:  nop
    IL_07ec:  ldarg.0
    IL_07ed:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_07f2:  ldarg.0
    IL_07f3:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_07f8:  ldarg.0
    IL_07f9:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_07fe:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0803:  ldc.i4.2
    IL_0804:  sub
    IL_0805:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_080a:  ldfld      string JavaCompiler.ValueType::name
    IL_080f:  newobj     instance void JavaCompiler.NameType::.ctor(string)
    IL_0814:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0819:  nop
    IL_081a:  br         IL_0a30

    IL_081f:  nop
    IL_0820:  ldarg.0
    IL_0821:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0826:  ldarg.0
    IL_0827:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_082c:  ldarg.0
    IL_082d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0832:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0837:  ldc.i4.1
    IL_0838:  sub
    IL_0839:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_083e:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0843:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0848:  nop
    IL_0849:  br         IL_0a30

    IL_084e:  nop
    IL_084f:  ldarg.0
    IL_0850:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0855:  ldarg.0
    IL_0856:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_085b:  ldarg.0
    IL_085c:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0861:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0866:  ldc.i4.1
    IL_0867:  sub
    IL_0868:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_086d:  ldfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0872:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_0877:  nop
    IL_0878:  br         IL_0a30

    IL_087d:  nop
    IL_087e:  ldarg.0
    IL_087f:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0884:  ldc.i4.0
    IL_0885:  newobj     instance void JavaCompiler.PrimitiveType::.ctor(valuetype JavaCompiler.IntegralType)
    IL_088a:  stfld      class JavaCompiler.UnannType JavaCompiler.ValueType::untype
    IL_088f:  nop
    IL_0890:  br         IL_0a30

    IL_0895:  nop
    IL_0896:  ldarg.0
    IL_0897:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_089c:  ldarg.0
    IL_089d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_08a2:  ldarg.0
    IL_08a3:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_08a8:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_08ad:  ldc.i4.1
    IL_08ae:  sub
    IL_08af:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_08b4:  ldfld      class JavaCompiler.Identifier JavaCompiler.ValueType::ident
    IL_08b9:  stfld      class JavaCompiler.Identifier JavaCompiler.ValueType::ident
    IL_08be:  nop
    IL_08bf:  br         IL_0a30

    IL_08c4:  nop
    IL_08c5:  ldarg.0
    IL_08c6:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_08cb:  ldarg.0
    IL_08cc:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_08d1:  ldarg.0
    IL_08d2:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_08d7:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_08dc:  ldc.i4.1
    IL_08dd:  sub
    IL_08de:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_08e3:  ldfld      string JavaCompiler.ValueType::name
    IL_08e8:  newobj     instance void JavaCompiler.Identifier::.ctor(string)
    IL_08ed:  stfld      class JavaCompiler.Identifier JavaCompiler.ValueType::ident
    IL_08f2:  nop
    IL_08f3:  br         IL_0a30

    IL_08f8:  nop
    IL_08f9:  ldarg.0
    IL_08fa:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_08ff:  ldarg.0
    IL_0900:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0905:  ldarg.0
    IL_0906:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_090b:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0910:  ldc.i4.1
    IL_0911:  sub
    IL_0912:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0917:  ldfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_091c:  stfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_0921:  nop
    IL_0922:  br         IL_0a30

    IL_0927:  nop
    IL_0928:  ldarg.0
    IL_0929:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_092e:  ldarg.0
    IL_092f:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0934:  ldarg.0
    IL_0935:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_093a:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_093f:  ldc.i4.2
    IL_0940:  sub
    IL_0941:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0946:  ldfld      class JavaCompiler.Assignment JavaCompiler.ValueType::assign
    IL_094b:  newobj     instance void JavaCompiler.ExpressionStatement::.ctor(class JavaCompiler.Assignment)
    IL_0950:  stfld      class JavaCompiler.Statement JavaCompiler.ValueType::stmt
    IL_0955:  nop
    IL_0956:  br         IL_0a30

    IL_095b:  nop
    IL_095c:  ldarg.0
    IL_095d:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0962:  ldarg.0
    IL_0963:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0968:  ldarg.0
    IL_0969:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_096e:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0973:  ldc.i4.3
    IL_0974:  sub
    IL_0975:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_097a:  ldfld      class JavaCompiler.Expression JavaCompiler.ValueType::expr
    IL_097f:  ldarg.0
    IL_0980:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0985:  ldarg.0
    IL_0986:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_098b:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0990:  ldc.i4.1
    IL_0991:  sub
    IL_0992:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0997:  ldfld      class JavaCompiler.Expression JavaCompiler.ValueType::expr
    IL_099c:  newobj     instance void JavaCompiler.Assignment::.ctor(class JavaCompiler.Expression,
                                                                      class JavaCompiler.Expression)
    IL_09a1:  stfld      class JavaCompiler.Assignment JavaCompiler.ValueType::assign
    IL_09a6:  nop
    IL_09a7:  br         IL_0a30

    IL_09ac:  nop
    IL_09ad:  ldarg.0
    IL_09ae:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_09b3:  ldarg.0
    IL_09b4:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_09b9:  ldarg.0
    IL_09ba:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_09bf:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_09c4:  ldc.i4.1
    IL_09c5:  sub
    IL_09c6:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_09cb:  ldfld      string JavaCompiler.ValueType::name
    IL_09d0:  newobj     instance void JavaCompiler.Identifier::.ctor(string)
    IL_09d5:  stfld      class JavaCompiler.Expression JavaCompiler.ValueType::expr
    IL_09da:  nop
    IL_09db:  br.s       IL_0a30

    IL_09dd:  nop
    IL_09de:  ldarg.0
    IL_09df:  ldarg.0
    IL_09e0:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_09e5:  ldarg.0
    IL_09e6:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_09eb:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_09f0:  ldc.i4.1
    IL_09f1:  sub
    IL_09f2:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_09f7:  stfld      !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_09fc:  nop
    IL_09fd:  br.s       IL_0a30

    IL_09ff:  nop
    IL_0a00:  ldarg.0
    IL_0a01:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CurrentSemanticValue
    IL_0a06:  ldarg.0
    IL_0a07:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0a0c:  ldarg.0
    IL_0a0d:  call       instance class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<!0> class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::get_ValueStack()
    IL_0a12:  callvirt   instance int32 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Depth()
    IL_0a17:  ldc.i4.1
    IL_0a18:  sub
    IL_0a19:  callvirt   instance !0 class [QUT.ShiftReduceParser]QUT.Gppg.PushdownPrefixState`1<valuetype JavaCompiler.ValueType>::get_Item(int32)
    IL_0a1e:  ldfld      int32 JavaCompiler.ValueType::num
    IL_0a23:  newobj     instance void JavaCompiler.IntegerLiteral::.ctor(int32)
    IL_0a28:  stfld      class JavaCompiler.Expression JavaCompiler.ValueType::expr
    IL_0a2d:  nop
    IL_0a2e:  br.s       IL_0a30

    IL_0a30:  ret
  } // end of method Parser::DoAction

  .method family hidebysig virtual instance string 
          TerminalToString(int32 terminal) cil managed
  {
    // Code size       106 (0x6a)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] string V_1,
             [2] bool V_2,
             [3] valuetype JavaCompiler.Tokens V_3)
    IL_0000:  nop
    IL_0001:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string> JavaCompiler.Parser::aliases
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string> JavaCompiler.Parser::aliases
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string>::ContainsKey(!0)
    IL_0013:  br.s       IL_0016

    IL_0015:  ldc.i4.0
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  brfalse.s  IL_0028

    IL_001a:  ldsfld     class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string> JavaCompiler.Parser::aliases
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<int32,string>::get_Item(!0)
    IL_0025:  stloc.1
    IL_0026:  br.s       IL_0068

    IL_0028:  ldarg.1
    IL_0029:  stloc.3
    IL_002a:  ldloca.s   V_3
    IL_002c:  constrained. JavaCompiler.Tokens
    IL_0032:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0037:  ldarga.s   terminal
    IL_0039:  call       class [mscorlib]System.Globalization.CultureInfo [mscorlib]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_003e:  call       instance string [mscorlib]System.Int32::ToString(class [mscorlib]System.IFormatProvider)
    IL_0043:  call       bool [mscorlib]System.String::op_Inequality(string,
                                                                     string)
    IL_0048:  stloc.2
    IL_0049:  ldloc.2
    IL_004a:  brfalse.s  IL_005e

    IL_004c:  ldarg.1
    IL_004d:  stloc.3
    IL_004e:  ldloca.s   V_3
    IL_0050:  constrained. JavaCompiler.Tokens
    IL_0056:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_005b:  stloc.1
    IL_005c:  br.s       IL_0068

    IL_005e:  ldarg.1
    IL_005f:  conv.u2
    IL_0060:  call       string class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::CharToString(char)
    IL_0065:  stloc.1
    IL_0066:  br.s       IL_0068

    IL_0068:  ldloc.1
    IL_0069:  ret
  } // end of method Parser::TerminalToString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class JavaCompiler.Scanner scanner) cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::.ctor(class [QUT.ShiftReduceParser]QUT.Gppg.AbstractScanner`2<!0,!1>)
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  ret
  } // end of method Parser::.ctor

} // end of class JavaCompiler.Parser

.class private auto ansi beforefieldinit JavaCompiler.Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       102 (0x66)
    .maxstack  4
    .locals init ([0] class [mscorlib]System.IO.FileStream 'stream',
             [1] class JavaCompiler.Scanner scanner,
             [2] class JavaCompiler.Parser parser,
             [3] bool status,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  ldc.i4.3
    IL_0005:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                             valuetype [mscorlib]System.IO.FileMode)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  newobj     instance void JavaCompiler.Scanner::.ctor(class [mscorlib]System.IO.Stream)
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  newobj     instance void JavaCompiler.Parser::.ctor(class JavaCompiler.Scanner)
    IL_0018:  stloc.2
    IL_0019:  ldloc.2
    IL_001a:  callvirt   instance bool class [QUT.ShiftReduceParser]QUT.Gppg.ShiftReduceParser`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::Parse()
    IL_001f:  stloc.3
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance void [mscorlib]System.IO.Stream::Close()
    IL_0026:  nop
    IL_0027:  ldloc.3
    IL_0028:  stloc.s    V_4
    IL_002a:  ldloc.s    V_4
    IL_002c:  brfalse.s  IL_0065

    IL_002e:  nop
    IL_002f:  ldsfld     class JavaCompiler.Node JavaCompiler.Parser::root
    IL_0034:  call       void JavaCompiler.Program::SemanticAnalysis(class JavaCompiler.Node)
    IL_0039:  nop
    IL_003a:  ldsfld     class JavaCompiler.Node JavaCompiler.Parser::root
    IL_003f:  ldc.i4.0
    IL_0040:  callvirt   instance void JavaCompiler.Node::DumpValue(int32)
    IL_0045:  nop
    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  ldc.i4.0
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4.0
    IL_004c:  ldelem.ref
    IL_004d:  ldc.i4.s   46
    IL_004f:  callvirt   instance int32 [mscorlib]System.String::LastIndexOf(char)
    IL_0054:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_0059:  ldsfld     class JavaCompiler.Node JavaCompiler.Parser::root
    IL_005e:  call       void JavaCompiler.Program::CodeGeneration(string,
                                                                   class JavaCompiler.Node)
    IL_0063:  nop
    IL_0064:  nop
    IL_0065:  ret
  } // end of method Program::Main

  .method public hidebysig static void  SemanticAnalysis(class JavaCompiler.Node root) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  callvirt   instance bool JavaCompiler.Node::ResolveNames(class JavaCompiler.LexicalScope)
    IL_0008:  pop
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  callvirt   instance void JavaCompiler.Node::CheckType(int32)
    IL_0010:  nop
    IL_0011:  ret
  } // end of method Program::SemanticAnalysis

  .method public hidebysig static void  CodeGeneration(string file,
                                                       class JavaCompiler.Node root) cil managed
  {
    // Code size       97 (0x61)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.IO.StreamWriter 'stream')
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldstr      ".il"
    IL_0007:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_000c:  newobj     instance void [mscorlib]System.IO.StreamWriter::.ctor(string)
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldstr      ".assembly extern mscorlib"
    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object)
    IL_001e:  nop
    IL_001f:  ldloc.0
    IL_0020:  ldstr      "{}"
    IL_0025:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_002a:  nop
    IL_002b:  ldloc.0
    IL_002c:  ldstr      ".assembly {0}"
    IL_0031:  ldarg.0
    IL_0032:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object)
    IL_0037:  nop
    IL_0038:  ldloc.0
    IL_0039:  ldstr      "{}"
    IL_003e:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    IL_0043:  nop
    IL_0044:  ldloc.0
    IL_0045:  ldstr      ".module {0}"
    IL_004a:  ldarg.0
    IL_004b:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object)
    IL_0050:  nop
    IL_0051:  ldarg.1
    IL_0052:  ldloc.0
    IL_0053:  callvirt   instance void JavaCompiler.Node::GenerateCode(class [mscorlib]System.IO.StreamWriter)
    IL_0058:  nop
    IL_0059:  ldloc.0
    IL_005a:  callvirt   instance void [mscorlib]System.IO.TextWriter::Close()
    IL_005f:  nop
    IL_0060:  ret
  } // end of method Program::CodeGeneration

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class JavaCompiler.Program

.class public auto ansi sealed beforefieldinit JavaCompiler.Scanner
       extends JavaCompiler.ScanBase
{
  .class auto ansi sealed nested private Result
         extends [mscorlib]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype JavaCompiler.Scanner/Result accept = int32(0x00000000)
    .field public static literal valuetype JavaCompiler.Scanner/Result noMatch = int32(0x00000001)
    .field public static literal valuetype JavaCompiler.Scanner/Result contextFound = int32(0x00000002)
  } // end of class Result

  .class sequential ansi sealed nested private beforefieldinit Table
         extends [mscorlib]System.ValueType
  {
    .field public int32 min
    .field public int32 rng
    .field public int32 dflt
    .field public int8[] nxt
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 m,
                                 int32 x,
                                 int32 d,
                                 int8[] n) cil managed
    {
      // Code size       31 (0x1f)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  stfld      int32 JavaCompiler.Scanner/Table::min
      IL_0008:  ldarg.0
      IL_0009:  ldarg.2
      IL_000a:  stfld      int32 JavaCompiler.Scanner/Table::rng
      IL_000f:  ldarg.0
      IL_0010:  ldarg.3
      IL_0011:  stfld      int32 JavaCompiler.Scanner/Table::dflt
      IL_0016:  ldarg.0
      IL_0017:  ldarg.s    n
      IL_0019:  stfld      int8[] JavaCompiler.Scanner/Table::nxt
      IL_001e:  ret
    } // end of method Table::.ctor

  } // end of class Table

  .class sequential ansi sealed nested private beforefieldinit BufferContext
         extends [mscorlib]System.ValueType
  {
    .field assembly class JavaCompiler.ScanBuff buffSv
    .field assembly int32 chrSv
    .field assembly int32 cColSv
    .field assembly int32 lNumSv
  } // end of class BufferContext

  .field private class JavaCompiler.ScanBuff buffer
  .field private int32 currentScOrd
  .field private static int32 parserMax
  .field private static literal int32 maxAccept = int32(0x00000036)
  .field private static literal int32 initial = int32(0x00000037)
  .field private static literal int32 eofNum = int32(0x00000000)
  .field private static literal int32 goStart = int32(0xFFFFFFFF)
  .field private static literal int32 INITIAL = int32(0x00000000)
  .field private int32 lines
  .field private int32 state
  .field private int32 currentStart
  .field private int32 code
  .field private int32 cCol
  .field private int32 lNum
  .field private int32 tokPos
  .field private int32 tokCol
  .field private int32 tokLin
  .field private int32 tokEPos
  .field private int32 tokECol
  .field private int32 tokELin
  .field private string tokTxt
  .field private static int32[] startState
  .field private static int8[] mapC0
  .field private static valuetype JavaCompiler.Scanner/Table[] NxS
  .field private int32 readPos
  .method public hidebysig specialname instance class JavaCompiler.ScanBuff 
          get_Buffer() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.ScanBuff V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Scanner::get_Buffer

  .method private hidebysig static int32 
          GetMaxParseToken() cil managed
  {
    // Code size       55 (0x37)
    .maxstack  2
    .locals init ([0] class [mscorlib]System.Reflection.FieldInfo f,
             [1] int32 V_1)
    IL_0000:  nop
    IL_0001:  ldtoken    JavaCompiler.Tokens
    IL_0006:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_000b:  ldstr      "maxParseToken"
    IL_0010:  call       instance class [mscorlib]System.Reflection.FieldInfo [mscorlib]System.Type::GetField(string)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldnull
    IL_0018:  call       bool [mscorlib]System.Reflection.FieldInfo::op_Equality(class [mscorlib]System.Reflection.FieldInfo,
                                                                                 class [mscorlib]System.Reflection.FieldInfo)
    IL_001d:  brtrue.s   IL_002d

    IL_001f:  ldloc.0
    IL_0020:  ldnull
    IL_0021:  callvirt   instance object [mscorlib]System.Reflection.FieldInfo::GetValue(object)
    IL_0026:  unbox.any  [mscorlib]System.Int32
    IL_002b:  br.s       IL_0032

    IL_002d:  ldc.i4     0x7fffffff
    IL_0032:  stloc.1
    IL_0033:  br.s       IL_0035

    IL_0035:  ldloc.1
    IL_0036:  ret
  } // end of method Scanner::GetMaxParseToken

  .method private hidebysig static int8  MapC(int32 code) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] int8 V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   127
    IL_0004:  clt
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0014

    IL_000a:  ldsfld     int8[] JavaCompiler.Scanner::mapC0
    IL_000f:  ldarg.0
    IL_0010:  ldelem.i1
    IL_0011:  stloc.1
    IL_0012:  br.s       IL_0018

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.1
    IL_0019:  ret
  } // end of method Scanner::MapC

  .method private hidebysig instance int32 
          NextState() cil managed
  {
    // Code size       158 (0x9e)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 rslt,
             [3] int32 idx,
             [4] bool V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::code
    IL_0007:  ldc.i4.m1
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0015

    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br         IL_009c

    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  ldfld      int32 JavaCompiler.Scanner::code
    IL_001c:  call       int8 JavaCompiler.Scanner::MapC(int32)
    IL_0021:  ldsfld     valuetype JavaCompiler.Scanner/Table[] JavaCompiler.Scanner::NxS
    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 JavaCompiler.Scanner::state
    IL_002c:  ldelema    JavaCompiler.Scanner/Table
    IL_0031:  ldfld      int32 JavaCompiler.Scanner/Table::min
    IL_0036:  sub
    IL_0037:  stloc.3
    IL_0038:  ldloc.3
    IL_0039:  ldc.i4.0
    IL_003a:  clt
    IL_003c:  stloc.s    V_4
    IL_003e:  ldloc.s    V_4
    IL_0040:  brfalse.s  IL_0047

    IL_0042:  ldloc.3
    IL_0043:  ldc.i4.s   43
    IL_0045:  add
    IL_0046:  stloc.3
    IL_0047:  ldloc.3
    IL_0048:  ldsfld     valuetype JavaCompiler.Scanner/Table[] JavaCompiler.Scanner::NxS
    IL_004d:  ldarg.0
    IL_004e:  ldfld      int32 JavaCompiler.Scanner::state
    IL_0053:  ldelema    JavaCompiler.Scanner/Table
    IL_0058:  ldfld      int32 JavaCompiler.Scanner/Table::rng
    IL_005d:  clt.un
    IL_005f:  ldc.i4.0
    IL_0060:  ceq
    IL_0062:  stloc.s    V_5
    IL_0064:  ldloc.s    V_5
    IL_0066:  brfalse.s  IL_0080

    IL_0068:  ldsfld     valuetype JavaCompiler.Scanner/Table[] JavaCompiler.Scanner::NxS
    IL_006d:  ldarg.0
    IL_006e:  ldfld      int32 JavaCompiler.Scanner::state
    IL_0073:  ldelema    JavaCompiler.Scanner/Table
    IL_0078:  ldfld      int32 JavaCompiler.Scanner/Table::dflt
    IL_007d:  stloc.2
    IL_007e:  br.s       IL_0098

    IL_0080:  ldsfld     valuetype JavaCompiler.Scanner/Table[] JavaCompiler.Scanner::NxS
    IL_0085:  ldarg.0
    IL_0086:  ldfld      int32 JavaCompiler.Scanner::state
    IL_008b:  ldelema    JavaCompiler.Scanner/Table
    IL_0090:  ldfld      int8[] JavaCompiler.Scanner/Table::nxt
    IL_0095:  ldloc.3
    IL_0096:  ldelem.i1
    IL_0097:  stloc.2
    IL_0098:  ldloc.2
    IL_0099:  stloc.1
    IL_009a:  br.s       IL_009c

    IL_009c:  ldloc.1
    IL_009d:  ret
  } // end of method Scanner::NextState

  .method private hidebysig instance valuetype JavaCompiler.Scanner/BufferContext 
          MkBuffCtx() cil managed
  {
    // Code size       59 (0x3b)
    .maxstack  2
    .locals init ([0] valuetype JavaCompiler.Scanner/BufferContext rslt,
             [1] valuetype JavaCompiler.Scanner/BufferContext V_1)
    IL_0000:  nop
    IL_0001:  ldloca.s   rslt
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0009:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner/BufferContext::buffSv
    IL_000e:  ldloca.s   rslt
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 JavaCompiler.Scanner::code
    IL_0016:  stfld      int32 JavaCompiler.Scanner/BufferContext::chrSv
    IL_001b:  ldloca.s   rslt
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 JavaCompiler.Scanner::cCol
    IL_0023:  stfld      int32 JavaCompiler.Scanner/BufferContext::cColSv
    IL_0028:  ldloca.s   rslt
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 JavaCompiler.Scanner::lNum
    IL_0030:  stfld      int32 JavaCompiler.Scanner/BufferContext::lNumSv
    IL_0035:  ldloc.0
    IL_0036:  stloc.1
    IL_0037:  br.s       IL_0039

    IL_0039:  ldloc.1
    IL_003a:  ret
  } // end of method Scanner::MkBuffCtx

  .method private hidebysig instance void 
          RestoreBuffCtx(valuetype JavaCompiler.Scanner/BufferContext 'value') cil managed
  {
    // Code size       50 (0x32)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner/BufferContext::buffSv
    IL_0008:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldfld      int32 JavaCompiler.Scanner/BufferContext::chrSv
    IL_0014:  stfld      int32 JavaCompiler.Scanner::code
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldfld      int32 JavaCompiler.Scanner/BufferContext::cColSv
    IL_0020:  stfld      int32 JavaCompiler.Scanner::cCol
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  ldfld      int32 JavaCompiler.Scanner/BufferContext::lNumSv
    IL_002c:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0031:  ret
  } // end of method Scanner::RestoreBuffCtx

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.IO.Stream file) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 JavaCompiler.Scanner::lines
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     int32[] JavaCompiler.Scanner::startState
    IL_000d:  ldc.i4.0
    IL_000e:  ldelem.i4
    IL_000f:  stfld      int32 JavaCompiler.Scanner::currentStart
    IL_0014:  ldarg.0
    IL_0015:  call       instance void JavaCompiler.ScanBase::.ctor()
    IL_001a:  nop
    IL_001b:  nop
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  ldc.i4.0
    IL_001f:  call       instance void JavaCompiler.Scanner::SetSource(class [mscorlib]System.IO.Stream,
                                                                       int32)
    IL_0024:  nop
    IL_0025:  ret
  } // end of method Scanner::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.IO.Stream file,
                               string codepage) cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 JavaCompiler.Scanner::lines
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     int32[] JavaCompiler.Scanner::startState
    IL_000d:  ldc.i4.0
    IL_000e:  ldelem.i4
    IL_000f:  stfld      int32 JavaCompiler.Scanner::currentStart
    IL_0014:  ldarg.0
    IL_0015:  call       instance void JavaCompiler.ScanBase::.ctor()
    IL_001a:  nop
    IL_001b:  nop
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  call       int32 JavaCompiler.CodePageHandling::GetCodePage(string)
    IL_0024:  call       instance void JavaCompiler.Scanner::SetSource(class [mscorlib]System.IO.Stream,
                                                                       int32)
    IL_0029:  nop
    IL_002a:  ret
  } // end of method Scanner::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 JavaCompiler.Scanner::lines
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     int32[] JavaCompiler.Scanner::startState
    IL_000d:  ldc.i4.0
    IL_000e:  ldelem.i4
    IL_000f:  stfld      int32 JavaCompiler.Scanner::currentStart
    IL_0014:  ldarg.0
    IL_0015:  call       instance void JavaCompiler.ScanBase::.ctor()
    IL_001a:  nop
    IL_001b:  nop
    IL_001c:  ret
  } // end of method Scanner::.ctor

  .method private hidebysig instance void 
          GetCode() cil managed
  {
    // Code size       228 (0xe4)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] bool V_1,
             [2] bool V_2,
             [3] int32 next,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::code
    IL_0007:  ldc.i4.s   10
    IL_0009:  ceq
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_0026

    IL_000f:  nop
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.m1
    IL_0012:  stfld      int32 JavaCompiler.Scanner::cCol
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 JavaCompiler.Scanner::lNum
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0025:  nop
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_002d:  callvirt   instance int32 JavaCompiler.ScanBuff::get_Pos()
    IL_0032:  stfld      int32 JavaCompiler.Scanner::readPos
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_003e:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0043:  stfld      int32 JavaCompiler.Scanner::code
    IL_0048:  ldarg.0
    IL_0049:  ldfld      int32 JavaCompiler.Scanner::code
    IL_004e:  ldc.i4.m1
    IL_004f:  cgt
    IL_0051:  stloc.1
    IL_0052:  ldloc.1
    IL_0053:  brfalse    IL_00e3

    IL_0058:  nop
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 JavaCompiler.Scanner::code
    IL_005f:  ldc.i4     0xd800
    IL_0064:  blt.s      IL_0078

    IL_0066:  ldarg.0
    IL_0067:  ldfld      int32 JavaCompiler.Scanner::code
    IL_006c:  ldc.i4     0xdbff
    IL_0071:  cgt
    IL_0073:  ldc.i4.0
    IL_0074:  ceq
    IL_0076:  br.s       IL_0079

    IL_0078:  ldc.i4.0
    IL_0079:  stloc.2
    IL_007a:  ldloc.2
    IL_007b:  brfalse.s  IL_00d4

    IL_007d:  nop
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0084:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0089:  stloc.3
    IL_008a:  ldloc.3
    IL_008b:  ldc.i4     0xdc00
    IL_0090:  blt.s      IL_009c

    IL_0092:  ldloc.3
    IL_0093:  ldc.i4     0xdfff
    IL_0098:  cgt
    IL_009a:  br.s       IL_009d

    IL_009c:  ldc.i4.1
    IL_009d:  stloc.s    V_4
    IL_009f:  ldloc.s    V_4
    IL_00a1:  brfalse.s  IL_00b0

    IL_00a3:  ldarg.0
    IL_00a4:  ldc.i4     0xfffd
    IL_00a9:  stfld      int32 JavaCompiler.Scanner::code
    IL_00ae:  br.s       IL_00d3

    IL_00b0:  ldarg.0
    IL_00b1:  ldc.i4     0x10000
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      int32 JavaCompiler.Scanner::code
    IL_00bc:  ldc.i4     0x3ff
    IL_00c1:  and
    IL_00c2:  ldc.i4.s   10
    IL_00c4:  shl
    IL_00c5:  add
    IL_00c6:  ldloc.3
    IL_00c7:  ldc.i4     0x3ff
    IL_00cc:  and
    IL_00cd:  add
    IL_00ce:  stfld      int32 JavaCompiler.Scanner::code
    IL_00d3:  nop
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      int32 JavaCompiler.Scanner::cCol
    IL_00db:  ldc.i4.1
    IL_00dc:  add
    IL_00dd:  stfld      int32 JavaCompiler.Scanner::cCol
    IL_00e2:  nop
    IL_00e3:  ret
  } // end of method Scanner::GetCode

  .method private hidebysig instance void 
          MarkToken() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 JavaCompiler.Scanner::readPos
    IL_0008:  stfld      int32 JavaCompiler.Scanner::tokPos
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 JavaCompiler.Scanner::lNum
    IL_0014:  stfld      int32 JavaCompiler.Scanner::tokLin
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 JavaCompiler.Scanner::cCol
    IL_0020:  stfld      int32 JavaCompiler.Scanner::tokCol
    IL_0025:  ret
  } // end of method Scanner::MarkToken

  .method private hidebysig instance void 
          MarkEnd() cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  stfld      string JavaCompiler.Scanner::tokTxt
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 JavaCompiler.Scanner::readPos
    IL_000f:  stfld      int32 JavaCompiler.Scanner::tokEPos
    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 JavaCompiler.Scanner::lNum
    IL_001b:  stfld      int32 JavaCompiler.Scanner::tokELin
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 JavaCompiler.Scanner::cCol
    IL_0027:  stfld      int32 JavaCompiler.Scanner::tokECol
    IL_002c:  ret
  } // end of method Scanner::MarkEnd

  .method private hidebysig instance int32 
          Peek() cil managed
  {
    // Code size       92 (0x5c)
    .maxstack  2
    .locals init ([0] int32 rslt,
             [1] int32 codeSv,
             [2] int32 cColSv,
             [3] int32 lNumSv,
             [4] int32 bPosSv,
             [5] int32 V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::code
    IL_0007:  stloc.1
    IL_0008:  ldarg.0
    IL_0009:  ldfld      int32 JavaCompiler.Scanner::cCol
    IL_000e:  stloc.2
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 JavaCompiler.Scanner::lNum
    IL_0015:  stloc.3
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_001c:  callvirt   instance int32 JavaCompiler.ScanBuff::get_Pos()
    IL_0021:  stloc.s    bPosSv
    IL_0023:  ldarg.0
    IL_0024:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0029:  nop
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 JavaCompiler.Scanner::code
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldloc.3
    IL_0033:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0038:  ldarg.0
    IL_0039:  ldloc.2
    IL_003a:  stfld      int32 JavaCompiler.Scanner::cCol
    IL_003f:  ldarg.0
    IL_0040:  ldloc.1
    IL_0041:  stfld      int32 JavaCompiler.Scanner::code
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_004c:  ldloc.s    bPosSv
    IL_004e:  callvirt   instance void JavaCompiler.ScanBuff::set_Pos(int32)
    IL_0053:  nop
    IL_0054:  ldloc.0
    IL_0055:  stloc.s    V_5
    IL_0057:  br.s       IL_0059

    IL_0059:  ldloc.s    V_5
    IL_005b:  ret
  } // end of method Scanner::Peek

  .method public hidebysig instance void 
          SetSource(string source,
                    int32 offset) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       class JavaCompiler.ScanBuff JavaCompiler.ScanBuff::GetBuffer(string)
    IL_0008:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance void JavaCompiler.ScanBuff::set_Pos(int32)
    IL_0019:  nop
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.0
    IL_001c:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.s   10
    IL_0024:  stfld      int32 JavaCompiler.Scanner::code
    IL_0029:  ldarg.0
    IL_002a:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_002f:  nop
    IL_0030:  ret
  } // end of method Scanner::SetSource

  .method public hidebysig instance void 
          SetSource(class [mscorlib]System.Collections.Generic.IList`1<string> source) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       class JavaCompiler.ScanBuff JavaCompiler.ScanBuff::GetBuffer(class [mscorlib]System.Collections.Generic.IList`1<string>)
    IL_0008:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   10
    IL_0010:  stfld      int32 JavaCompiler.Scanner::code
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_001c:  ldarg.0
    IL_001d:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0022:  nop
    IL_0023:  ret
  } // end of method Scanner::SetSource

  .method public hidebysig instance void 
          SetSource(class [mscorlib]System.IO.Stream source) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       class JavaCompiler.ScanBuff JavaCompiler.ScanBuff::GetBuffer(class [mscorlib]System.IO.Stream)
    IL_0008:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.0
    IL_000f:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.s   10
    IL_0017:  stfld      int32 JavaCompiler.Scanner::code
    IL_001c:  ldarg.0
    IL_001d:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0022:  nop
    IL_0023:  ret
  } // end of method Scanner::SetSource

  .method public hidebysig instance void 
          SetSource(class [mscorlib]System.IO.Stream source,
                    int32 fallbackCodePage) cil managed
  {
    // Code size       37 (0x25)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  call       class JavaCompiler.ScanBuff JavaCompiler.ScanBuff::GetBuffer(class [mscorlib]System.IO.Stream,
                                                                                      int32)
    IL_0009:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.s   10
    IL_0018:  stfld      int32 JavaCompiler.Scanner::code
    IL_001d:  ldarg.0
    IL_001e:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0023:  nop
    IL_0024:  ret
  } // end of method Scanner::SetSource

  .method public hidebysig virtual instance int32 
          yylex() cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  2
    .locals init ([0] int32 next,
             [1] bool V_1,
             [2] int32 V_2)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.0
    IL_0003:  call       instance int32 JavaCompiler.Scanner::Scan()
    IL_0008:  stloc.0
    IL_0009:  nop
    IL_000a:  ldloc.0
    IL_000b:  ldsfld     int32 JavaCompiler.Scanner::parserMax
    IL_0010:  clt
    IL_0012:  ldc.i4.0
    IL_0013:  ceq
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  brtrue.s   IL_0001

    IL_0019:  ldloc.0
    IL_001a:  stloc.2
    IL_001b:  br.s       IL_001d

    IL_001d:  ldloc.2
    IL_001e:  ret
  } // end of method Scanner::yylex

  .method private hidebysig specialname instance int32 
          get_yypos() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::tokPos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Scanner::get_yypos

  .method private hidebysig specialname instance int32 
          get_yyline() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::tokLin
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Scanner::get_yyline

  .method private hidebysig specialname instance int32 
          get_yycol() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::tokCol
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Scanner::get_yycol

  .method public hidebysig specialname instance string 
          get_yytext() cil managed
  {
    // Code size       54 (0x36)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string JavaCompiler.Scanner::tokTxt
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_002b

    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 JavaCompiler.Scanner::tokPos
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 JavaCompiler.Scanner::tokEPos
    IL_0021:  callvirt   instance string JavaCompiler.ScanBuff::GetString(int32,
                                                                          int32)
    IL_0026:  stfld      string JavaCompiler.Scanner::tokTxt
    IL_002b:  ldarg.0
    IL_002c:  ldfld      string JavaCompiler.Scanner::tokTxt
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method Scanner::get_yytext

  .method private hidebysig instance void 
          yyless(int32 n) cil managed
  {
    // Code size       83 (0x53)
    .maxstack  3
    .locals init ([0] int32 i,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 JavaCompiler.Scanner::tokPos
    IL_000d:  callvirt   instance void JavaCompiler.ScanBuff::set_Pos(int32)
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 JavaCompiler.Scanner::tokCol
    IL_001a:  ldc.i4.1
    IL_001b:  sub
    IL_001c:  stfld      int32 JavaCompiler.Scanner::cCol
    IL_0021:  ldarg.0
    IL_0022:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0027:  nop
    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      int32 JavaCompiler.Scanner::tokLin
    IL_002f:  stfld      int32 JavaCompiler.Scanner::lNum
    IL_0034:  ldc.i4.0
    IL_0035:  stloc.0
    IL_0036:  br.s       IL_0043

    IL_0038:  ldarg.0
    IL_0039:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_003e:  nop
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  stloc.0
    IL_0043:  ldloc.0
    IL_0044:  ldarg.1
    IL_0045:  clt
    IL_0047:  stloc.1
    IL_0048:  ldloc.1
    IL_0049:  brtrue.s   IL_0038

    IL_004b:  ldarg.0
    IL_004c:  call       instance void JavaCompiler.Scanner::MarkEnd()
    IL_0051:  nop
    IL_0052:  ret
  } // end of method Scanner::yyless

  .method private hidebysig instance void 
          _yytrunc(int32 n) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  call       instance int32 JavaCompiler.Scanner::get_yyleng()
    IL_0008:  ldarg.1
    IL_0009:  sub
    IL_000a:  call       instance void JavaCompiler.Scanner::yyless(int32)
    IL_000f:  nop
    IL_0010:  ret
  } // end of method Scanner::_yytrunc

  .method public hidebysig specialname instance int32 
          get_yyleng() cil managed
  {
    // Code size       158 (0x9e)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 ch,
             [3] int32 count,
             [4] int32 save,
             [5] bool V_5,
             [6] bool V_6)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::tokELin
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 JavaCompiler.Scanner::tokLin
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brfalse.s  IL_0023

    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 JavaCompiler.Scanner::tokECol
    IL_0019:  ldarg.0
    IL_001a:  ldfld      int32 JavaCompiler.Scanner::tokCol
    IL_001f:  sub
    IL_0020:  stloc.1
    IL_0021:  br.s       IL_009c

    IL_0023:  nop
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.3
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_002c:  callvirt   instance int32 JavaCompiler.ScanBuff::get_Pos()
    IL_0031:  stloc.s    save
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0039:  ldarg.0
    IL_003a:  ldfld      int32 JavaCompiler.Scanner::tokPos
    IL_003f:  callvirt   instance void JavaCompiler.ScanBuff::set_Pos(int32)
    IL_0044:  nop
    IL_0045:  nop
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_004c:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0051:  stloc.2
    IL_0052:  ldloc.2
    IL_0053:  conv.u2
    IL_0054:  call       bool [mscorlib]System.Char::IsHighSurrogate(char)
    IL_0059:  ldc.i4.0
    IL_005a:  ceq
    IL_005c:  stloc.s    V_5
    IL_005e:  ldloc.s    V_5
    IL_0060:  brfalse.s  IL_0066

    IL_0062:  ldloc.3
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.3
    IL_0066:  nop
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_006d:  callvirt   instance int32 JavaCompiler.ScanBuff::get_Pos()
    IL_0072:  ldarg.0
    IL_0073:  ldfld      int32 JavaCompiler.Scanner::tokEPos
    IL_0078:  bge.s      IL_0083

    IL_007a:  ldloc.2
    IL_007b:  ldc.i4.m1
    IL_007c:  ceq
    IL_007e:  ldc.i4.0
    IL_007f:  ceq
    IL_0081:  br.s       IL_0084

    IL_0083:  ldc.i4.0
    IL_0084:  stloc.s    V_6
    IL_0086:  ldloc.s    V_6
    IL_0088:  brtrue.s   IL_0045

    IL_008a:  ldarg.0
    IL_008b:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Scanner::buffer
    IL_0090:  ldloc.s    save
    IL_0092:  callvirt   instance void JavaCompiler.ScanBuff::set_Pos(int32)
    IL_0097:  nop
    IL_0098:  ldloc.3
    IL_0099:  stloc.1
    IL_009a:  br.s       IL_009c

    IL_009c:  ldloc.1
    IL_009d:  ret
  } // end of method Scanner::get_yyleng

  .method assembly hidebysig specialname 
          instance int32  get_YY_START() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Scanner::currentScOrd
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Scanner::get_YY_START

  .method assembly hidebysig specialname 
          instance void  set_YY_START(int32 'value') cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 JavaCompiler.Scanner::currentScOrd
    IL_0008:  ldarg.0
    IL_0009:  ldsfld     int32[] JavaCompiler.Scanner::startState
    IL_000e:  ldarg.1
    IL_000f:  ldelem.i4
    IL_0010:  stfld      int32 JavaCompiler.Scanner::currentStart
    IL_0015:  ret
  } // end of method Scanner::set_YY_START

  .method assembly hidebysig instance void 
          BEGIN(int32 next) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 JavaCompiler.Scanner::currentScOrd
    IL_0008:  ldarg.0
    IL_0009:  ldsfld     int32[] JavaCompiler.Scanner::startState
    IL_000e:  ldarg.1
    IL_000f:  ldelem.i4
    IL_0010:  stfld      int32 JavaCompiler.Scanner::currentStart
    IL_0015:  ret
  } // end of method Scanner::BEGIN

  .method private hidebysig instance int32 
          Scan() cil managed
  {
    // Code size       763 (0x2fb)
    .maxstack  3
    .locals init ([0] int32 next,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] int32 V_4,
             [5] bool V_5,
             [6] int32 V_6)
    IL_0000:  nop
    IL_0001:  br         IL_02f3

    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      int32 JavaCompiler.Scanner::currentStart
    IL_000e:  stfld      int32 JavaCompiler.Scanner::state
    IL_0013:  br.s       IL_001e

    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_001c:  nop
    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  call       instance int32 JavaCompiler.Scanner::NextState()
    IL_0024:  dup
    IL_0025:  stloc.0
    IL_0026:  ldc.i4.m1
    IL_0027:  ceq
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  brtrue.s   IL_0015

    IL_002d:  ldarg.0
    IL_002e:  call       instance void JavaCompiler.Scanner::MarkToken()
    IL_0033:  nop
    IL_0034:  ldarg.0
    IL_0035:  ldloc.0
    IL_0036:  stfld      int32 JavaCompiler.Scanner::state
    IL_003b:  ldarg.0
    IL_003c:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0041:  nop
    IL_0042:  br.s       IL_0054

    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  ldloc.0
    IL_0047:  stfld      int32 JavaCompiler.Scanner::state
    IL_004c:  ldarg.0
    IL_004d:  call       instance void JavaCompiler.Scanner::GetCode()
    IL_0052:  nop
    IL_0053:  nop
    IL_0054:  ldarg.0
    IL_0055:  call       instance int32 JavaCompiler.Scanner::NextState()
    IL_005a:  dup
    IL_005b:  stloc.0
    IL_005c:  ldc.i4.0
    IL_005d:  cgt
    IL_005f:  stloc.2
    IL_0060:  ldloc.2
    IL_0061:  brtrue.s   IL_0044

    IL_0063:  ldarg.0
    IL_0064:  ldfld      int32 JavaCompiler.Scanner::state
    IL_0069:  ldc.i4.s   54
    IL_006b:  cgt
    IL_006d:  ldc.i4.0
    IL_006e:  ceq
    IL_0070:  stloc.3
    IL_0071:  ldloc.3
    IL_0072:  brfalse    IL_02f2

    IL_0077:  nop
    IL_0078:  ldarg.0
    IL_0079:  call       instance void JavaCompiler.Scanner::MarkEnd()
    IL_007e:  nop
    IL_007f:  ldarg.0
    IL_0080:  ldfld      int32 JavaCompiler.Scanner::state
    IL_0085:  stloc.s    V_4
    IL_0087:  ldloc.s    V_4
    IL_0089:  switch     ( 
                          IL_016f,
                          IL_018c,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01bf,
                          IL_01c8,
                          IL_01d1,
                          IL_01da,
                          IL_01e3,
                          IL_01ec,
                          IL_01f5,
                          IL_01fe,
                          IL_0207,
                          IL_0210,
                          IL_0219,
                          IL_0222,
                          IL_022b,
                          IL_0234,
                          IL_023d,
                          IL_0246,
                          IL_024f,
                          IL_0258,
                          IL_0261,
                          IL_026a,
                          IL_0273,
                          IL_0279,
                          IL_027f,
                          IL_0285,
                          IL_028b,
                          IL_0291,
                          IL_02b0,
                          IL_02c0,
                          IL_01a2,
                          IL_01a2,
                          IL_02c2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_02cb,
                          IL_01a2,
                          IL_02d4,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_02dd,
                          IL_01a2,
                          IL_01a2,
                          IL_01a2,
                          IL_02e6)
    IL_016a:  br         IL_02ef

    IL_016f:  ldarg.0
    IL_0170:  callvirt   instance bool JavaCompiler.ScanBase::yywrap()
    IL_0175:  stloc.s    V_5
    IL_0177:  ldloc.s    V_5
    IL_0179:  brfalse.s  IL_0187

    IL_017b:  ldc.i4     0x80
    IL_0180:  stloc.s    V_6
    IL_0182:  br         IL_02f8

    IL_0187:  br         IL_02f1

    IL_018c:  ldstr      "unexpected character '{0}'"
    IL_0191:  ldarg.0
    IL_0192:  call       instance string JavaCompiler.Scanner::get_yytext()
    IL_0197:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_019c:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
    IL_01a1:  throw

    IL_01a2:  ldarg.0
    IL_01a3:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.AbstractScanner`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::yylval
    IL_01a8:  ldarg.0
    IL_01a9:  call       instance string JavaCompiler.Scanner::get_yytext()
    IL_01ae:  stfld      string JavaCompiler.ValueType::name
    IL_01b3:  ldc.i4     0x82
    IL_01b8:  stloc.s    V_6
    IL_01ba:  br         IL_02f8

    IL_01bf:  ldc.i4.s   40
    IL_01c1:  stloc.s    V_6
    IL_01c3:  br         IL_02f8

    IL_01c8:  ldc.i4.s   41
    IL_01ca:  stloc.s    V_6
    IL_01cc:  br         IL_02f8

    IL_01d1:  ldc.i4.s   123
    IL_01d3:  stloc.s    V_6
    IL_01d5:  br         IL_02f8

    IL_01da:  ldc.i4.s   125
    IL_01dc:  stloc.s    V_6
    IL_01de:  br         IL_02f8

    IL_01e3:  ldc.i4.s   91
    IL_01e5:  stloc.s    V_6
    IL_01e7:  br         IL_02f8

    IL_01ec:  ldc.i4.s   93
    IL_01ee:  stloc.s    V_6
    IL_01f0:  br         IL_02f8

    IL_01f5:  ldc.i4.s   59
    IL_01f7:  stloc.s    V_6
    IL_01f9:  br         IL_02f8

    IL_01fe:  ldc.i4.s   44
    IL_0200:  stloc.s    V_6
    IL_0202:  br         IL_02f8

    IL_0207:  ldc.i4.s   46
    IL_0209:  stloc.s    V_6
    IL_020b:  br         IL_02f8

    IL_0210:  ldc.i4.s   64
    IL_0212:  stloc.s    V_6
    IL_0214:  br         IL_02f8

    IL_0219:  ldc.i4.s   61
    IL_021b:  stloc.s    V_6
    IL_021d:  br         IL_02f8

    IL_0222:  ldc.i4.s   62
    IL_0224:  stloc.s    V_6
    IL_0226:  br         IL_02f8

    IL_022b:  ldc.i4.s   60
    IL_022d:  stloc.s    V_6
    IL_022f:  br         IL_02f8

    IL_0234:  ldc.i4.s   33
    IL_0236:  stloc.s    V_6
    IL_0238:  br         IL_02f8

    IL_023d:  ldc.i4.s   126
    IL_023f:  stloc.s    V_6
    IL_0241:  br         IL_02f8

    IL_0246:  ldc.i4.s   63
    IL_0248:  stloc.s    V_6
    IL_024a:  br         IL_02f8

    IL_024f:  ldc.i4.s   58
    IL_0251:  stloc.s    V_6
    IL_0253:  br         IL_02f8

    IL_0258:  ldc.i4.s   43
    IL_025a:  stloc.s    V_6
    IL_025c:  br         IL_02f8

    IL_0261:  ldc.i4.s   45
    IL_0263:  stloc.s    V_6
    IL_0265:  br         IL_02f8

    IL_026a:  ldc.i4.s   42
    IL_026c:  stloc.s    V_6
    IL_026e:  br         IL_02f8

    IL_0273:  ldc.i4.s   47
    IL_0275:  stloc.s    V_6
    IL_0277:  br.s       IL_02f8

    IL_0279:  ldc.i4.s   38
    IL_027b:  stloc.s    V_6
    IL_027d:  br.s       IL_02f8

    IL_027f:  ldc.i4.s   124
    IL_0281:  stloc.s    V_6
    IL_0283:  br.s       IL_02f8

    IL_0285:  ldc.i4.s   94
    IL_0287:  stloc.s    V_6
    IL_0289:  br.s       IL_02f8

    IL_028b:  ldc.i4.s   37
    IL_028d:  stloc.s    V_6
    IL_028f:  br.s       IL_02f8

    IL_0291:  ldarg.0
    IL_0292:  ldflda     !0 class [QUT.ShiftReduceParser]QUT.Gppg.AbstractScanner`2<valuetype JavaCompiler.ValueType,class [QUT.ShiftReduceParser]QUT.Gppg.LexLocation>::yylval
    IL_0297:  ldarg.0
    IL_0298:  call       instance string JavaCompiler.Scanner::get_yytext()
    IL_029d:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_02a2:  stfld      int32 JavaCompiler.ValueType::num
    IL_02a7:  ldc.i4     0x81
    IL_02ac:  stloc.s    V_6
    IL_02ae:  br.s       IL_02f8

    IL_02b0:  ldarg.0
    IL_02b1:  ldarg.0
    IL_02b2:  ldfld      int32 JavaCompiler.Scanner::lines
    IL_02b7:  ldc.i4.1
    IL_02b8:  add
    IL_02b9:  stfld      int32 JavaCompiler.Scanner::lines
    IL_02be:  br.s       IL_02f1

    IL_02c0:  br.s       IL_02f1

    IL_02c2:  ldc.i4     0x86
    IL_02c7:  stloc.s    V_6
    IL_02c9:  br.s       IL_02f8

    IL_02cb:  ldc.i4     0x83
    IL_02d0:  stloc.s    V_6
    IL_02d2:  br.s       IL_02f8

    IL_02d4:  ldc.i4     0x87
    IL_02d9:  stloc.s    V_6
    IL_02db:  br.s       IL_02f8

    IL_02dd:  ldc.i4     0x85
    IL_02e2:  stloc.s    V_6
    IL_02e4:  br.s       IL_02f8

    IL_02e6:  ldc.i4     0x84
    IL_02eb:  stloc.s    V_6
    IL_02ed:  br.s       IL_02f8

    IL_02ef:  br.s       IL_02f1

    IL_02f1:  nop
    IL_02f2:  nop
    IL_02f3:  br         IL_0006

    IL_02f8:  ldloc.s    V_6
    IL_02fa:  ret
  } // end of method Scanner::Scan

  .method assembly hidebysig instance void 
          ECHO() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0006:  ldarg.0
    IL_0007:  call       instance string JavaCompiler.Scanner::get_yytext()
    IL_000c:  callvirt   instance void [mscorlib]System.IO.TextWriter::Write(string)
    IL_0011:  nop
    IL_0012:  ret
  } // end of method Scanner::ECHO

  .method public hidebysig virtual instance void 
          yyerror(string format,
                  object[] args) cil managed
  {
    .param [2]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    IL_0006:  ldstr      "Error: line {0}, {1}"
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 JavaCompiler.Scanner::lines
    IL_0011:  box        [mscorlib]System.Int32
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_001d:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                 object,
                                                                                 object)
    IL_0022:  nop
    IL_0023:  ret
  } // end of method Scanner::yyerror

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       1509 (0x5e5)
    .maxstack  10
    IL_0000:  call       int32 JavaCompiler.Scanner::GetMaxParseToken()
    IL_0005:  stsfld     int32 JavaCompiler.Scanner::parserMax
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [mscorlib]System.Int32
    IL_0010:  dup
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.s   55
    IL_0014:  stelem.i4
    IL_0015:  stsfld     int32[] JavaCompiler.Scanner::startState
    IL_001a:  ldc.i4.s   127
    IL_001c:  newarr     [mscorlib]System.SByte
    IL_0021:  dup
    IL_0022:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=127' '<PrivateImplementationDetails>'::F59EBAE84004ABE77292A61DFE46E8AA32AC16A6
    IL_0027:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_002c:  stsfld     int8[] JavaCompiler.Scanner::mapC0
    IL_0031:  ldc.i4.s   56
    IL_0033:  newarr     JavaCompiler.Scanner/Table
    IL_0038:  dup
    IL_0039:  ldc.i4.0
    IL_003a:  ldc.i4.0
    IL_003b:  ldc.i4.0
    IL_003c:  ldc.i4.0
    IL_003d:  ldnull
    IL_003e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0043:  stelem     JavaCompiler.Scanner/Table
    IL_0048:  dup
    IL_0049:  ldc.i4.1
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4.0
    IL_004c:  ldc.i4.m1
    IL_004d:  ldnull
    IL_004e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0053:  stelem     JavaCompiler.Scanner/Table
    IL_0058:  dup
    IL_0059:  ldc.i4.2
    IL_005a:  ldc.i4.s   39
    IL_005c:  ldc.i4.s   18
    IL_005e:  ldc.i4.m1
    IL_005f:  ldc.i4.s   18
    IL_0061:  newarr     [mscorlib]System.SByte
    IL_0066:  dup
    IL_0067:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::F0CBB6C582893C7C3E5E373E853ADAF1D0370822
    IL_006c:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0071:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0076:  stelem     JavaCompiler.Scanner/Table
    IL_007b:  dup
    IL_007c:  ldc.i4.3
    IL_007d:  ldc.i4.s   39
    IL_007f:  ldc.i4.s   18
    IL_0081:  ldc.i4.m1
    IL_0082:  ldc.i4.s   18
    IL_0084:  newarr     [mscorlib]System.SByte
    IL_0089:  dup
    IL_008a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_008f:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0094:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0099:  stelem     JavaCompiler.Scanner/Table
    IL_009e:  dup
    IL_009f:  ldc.i4.4
    IL_00a0:  ldc.i4.s   39
    IL_00a2:  ldc.i4.s   18
    IL_00a4:  ldc.i4.m1
    IL_00a5:  ldc.i4.s   18
    IL_00a7:  newarr     [mscorlib]System.SByte
    IL_00ac:  dup
    IL_00ad:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::A4A78754227166FB211195B76DB474D14C776DFB
    IL_00b2:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00b7:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_00bc:  stelem     JavaCompiler.Scanner/Table
    IL_00c1:  dup
    IL_00c2:  ldc.i4.5
    IL_00c3:  ldc.i4.s   39
    IL_00c5:  ldc.i4.s   18
    IL_00c7:  ldc.i4.m1
    IL_00c8:  ldc.i4.s   18
    IL_00ca:  newarr     [mscorlib]System.SByte
    IL_00cf:  dup
    IL_00d0:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::AED23D133C4E7786D2B529A1BEFCD3B284CEDE3A
    IL_00d5:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00da:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_00df:  stelem     JavaCompiler.Scanner/Table
    IL_00e4:  dup
    IL_00e5:  ldc.i4.6
    IL_00e6:  ldc.i4.s   39
    IL_00e8:  ldc.i4.s   18
    IL_00ea:  ldc.i4.m1
    IL_00eb:  ldc.i4.s   18
    IL_00ed:  newarr     [mscorlib]System.SByte
    IL_00f2:  dup
    IL_00f3:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::F8B8382F2EB45347774E4548FFE258A84F110D00
    IL_00f8:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00fd:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0102:  stelem     JavaCompiler.Scanner/Table
    IL_0107:  dup
    IL_0108:  ldc.i4.7
    IL_0109:  ldc.i4.s   39
    IL_010b:  ldc.i4.s   18
    IL_010d:  ldc.i4.m1
    IL_010e:  ldc.i4.s   18
    IL_0110:  newarr     [mscorlib]System.SByte
    IL_0115:  dup
    IL_0116:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::B5B4FEB58FE6EBE2242AD019CCD0E57F8ADB7486
    IL_011b:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0120:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0125:  stelem     JavaCompiler.Scanner/Table
    IL_012a:  dup
    IL_012b:  ldc.i4.8
    IL_012c:  ldc.i4.0
    IL_012d:  ldc.i4.0
    IL_012e:  ldc.i4.m1
    IL_012f:  ldnull
    IL_0130:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0135:  stelem     JavaCompiler.Scanner/Table
    IL_013a:  dup
    IL_013b:  ldc.i4.s   9
    IL_013d:  ldc.i4.0
    IL_013e:  ldc.i4.0
    IL_013f:  ldc.i4.m1
    IL_0140:  ldnull
    IL_0141:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0146:  stelem     JavaCompiler.Scanner/Table
    IL_014b:  dup
    IL_014c:  ldc.i4.s   10
    IL_014e:  ldc.i4.0
    IL_014f:  ldc.i4.0
    IL_0150:  ldc.i4.m1
    IL_0151:  ldnull
    IL_0152:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0157:  stelem     JavaCompiler.Scanner/Table
    IL_015c:  dup
    IL_015d:  ldc.i4.s   11
    IL_015f:  ldc.i4.0
    IL_0160:  ldc.i4.0
    IL_0161:  ldc.i4.m1
    IL_0162:  ldnull
    IL_0163:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0168:  stelem     JavaCompiler.Scanner/Table
    IL_016d:  dup
    IL_016e:  ldc.i4.s   12
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldc.i4.m1
    IL_0173:  ldnull
    IL_0174:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0179:  stelem     JavaCompiler.Scanner/Table
    IL_017e:  dup
    IL_017f:  ldc.i4.s   13
    IL_0181:  ldc.i4.0
    IL_0182:  ldc.i4.0
    IL_0183:  ldc.i4.m1
    IL_0184:  ldnull
    IL_0185:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_018a:  stelem     JavaCompiler.Scanner/Table
    IL_018f:  dup
    IL_0190:  ldc.i4.s   14
    IL_0192:  ldc.i4.0
    IL_0193:  ldc.i4.0
    IL_0194:  ldc.i4.m1
    IL_0195:  ldnull
    IL_0196:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_019b:  stelem     JavaCompiler.Scanner/Table
    IL_01a0:  dup
    IL_01a1:  ldc.i4.s   15
    IL_01a3:  ldc.i4.0
    IL_01a4:  ldc.i4.0
    IL_01a5:  ldc.i4.m1
    IL_01a6:  ldnull
    IL_01a7:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_01ac:  stelem     JavaCompiler.Scanner/Table
    IL_01b1:  dup
    IL_01b2:  ldc.i4.s   16
    IL_01b4:  ldc.i4.0
    IL_01b5:  ldc.i4.0
    IL_01b6:  ldc.i4.m1
    IL_01b7:  ldnull
    IL_01b8:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_01bd:  stelem     JavaCompiler.Scanner/Table
    IL_01c2:  dup
    IL_01c3:  ldc.i4.s   17
    IL_01c5:  ldc.i4.0
    IL_01c6:  ldc.i4.0
    IL_01c7:  ldc.i4.m1
    IL_01c8:  ldnull
    IL_01c9:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_01ce:  stelem     JavaCompiler.Scanner/Table
    IL_01d3:  dup
    IL_01d4:  ldc.i4.s   18
    IL_01d6:  ldc.i4.0
    IL_01d7:  ldc.i4.0
    IL_01d8:  ldc.i4.m1
    IL_01d9:  ldnull
    IL_01da:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_01df:  stelem     JavaCompiler.Scanner/Table
    IL_01e4:  dup
    IL_01e5:  ldc.i4.s   19
    IL_01e7:  ldc.i4.0
    IL_01e8:  ldc.i4.0
    IL_01e9:  ldc.i4.m1
    IL_01ea:  ldnull
    IL_01eb:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_01f0:  stelem     JavaCompiler.Scanner/Table
    IL_01f5:  dup
    IL_01f6:  ldc.i4.s   20
    IL_01f8:  ldc.i4.0
    IL_01f9:  ldc.i4.0
    IL_01fa:  ldc.i4.m1
    IL_01fb:  ldnull
    IL_01fc:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0201:  stelem     JavaCompiler.Scanner/Table
    IL_0206:  dup
    IL_0207:  ldc.i4.s   21
    IL_0209:  ldc.i4.0
    IL_020a:  ldc.i4.0
    IL_020b:  ldc.i4.m1
    IL_020c:  ldnull
    IL_020d:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0212:  stelem     JavaCompiler.Scanner/Table
    IL_0217:  dup
    IL_0218:  ldc.i4.s   22
    IL_021a:  ldc.i4.0
    IL_021b:  ldc.i4.0
    IL_021c:  ldc.i4.m1
    IL_021d:  ldnull
    IL_021e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0223:  stelem     JavaCompiler.Scanner/Table
    IL_0228:  dup
    IL_0229:  ldc.i4.s   23
    IL_022b:  ldc.i4.0
    IL_022c:  ldc.i4.0
    IL_022d:  ldc.i4.m1
    IL_022e:  ldnull
    IL_022f:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0234:  stelem     JavaCompiler.Scanner/Table
    IL_0239:  dup
    IL_023a:  ldc.i4.s   24
    IL_023c:  ldc.i4.0
    IL_023d:  ldc.i4.0
    IL_023e:  ldc.i4.m1
    IL_023f:  ldnull
    IL_0240:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0245:  stelem     JavaCompiler.Scanner/Table
    IL_024a:  dup
    IL_024b:  ldc.i4.s   25
    IL_024d:  ldc.i4.0
    IL_024e:  ldc.i4.0
    IL_024f:  ldc.i4.m1
    IL_0250:  ldnull
    IL_0251:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0256:  stelem     JavaCompiler.Scanner/Table
    IL_025b:  dup
    IL_025c:  ldc.i4.s   26
    IL_025e:  ldc.i4.0
    IL_025f:  ldc.i4.0
    IL_0260:  ldc.i4.m1
    IL_0261:  ldnull
    IL_0262:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0267:  stelem     JavaCompiler.Scanner/Table
    IL_026c:  dup
    IL_026d:  ldc.i4.s   27
    IL_026f:  ldc.i4.0
    IL_0270:  ldc.i4.0
    IL_0271:  ldc.i4.m1
    IL_0272:  ldnull
    IL_0273:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0278:  stelem     JavaCompiler.Scanner/Table
    IL_027d:  dup
    IL_027e:  ldc.i4.s   28
    IL_0280:  ldc.i4.0
    IL_0281:  ldc.i4.0
    IL_0282:  ldc.i4.m1
    IL_0283:  ldnull
    IL_0284:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0289:  stelem     JavaCompiler.Scanner/Table
    IL_028e:  dup
    IL_028f:  ldc.i4.s   29
    IL_0291:  ldc.i4.0
    IL_0292:  ldc.i4.0
    IL_0293:  ldc.i4.m1
    IL_0294:  ldnull
    IL_0295:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_029a:  stelem     JavaCompiler.Scanner/Table
    IL_029f:  dup
    IL_02a0:  ldc.i4.s   30
    IL_02a2:  ldc.i4.0
    IL_02a3:  ldc.i4.0
    IL_02a4:  ldc.i4.m1
    IL_02a5:  ldnull
    IL_02a6:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_02ab:  stelem     JavaCompiler.Scanner/Table
    IL_02b0:  dup
    IL_02b1:  ldc.i4.s   31
    IL_02b3:  ldc.i4.0
    IL_02b4:  ldc.i4.0
    IL_02b5:  ldc.i4.m1
    IL_02b6:  ldnull
    IL_02b7:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_02bc:  stelem     JavaCompiler.Scanner/Table
    IL_02c1:  dup
    IL_02c2:  ldc.i4.s   32
    IL_02c4:  ldc.i4.0
    IL_02c5:  ldc.i4.0
    IL_02c6:  ldc.i4.m1
    IL_02c7:  ldnull
    IL_02c8:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_02cd:  stelem     JavaCompiler.Scanner/Table
    IL_02d2:  dup
    IL_02d3:  ldc.i4.s   33
    IL_02d5:  ldc.i4.s   40
    IL_02d7:  ldc.i4.1
    IL_02d8:  ldc.i4.m1
    IL_02d9:  ldc.i4.1
    IL_02da:  newarr     [mscorlib]System.SByte
    IL_02df:  dup
    IL_02e0:  ldc.i4.0
    IL_02e1:  ldc.i4.s   33
    IL_02e3:  stelem.i1
    IL_02e4:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_02e9:  stelem     JavaCompiler.Scanner/Table
    IL_02ee:  dup
    IL_02ef:  ldc.i4.s   34
    IL_02f1:  ldc.i4.0
    IL_02f2:  ldc.i4.0
    IL_02f3:  ldc.i4.m1
    IL_02f4:  ldnull
    IL_02f5:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_02fa:  stelem     JavaCompiler.Scanner/Table
    IL_02ff:  dup
    IL_0300:  ldc.i4.s   35
    IL_0302:  ldc.i4.0
    IL_0303:  ldc.i4.0
    IL_0304:  ldc.i4.m1
    IL_0305:  ldnull
    IL_0306:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_030b:  stelem     JavaCompiler.Scanner/Table
    IL_0310:  dup
    IL_0311:  ldc.i4.s   36
    IL_0313:  ldc.i4.s   39
    IL_0315:  ldc.i4.s   18
    IL_0317:  ldc.i4.m1
    IL_0318:  ldc.i4.s   18
    IL_031a:  newarr     [mscorlib]System.SByte
    IL_031f:  dup
    IL_0320:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'63376406292A5DFA576F3E51A8F4819110E5DA5F'
    IL_0325:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_032a:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_032f:  stelem     JavaCompiler.Scanner/Table
    IL_0334:  dup
    IL_0335:  ldc.i4.s   37
    IL_0337:  ldc.i4.s   39
    IL_0339:  ldc.i4.s   18
    IL_033b:  ldc.i4.m1
    IL_033c:  ldc.i4.s   18
    IL_033e:  newarr     [mscorlib]System.SByte
    IL_0343:  dup
    IL_0344:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'55EBB986CDD9CDDA6E6B06882C98A56B57A873AC'
    IL_0349:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_034e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0353:  stelem     JavaCompiler.Scanner/Table
    IL_0358:  dup
    IL_0359:  ldc.i4.s   38
    IL_035b:  ldc.i4.s   39
    IL_035d:  ldc.i4.s   18
    IL_035f:  ldc.i4.m1
    IL_0360:  ldc.i4.s   18
    IL_0362:  newarr     [mscorlib]System.SByte
    IL_0367:  dup
    IL_0368:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_036d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0372:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0377:  stelem     JavaCompiler.Scanner/Table
    IL_037c:  dup
    IL_037d:  ldc.i4.s   39
    IL_037f:  ldc.i4.s   39
    IL_0381:  ldc.i4.s   18
    IL_0383:  ldc.i4.m1
    IL_0384:  ldc.i4.s   18
    IL_0386:  newarr     [mscorlib]System.SByte
    IL_038b:  dup
    IL_038c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::CC812D4DCD2A10674D4A4C41ED16D114EA682349
    IL_0391:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0396:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_039b:  stelem     JavaCompiler.Scanner/Table
    IL_03a0:  dup
    IL_03a1:  ldc.i4.s   40
    IL_03a3:  ldc.i4.s   39
    IL_03a5:  ldc.i4.s   18
    IL_03a7:  ldc.i4.m1
    IL_03a8:  ldc.i4.s   18
    IL_03aa:  newarr     [mscorlib]System.SByte
    IL_03af:  dup
    IL_03b0:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::CB401B2ED02DD97FF68009C8ED492ED85C916C2D
    IL_03b5:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_03ba:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_03bf:  stelem     JavaCompiler.Scanner/Table
    IL_03c4:  dup
    IL_03c5:  ldc.i4.s   41
    IL_03c7:  ldc.i4.s   39
    IL_03c9:  ldc.i4.s   18
    IL_03cb:  ldc.i4.m1
    IL_03cc:  ldc.i4.s   18
    IL_03ce:  newarr     [mscorlib]System.SByte
    IL_03d3:  dup
    IL_03d4:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::C63F2B9B9BA188CA897BAE08ADC25AB033BAA7B4
    IL_03d9:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_03de:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_03e3:  stelem     JavaCompiler.Scanner/Table
    IL_03e8:  dup
    IL_03e9:  ldc.i4.s   42
    IL_03eb:  ldc.i4.s   39
    IL_03ed:  ldc.i4.s   18
    IL_03ef:  ldc.i4.m1
    IL_03f0:  ldc.i4.s   18
    IL_03f2:  newarr     [mscorlib]System.SByte
    IL_03f7:  dup
    IL_03f8:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'71654E23EBE28EF663F1329BC660A4B0465F42DA'
    IL_03fd:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0402:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0407:  stelem     JavaCompiler.Scanner/Table
    IL_040c:  dup
    IL_040d:  ldc.i4.s   43
    IL_040f:  ldc.i4.s   39
    IL_0411:  ldc.i4.s   18
    IL_0413:  ldc.i4.m1
    IL_0414:  ldc.i4.s   18
    IL_0416:  newarr     [mscorlib]System.SByte
    IL_041b:  dup
    IL_041c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_0421:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0426:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_042b:  stelem     JavaCompiler.Scanner/Table
    IL_0430:  dup
    IL_0431:  ldc.i4.s   44
    IL_0433:  ldc.i4.s   39
    IL_0435:  ldc.i4.s   18
    IL_0437:  ldc.i4.m1
    IL_0438:  ldc.i4.s   18
    IL_043a:  newarr     [mscorlib]System.SByte
    IL_043f:  dup
    IL_0440:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::F831B54CA5DA50A1E942EB5E2D1975FC6217565A
    IL_0445:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_044a:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_044f:  stelem     JavaCompiler.Scanner/Table
    IL_0454:  dup
    IL_0455:  ldc.i4.s   45
    IL_0457:  ldc.i4.s   39
    IL_0459:  ldc.i4.s   18
    IL_045b:  ldc.i4.m1
    IL_045c:  ldc.i4.s   18
    IL_045e:  newarr     [mscorlib]System.SByte
    IL_0463:  dup
    IL_0464:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_0469:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_046e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0473:  stelem     JavaCompiler.Scanner/Table
    IL_0478:  dup
    IL_0479:  ldc.i4.s   46
    IL_047b:  ldc.i4.s   39
    IL_047d:  ldc.i4.s   18
    IL_047f:  ldc.i4.m1
    IL_0480:  ldc.i4.s   18
    IL_0482:  newarr     [mscorlib]System.SByte
    IL_0487:  dup
    IL_0488:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'1CA3B51A5E3D60BCE091E1A17F5E4A408A6135A1'
    IL_048d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0492:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0497:  stelem     JavaCompiler.Scanner/Table
    IL_049c:  dup
    IL_049d:  ldc.i4.s   47
    IL_049f:  ldc.i4.s   39
    IL_04a1:  ldc.i4.s   18
    IL_04a3:  ldc.i4.m1
    IL_04a4:  ldc.i4.s   18
    IL_04a6:  newarr     [mscorlib]System.SByte
    IL_04ab:  dup
    IL_04ac:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::ECDF1D5657410567E2DB183C009434DD8DFFBCC9
    IL_04b1:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_04b6:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_04bb:  stelem     JavaCompiler.Scanner/Table
    IL_04c0:  dup
    IL_04c1:  ldc.i4.s   48
    IL_04c3:  ldc.i4.s   39
    IL_04c5:  ldc.i4.s   18
    IL_04c7:  ldc.i4.m1
    IL_04c8:  ldc.i4.s   18
    IL_04ca:  newarr     [mscorlib]System.SByte
    IL_04cf:  dup
    IL_04d0:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::B6C1CF86FE3B98691E9802526A1D0791E8CD0188
    IL_04d5:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_04da:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_04df:  stelem     JavaCompiler.Scanner/Table
    IL_04e4:  dup
    IL_04e5:  ldc.i4.s   49
    IL_04e7:  ldc.i4.s   39
    IL_04e9:  ldc.i4.s   18
    IL_04eb:  ldc.i4.m1
    IL_04ec:  ldc.i4.s   18
    IL_04ee:  newarr     [mscorlib]System.SByte
    IL_04f3:  dup
    IL_04f4:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'954A29F46B89F7C337DF2219D21C184BF93E0CA7'
    IL_04f9:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_04fe:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0503:  stelem     JavaCompiler.Scanner/Table
    IL_0508:  dup
    IL_0509:  ldc.i4.s   50
    IL_050b:  ldc.i4.s   39
    IL_050d:  ldc.i4.s   18
    IL_050f:  ldc.i4.m1
    IL_0510:  ldc.i4.s   18
    IL_0512:  newarr     [mscorlib]System.SByte
    IL_0517:  dup
    IL_0518:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_051d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0522:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0527:  stelem     JavaCompiler.Scanner/Table
    IL_052c:  dup
    IL_052d:  ldc.i4.s   51
    IL_052f:  ldc.i4.s   39
    IL_0531:  ldc.i4.s   18
    IL_0533:  ldc.i4.m1
    IL_0534:  ldc.i4.s   18
    IL_0536:  newarr     [mscorlib]System.SByte
    IL_053b:  dup
    IL_053c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'52BF7C0C49BEDD087654D42A70AD05039FC55AE3'
    IL_0541:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0546:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_054b:  stelem     JavaCompiler.Scanner/Table
    IL_0550:  dup
    IL_0551:  ldc.i4.s   52
    IL_0553:  ldc.i4.s   39
    IL_0555:  ldc.i4.s   18
    IL_0557:  ldc.i4.m1
    IL_0558:  ldc.i4.s   18
    IL_055a:  newarr     [mscorlib]System.SByte
    IL_055f:  dup
    IL_0560:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::DEDD51AF0D23CF914D82301DFC470D532F536084
    IL_0565:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_056a:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_056f:  stelem     JavaCompiler.Scanner/Table
    IL_0574:  dup
    IL_0575:  ldc.i4.s   53
    IL_0577:  ldc.i4.s   39
    IL_0579:  ldc.i4.s   18
    IL_057b:  ldc.i4.m1
    IL_057c:  ldc.i4.s   18
    IL_057e:  newarr     [mscorlib]System.SByte
    IL_0583:  dup
    IL_0584:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'514E28B9D34E59B60483B7DACDFFC8B7B208B240'
    IL_0589:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_058e:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_0593:  stelem     JavaCompiler.Scanner/Table
    IL_0598:  dup
    IL_0599:  ldc.i4.s   54
    IL_059b:  ldc.i4.s   39
    IL_059d:  ldc.i4.s   18
    IL_059f:  ldc.i4.m1
    IL_05a0:  ldc.i4.s   18
    IL_05a2:  newarr     [mscorlib]System.SByte
    IL_05a7:  dup
    IL_05a8:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '<PrivateImplementationDetails>'::'69BF9741111E6425D69C1742989B6738123EEC4D'
    IL_05ad:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_05b2:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_05b7:  stelem     JavaCompiler.Scanner/Table
    IL_05bc:  dup
    IL_05bd:  ldc.i4.s   55
    IL_05bf:  ldc.i4.4
    IL_05c0:  ldc.i4.s   41
    IL_05c2:  ldc.i4.3
    IL_05c3:  ldc.i4.s   41
    IL_05c5:  newarr     [mscorlib]System.SByte
    IL_05ca:  dup
    IL_05cb:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=41' '<PrivateImplementationDetails>'::A09AF51887A0D8B0138589F54042D23D35D9CF63
    IL_05d0:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_05d5:  newobj     instance void JavaCompiler.Scanner/Table::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int8[])
    IL_05da:  stelem     JavaCompiler.Scanner/Table
    IL_05df:  stsfld     valuetype JavaCompiler.Scanner/Table[] JavaCompiler.Scanner::NxS
    IL_05e4:  ret
  } // end of method Scanner::.cctor

  .property instance class JavaCompiler.ScanBuff
          Buffer()
  {
    .get instance class JavaCompiler.ScanBuff JavaCompiler.Scanner::get_Buffer()
  } // end of property Scanner::Buffer
  .property instance int32 yypos()
  {
    .get instance int32 JavaCompiler.Scanner::get_yypos()
  } // end of property Scanner::yypos
  .property instance int32 yyline()
  {
    .get instance int32 JavaCompiler.Scanner::get_yyline()
  } // end of property Scanner::yyline
  .property instance int32 yycol()
  {
    .get instance int32 JavaCompiler.Scanner::get_yycol()
  } // end of property Scanner::yycol
  .property instance string yytext()
  {
    .get instance string JavaCompiler.Scanner::get_yytext()
  } // end of property Scanner::yytext
  .property instance int32 yyleng()
  {
    .get instance int32 JavaCompiler.Scanner::get_yyleng()
  } // end of property Scanner::yyleng
  .property instance int32 YY_START()
  {
    .get instance int32 JavaCompiler.Scanner::get_YY_START()
    .set instance void JavaCompiler.Scanner::set_YY_START(int32)
  } // end of property Scanner::YY_START
} // end of class JavaCompiler.Scanner

.class public auto ansi serializable beforefieldinit JavaCompiler.BufferException
       extends [mscorlib]System.Exception
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method BufferException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [mscorlib]System.Exception::.ctor(string)
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  ret
  } // end of method BufferException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception innerException) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(string,
                                                                         class [mscorlib]System.Exception)
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  ret
  } // end of method BufferException::.ctor

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo info,
                               valuetype [mscorlib]System.Runtime.Serialization.StreamingContext context) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
                                                                         valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  ret
  } // end of method BufferException::.ctor

} // end of class JavaCompiler.BufferException

.class public abstract auto ansi beforefieldinit JavaCompiler.ScanBuff
       extends [mscorlib]System.Object
{
  .field private string fileNm
  .field public static literal int32 EndOfFile = int32(0xFFFFFFFF)
  .field public static literal int32 UnicodeReplacementChar = int32(0x0000FFFD)
  .method public hidebysig specialname instance bool 
          get_IsFile() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string JavaCompiler.ScanBuff::fileNm
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method ScanBuff::get_IsFile

  .method public hidebysig specialname instance string 
          get_FileName() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string JavaCompiler.ScanBuff::fileNm
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ScanBuff::get_FileName

  .method public hidebysig specialname instance void 
          set_FileName(string 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      string JavaCompiler.ScanBuff::fileNm
    IL_0008:  ret
  } // end of method ScanBuff::set_FileName

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Pos() cil managed
  {
  } // end of method ScanBuff::get_Pos

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Pos(int32 'value') cil managed
  {
  } // end of method ScanBuff::set_Pos

  .method public hidebysig newslot abstract virtual 
          instance int32  Read() cil managed
  {
  } // end of method ScanBuff::Read

  .method public hidebysig newslot virtual 
          instance void  Mark() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method ScanBuff::Mark

  .method public hidebysig newslot abstract virtual 
          instance string  GetString(int32 begin,
                                     int32 limit) cil managed
  {
  } // end of method ScanBuff::GetString

  .method public hidebysig static class JavaCompiler.ScanBuff 
          GetBuffer(string source) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.ScanBuff V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newobj     instance void JavaCompiler.StringBuffer::.ctor(string)
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ScanBuff::GetBuffer

  .method public hidebysig static class JavaCompiler.ScanBuff 
          GetBuffer(class [mscorlib]System.Collections.Generic.IList`1<string> source) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.ScanBuff V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newobj     instance void JavaCompiler.LineBuffer::.ctor(class [mscorlib]System.Collections.Generic.IList`1<string>)
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ScanBuff::GetBuffer

  .method public hidebysig static class JavaCompiler.ScanBuff 
          GetBuffer(class [mscorlib]System.IO.Stream source) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] class JavaCompiler.ScanBuff V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newobj     instance void JavaCompiler.BuildBuffer::.ctor(class [mscorlib]System.IO.Stream)
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ScanBuff::GetBuffer

  .method public hidebysig static class JavaCompiler.ScanBuff 
          GetBuffer(class [mscorlib]System.IO.Stream source,
                    int32 fallbackCodePage) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init ([0] class JavaCompiler.ScanBuff V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  newobj     instance void JavaCompiler.BuildBuffer::.ctor(class [mscorlib]System.IO.Stream,
                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method ScanBuff::GetBuffer

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method ScanBuff::.ctor

  .property instance bool IsFile()
  {
    .get instance bool JavaCompiler.ScanBuff::get_IsFile()
  } // end of property ScanBuff::IsFile
  .property instance string FileName()
  {
    .get instance string JavaCompiler.ScanBuff::get_FileName()
    .set instance void JavaCompiler.ScanBuff::set_FileName(string)
  } // end of property ScanBuff::FileName
  .property instance int32 Pos()
  {
    .get instance int32 JavaCompiler.ScanBuff::get_Pos()
    .set instance void JavaCompiler.ScanBuff::set_Pos(int32)
  } // end of property ScanBuff::Pos
} // end of class JavaCompiler.ScanBuff

.class private auto ansi sealed beforefieldinit JavaCompiler.StringBuffer
       extends JavaCompiler.ScanBuff
{
  .field private string str
  .field private int32 bPos
  .field private int32 sLen
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string source) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.ScanBuff::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      string JavaCompiler.StringBuffer::str
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0016:  stfld      int32 JavaCompiler.StringBuffer::sLen
    IL_001b:  ldarg.0
    IL_001c:  ldnull
    IL_001d:  call       instance void JavaCompiler.ScanBuff::set_FileName(string)
    IL_0022:  nop
    IL_0023:  ret
  } // end of method StringBuffer::.ctor

  .method public hidebysig virtual instance int32 
          Read() cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 V_2,
             [3] bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 JavaCompiler.StringBuffer::sLen
    IL_000d:  clt
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brfalse.s  IL_0032

    IL_0013:  ldarg.0
    IL_0014:  ldfld      string JavaCompiler.StringBuffer::str
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_002f:  stloc.2
    IL_0030:  br.s       IL_006b

    IL_0032:  ldarg.0
    IL_0033:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0038:  ldarg.0
    IL_0039:  ldfld      int32 JavaCompiler.StringBuffer::sLen
    IL_003e:  ceq
    IL_0040:  stloc.3
    IL_0041:  ldloc.3
    IL_0042:  brfalse.s  IL_0058

    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_004c:  ldc.i4.1
    IL_004d:  add
    IL_004e:  stfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0053:  ldc.i4.s   10
    IL_0055:  stloc.2
    IL_0056:  br.s       IL_006b

    IL_0058:  nop
    IL_0059:  ldarg.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0067:  ldc.i4.m1
    IL_0068:  stloc.2
    IL_0069:  br.s       IL_006b

    IL_006b:  ldloc.2
    IL_006c:  ret
  } // end of method StringBuffer::Read

  .method public hidebysig virtual instance string 
          GetString(int32 begin,
                    int32 limit) cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] bool V_1,
             [2] string V_2)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 JavaCompiler.StringBuffer::sLen
    IL_0008:  cgt
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0016

    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 JavaCompiler.StringBuffer::sLen
    IL_0014:  starg.s    limit
    IL_0016:  ldarg.2
    IL_0017:  ldarg.1
    IL_0018:  cgt
    IL_001a:  ldc.i4.0
    IL_001b:  ceq
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  brfalse.s  IL_0029

    IL_0021:  ldstr      ""
    IL_0026:  stloc.2
    IL_0027:  br.s       IL_003b

    IL_0029:  ldarg.0
    IL_002a:  ldfld      string JavaCompiler.StringBuffer::str
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldarg.1
    IL_0032:  sub
    IL_0033:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_0038:  stloc.2
    IL_0039:  br.s       IL_003b

    IL_003b:  ldloc.2
    IL_003c:  ret
  } // end of method StringBuffer::GetString

  .method public hidebysig specialname virtual 
          instance int32  get_Pos() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method StringBuffer::get_Pos

  .method public hidebysig specialname virtual 
          instance void  set_Pos(int32 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 JavaCompiler.StringBuffer::bPos
    IL_0008:  ret
  } // end of method StringBuffer::set_Pos

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "StringBuffer"
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method StringBuffer::ToString

  .property instance int32 Pos()
  {
    .get instance int32 JavaCompiler.StringBuffer::get_Pos()
    .set instance void JavaCompiler.StringBuffer::set_Pos(int32)
  } // end of property StringBuffer::Pos
} // end of class JavaCompiler.StringBuffer

.class private auto ansi sealed beforefieldinit JavaCompiler.LineBuffer
       extends JavaCompiler.ScanBuff
{
  .field private class [mscorlib]System.Collections.Generic.IList`1<string> line
  .field private int32 numLines
  .field private string curLine
  .field private int32 cLine
  .field private int32 curLen
  .field private int32 curLineStart
  .field private int32 curLineEnd
  .field private int32 maxPos
  .field private int32 cPos
  .field private int32 cachedPosition
  .field private int32 cachedIxdex
  .field private int32 cachedLineStart
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Collections.Generic.IList`1<string> lineList) cil managed
  {
    // Code size       133 (0x85)
    .maxstack  5
    .locals init ([0] int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.ScanBuff::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_0016:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.ICollection`1<string>::get_Count()
    IL_001b:  stfld      int32 JavaCompiler.LineBuffer::numLines
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.0
    IL_0023:  dup
    IL_0024:  stloc.0
    IL_0025:  stfld      int32 JavaCompiler.LineBuffer::curLineStart
    IL_002a:  ldloc.0
    IL_002b:  stfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      int32 JavaCompiler.LineBuffer::numLines
    IL_0037:  ldc.i4.0
    IL_0038:  bgt.s      IL_0041

    IL_003a:  ldstr      ""
    IL_003f:  br.s       IL_004d

    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_0047:  ldc.i4.0
    IL_0048:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_004d:  stfld      string JavaCompiler.LineBuffer::curLine
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  ldfld      string JavaCompiler.LineBuffer::curLine
    IL_005b:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0060:  dup
    IL_0061:  stloc.0
    IL_0062:  stfld      int32 JavaCompiler.LineBuffer::curLen
    IL_0067:  ldloc.0
    IL_0068:  dup
    IL_0069:  stloc.0
    IL_006a:  stfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_006f:  ldloc.0
    IL_0070:  stfld      int32 JavaCompiler.LineBuffer::maxPos
    IL_0075:  ldarg.0
    IL_0076:  ldc.i4.1
    IL_0077:  stfld      int32 JavaCompiler.LineBuffer::cLine
    IL_007c:  ldarg.0
    IL_007d:  ldnull
    IL_007e:  call       instance void JavaCompiler.ScanBuff::set_FileName(string)
    IL_0083:  nop
    IL_0084:  ret
  } // end of method LineBuffer::.ctor

  .method public hidebysig virtual instance int32 
          Read() cil managed
  {
    // Code size       276 (0x114)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_000d:  clt
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brfalse.s  IL_003c

    IL_0013:  ldarg.0
    IL_0014:  ldfld      string JavaCompiler.LineBuffer::curLine
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0029:  ldloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 JavaCompiler.LineBuffer::curLineStart
    IL_0030:  sub
    IL_0031:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_0036:  stloc.2
    IL_0037:  br         IL_0112

    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  stfld      int32 JavaCompiler.LineBuffer::cPos
    IL_004c:  ldloc.1
    IL_004d:  ldarg.0
    IL_004e:  ldfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_0053:  ceq
    IL_0055:  stloc.3
    IL_0056:  ldloc.3
    IL_0057:  brfalse.s  IL_0061

    IL_0059:  ldc.i4.s   10
    IL_005b:  stloc.2
    IL_005c:  br         IL_0112

    IL_0061:  ldarg.0
    IL_0062:  ldfld      int32 JavaCompiler.LineBuffer::cLine
    IL_0067:  ldarg.0
    IL_0068:  ldfld      int32 JavaCompiler.LineBuffer::numLines
    IL_006d:  clt
    IL_006f:  ldc.i4.0
    IL_0070:  ceq
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloc.s    V_4
    IL_0076:  brfalse.s  IL_007f

    IL_0078:  ldc.i4.m1
    IL_0079:  stloc.2
    IL_007a:  br         IL_0112

    IL_007f:  ldarg.0
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_0086:  ldarg.0
    IL_0087:  ldfld      int32 JavaCompiler.LineBuffer::cLine
    IL_008c:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_0091:  stfld      string JavaCompiler.LineBuffer::curLine
    IL_0096:  ldarg.0
    IL_0097:  ldarg.0
    IL_0098:  ldfld      string JavaCompiler.LineBuffer::curLine
    IL_009d:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_00a2:  stfld      int32 JavaCompiler.LineBuffer::curLen
    IL_00a7:  ldarg.0
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  stfld      int32 JavaCompiler.LineBuffer::curLineStart
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      int32 JavaCompiler.LineBuffer::curLineStart
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      int32 JavaCompiler.LineBuffer::curLen
    IL_00c2:  add
    IL_00c3:  stfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      int32 JavaCompiler.LineBuffer::maxPos
    IL_00d4:  cgt
    IL_00d6:  stloc.s    V_5
    IL_00d8:  ldloc.s    V_5
    IL_00da:  brfalse.s  IL_00e8

    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_00e3:  stfld      int32 JavaCompiler.LineBuffer::maxPos
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      int32 JavaCompiler.LineBuffer::cLine
    IL_00ef:  ldc.i4.1
    IL_00f0:  add
    IL_00f1:  stfld      int32 JavaCompiler.LineBuffer::cLine
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      int32 JavaCompiler.LineBuffer::curLen
    IL_00fc:  ldc.i4.0
    IL_00fd:  bgt.s      IL_0103

    IL_00ff:  ldc.i4.s   10
    IL_0101:  br.s       IL_010f

    IL_0103:  ldarg.0
    IL_0104:  ldfld      string JavaCompiler.LineBuffer::curLine
    IL_0109:  ldc.i4.0
    IL_010a:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_010f:  stloc.2
    IL_0110:  br.s       IL_0112

    IL_0112:  ldloc.2
    IL_0113:  ret
  } // end of method LineBuffer::Read

  .method private hidebysig instance void 
          findIndex(int32 pos,
                    [out] int32& ix,
                    [out] int32& lstart) cil managed
  {
    // Code size       137 (0x89)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 len,
             [3] bool V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 JavaCompiler.LineBuffer::cachedPosition
    IL_0008:  clt
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  brfalse.s  IL_0025

    IL_0011:  nop
    IL_0012:  ldarg.2
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 JavaCompiler.LineBuffer::cachedIxdex
    IL_0019:  stind.i4
    IL_001a:  ldarg.3
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 JavaCompiler.LineBuffer::cachedLineStart
    IL_0021:  stind.i4
    IL_0022:  nop
    IL_0023:  br.s       IL_002f

    IL_0025:  nop
    IL_0026:  ldarg.2
    IL_0027:  ldarg.3
    IL_0028:  ldc.i4.0
    IL_0029:  dup
    IL_002a:  stloc.1
    IL_002b:  stind.i4
    IL_002c:  ldloc.1
    IL_002d:  stind.i4
    IL_002e:  nop
    IL_002f:  br.s       IL_0061

    IL_0031:  nop
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_0038:  ldarg.2
    IL_0039:  ldind.i4
    IL_003a:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_003f:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.2
    IL_0047:  ldarg.1
    IL_0048:  ldarg.3
    IL_0049:  ldind.i4
    IL_004a:  ldloc.2
    IL_004b:  add
    IL_004c:  clt
    IL_004e:  stloc.3
    IL_004f:  ldloc.3
    IL_0050:  brfalse.s  IL_0054

    IL_0052:  br.s       IL_0071

    IL_0054:  ldarg.3
    IL_0055:  ldarg.3
    IL_0056:  ldind.i4
    IL_0057:  ldloc.2
    IL_0058:  add
    IL_0059:  stind.i4
    IL_005a:  ldarg.2
    IL_005b:  ldarg.2
    IL_005c:  ldind.i4
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  stind.i4
    IL_0060:  nop
    IL_0061:  ldarg.2
    IL_0062:  ldind.i4
    IL_0063:  ldarg.0
    IL_0064:  ldfld      int32 JavaCompiler.LineBuffer::numLines
    IL_0069:  clt
    IL_006b:  stloc.s    V_4
    IL_006d:  ldloc.s    V_4
    IL_006f:  brtrue.s   IL_0031

    IL_0071:  ldarg.0
    IL_0072:  ldarg.1
    IL_0073:  stfld      int32 JavaCompiler.LineBuffer::cachedPosition
    IL_0078:  ldarg.0
    IL_0079:  ldarg.2
    IL_007a:  ldind.i4
    IL_007b:  stfld      int32 JavaCompiler.LineBuffer::cachedIxdex
    IL_0080:  ldarg.0
    IL_0081:  ldarg.3
    IL_0082:  ldind.i4
    IL_0083:  stfld      int32 JavaCompiler.LineBuffer::cachedLineStart
    IL_0088:  ret
  } // end of method LineBuffer::findIndex

  .method public hidebysig virtual instance string 
          GetString(int32 begin,
                    int32 limit) cil managed
  {
    // Code size       334 (0x14e)
    .maxstack  4
    .locals init ([0] int32 endIx,
             [1] int32 begIx,
             [2] int32 endLineStart,
             [3] int32 begLineStart,
             [4] int32 begCol,
             [5] int32 endCol,
             [6] string s,
             [7] class [mscorlib]System.Text.StringBuilder sb,
             [8] bool V_8,
             [9] string V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] bool V_13)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 JavaCompiler.LineBuffer::maxPos
    IL_0008:  bge.s      IL_0013

    IL_000a:  ldarg.2
    IL_000b:  ldarg.1
    IL_000c:  cgt
    IL_000e:  ldc.i4.0
    IL_000f:  ceq
    IL_0011:  br.s       IL_0014

    IL_0013:  ldc.i4.1
    IL_0014:  stloc.s    V_8
    IL_0016:  ldloc.s    V_8
    IL_0018:  brfalse.s  IL_0026

    IL_001a:  ldstr      ""
    IL_001f:  stloc.s    V_9
    IL_0021:  br         IL_014b

    IL_0026:  ldarg.0
    IL_0027:  ldarg.1
    IL_0028:  ldloca.s   begIx
    IL_002a:  ldloca.s   begLineStart
    IL_002c:  call       instance void JavaCompiler.LineBuffer::findIndex(int32,
                                                                          int32&,
                                                                          int32&)
    IL_0031:  nop
    IL_0032:  ldarg.1
    IL_0033:  ldloc.3
    IL_0034:  sub
    IL_0035:  stloc.s    begCol
    IL_0037:  ldarg.0
    IL_0038:  ldarg.2
    IL_0039:  ldloca.s   endIx
    IL_003b:  ldloca.s   endLineStart
    IL_003d:  call       instance void JavaCompiler.LineBuffer::findIndex(int32,
                                                                          int32&,
                                                                          int32&)
    IL_0042:  nop
    IL_0043:  ldarg.2
    IL_0044:  ldloc.2
    IL_0045:  sub
    IL_0046:  stloc.s    endCol
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_004e:  ldloc.1
    IL_004f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_0054:  stloc.s    s
    IL_0056:  ldloc.1
    IL_0057:  ldloc.0
    IL_0058:  ceq
    IL_005a:  stloc.s    V_10
    IL_005c:  ldloc.s    V_10
    IL_005e:  brfalse.s  IL_0096

    IL_0060:  nop
    IL_0061:  ldloc.s    endCol
    IL_0063:  ldloc.s    s
    IL_0065:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_006a:  ble.s      IL_0081

    IL_006c:  ldloc.s    s
    IL_006e:  ldloc.s    begCol
    IL_0070:  callvirt   instance string [mscorlib]System.String::Substring(int32)
    IL_0075:  ldstr      "\n"
    IL_007a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_007f:  br.s       IL_008f

    IL_0081:  ldloc.s    s
    IL_0083:  ldloc.s    begCol
    IL_0085:  ldloc.s    endCol
    IL_0087:  ldloc.s    begCol
    IL_0089:  sub
    IL_008a:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_008f:  stloc.s    V_9
    IL_0091:  br         IL_014b

    IL_0096:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_009b:  stloc.s    sb
    IL_009d:  ldloc.s    begCol
    IL_009f:  ldloc.s    s
    IL_00a1:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_00a6:  clt
    IL_00a8:  stloc.s    V_11
    IL_00aa:  ldloc.s    V_11
    IL_00ac:  brfalse.s  IL_00bf

    IL_00ae:  ldloc.s    sb
    IL_00b0:  ldloc.s    s
    IL_00b2:  ldloc.s    begCol
    IL_00b4:  callvirt   instance string [mscorlib]System.String::Substring(int32)
    IL_00b9:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00be:  pop
    IL_00bf:  br.s       IL_00fb

    IL_00c1:  nop
    IL_00c2:  ldloc.s    sb
    IL_00c4:  ldstr      "\n"
    IL_00c9:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00ce:  pop
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_00d5:  ldloc.1
    IL_00d6:  ldc.i4.1
    IL_00d7:  add
    IL_00d8:  dup
    IL_00d9:  stloc.1
    IL_00da:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_00df:  stloc.s    s
    IL_00e1:  ldloc.1
    IL_00e2:  ldloc.0
    IL_00e3:  clt
    IL_00e5:  ldc.i4.0
    IL_00e6:  ceq
    IL_00e8:  stloc.s    V_12
    IL_00ea:  ldloc.s    V_12
    IL_00ec:  brfalse.s  IL_00f0

    IL_00ee:  br.s       IL_00fd

    IL_00f0:  ldloc.s    sb
    IL_00f2:  ldloc.s    s
    IL_00f4:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00f9:  pop
    IL_00fa:  nop
    IL_00fb:  br.s       IL_00c1

    IL_00fd:  ldloc.s    endCol
    IL_00ff:  ldloc.s    s
    IL_0101:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0106:  cgt
    IL_0108:  ldc.i4.0
    IL_0109:  ceq
    IL_010b:  stloc.s    V_13
    IL_010d:  ldloc.s    V_13
    IL_010f:  brfalse.s  IL_0127

    IL_0111:  nop
    IL_0112:  ldloc.s    sb
    IL_0114:  ldloc.s    s
    IL_0116:  ldc.i4.0
    IL_0117:  ldloc.s    endCol
    IL_0119:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_011e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0123:  pop
    IL_0124:  nop
    IL_0125:  br.s       IL_0140

    IL_0127:  nop
    IL_0128:  ldloc.s    sb
    IL_012a:  ldloc.s    s
    IL_012c:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0131:  pop
    IL_0132:  ldloc.s    sb
    IL_0134:  ldstr      "\n"
    IL_0139:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_013e:  pop
    IL_013f:  nop
    IL_0140:  ldloc.s    sb
    IL_0142:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0147:  stloc.s    V_9
    IL_0149:  br.s       IL_014b

    IL_014b:  ldloc.s    V_9
    IL_014d:  ret
  } // end of method LineBuffer::GetString

  .method public hidebysig specialname virtual 
          instance int32  get_Pos() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method LineBuffer::get_Pos

  .method public hidebysig specialname virtual 
          instance void  set_Pos(int32 'value') cil managed
  {
    // Code size       113 (0x71)
    .maxstack  5
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 JavaCompiler.LineBuffer::cPos
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 JavaCompiler.LineBuffer::cPos
    IL_000f:  ldarg.0
    IL_0010:  ldflda     int32 JavaCompiler.LineBuffer::cLine
    IL_0015:  ldarg.0
    IL_0016:  ldflda     int32 JavaCompiler.LineBuffer::curLineStart
    IL_001b:  call       instance void JavaCompiler.LineBuffer::findIndex(int32,
                                                                          int32&,
                                                                          int32&)
    IL_0020:  nop
    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32 JavaCompiler.LineBuffer::cLine
    IL_0028:  ldarg.0
    IL_0029:  ldfld      int32 JavaCompiler.LineBuffer::numLines
    IL_002e:  blt.s      IL_0037

    IL_0030:  ldstr      ""
    IL_0035:  br.s       IL_0053

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [mscorlib]System.Collections.Generic.IList`1<string> JavaCompiler.LineBuffer::line
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      int32 JavaCompiler.LineBuffer::cLine
    IL_0044:  stloc.0
    IL_0045:  ldloc.0
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  stfld      int32 JavaCompiler.LineBuffer::cLine
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_0053:  stfld      string JavaCompiler.LineBuffer::curLine
    IL_0058:  ldarg.0
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 JavaCompiler.LineBuffer::curLineStart
    IL_005f:  ldarg.0
    IL_0060:  ldfld      string JavaCompiler.LineBuffer::curLine
    IL_0065:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_006a:  add
    IL_006b:  stfld      int32 JavaCompiler.LineBuffer::curLineEnd
    IL_0070:  ret
  } // end of method LineBuffer::set_Pos

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "LineBuffer"
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method LineBuffer::ToString

  .property instance int32 Pos()
  {
    .get instance int32 JavaCompiler.LineBuffer::get_Pos()
    .set instance void JavaCompiler.LineBuffer::set_Pos(int32)
  } // end of property LineBuffer::Pos
} // end of class JavaCompiler.LineBuffer

.class private auto ansi beforefieldinit JavaCompiler.BuildBuffer
       extends JavaCompiler.ScanBuff
{
  .class auto ansi nested private beforefieldinit BufferElement
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
    .field private class [mscorlib]System.Text.StringBuilder bldr
    .field private class [mscorlib]System.Text.StringBuilder next
    .field private int32 minIx
    .field private int32 maxIx
    .field private int32 brkIx
    .field private bool appendToNext
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       31 (0x1f)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
      IL_0006:  stfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_000b:  ldarg.0
      IL_000c:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
      IL_0011:  stfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_0016:  ldarg.0
      IL_0017:  call       instance void [mscorlib]System.Object::.ctor()
      IL_001c:  nop
      IL_001d:  nop
      IL_001e:  ret
    } // end of method BufferElement::.ctor

    .method assembly hidebysig specialname 
            instance int32  get_MaxIndex() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  1
      .locals init ([0] int32 V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_000a

      IL_000a:  ldloc.0
      IL_000b:  ret
    } // end of method BufferElement::get_MaxIndex

    .method assembly hidebysig specialname 
            instance char  get_Item(int32 index) cil managed
    {
      // Code size       99 (0x63)
      .maxstack  3
      .locals init ([0] bool V_0,
               [1] bool V_1,
               [2] char V_2)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_0008:  blt.s      IL_0018

      IL_000a:  ldarg.1
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_0011:  clt
      IL_0013:  ldc.i4.0
      IL_0014:  ceq
      IL_0016:  br.s       IL_0019

      IL_0018:  ldc.i4.1
      IL_0019:  stloc.0
      IL_001a:  ldloc.0
      IL_001b:  brfalse.s  IL_0028

      IL_001d:  ldstr      "Index was outside data buffer"
      IL_0022:  newobj     instance void JavaCompiler.BufferException::.ctor(string)
      IL_0027:  throw

      IL_0028:  ldarg.1
      IL_0029:  ldarg.0
      IL_002a:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_002f:  clt
      IL_0031:  stloc.1
      IL_0032:  ldloc.1
      IL_0033:  brfalse.s  IL_004b

      IL_0035:  ldarg.0
      IL_0036:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_003b:  ldarg.1
      IL_003c:  ldarg.0
      IL_003d:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_0042:  sub
      IL_0043:  callvirt   instance char [mscorlib]System.Text.StringBuilder::get_Chars(int32)
      IL_0048:  stloc.2
      IL_0049:  br.s       IL_0061

      IL_004b:  ldarg.0
      IL_004c:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_0051:  ldarg.1
      IL_0052:  ldarg.0
      IL_0053:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0058:  sub
      IL_0059:  callvirt   instance char [mscorlib]System.Text.StringBuilder::get_Chars(int32)
      IL_005e:  stloc.2
      IL_005f:  br.s       IL_0061

      IL_0061:  ldloc.2
      IL_0062:  ret
    } // end of method BufferElement::get_Item

    .method assembly hidebysig instance void 
            Append(char[] block,
                   int32 count) cil managed
    {
      // Code size       79 (0x4f)
      .maxstack  4
      .locals init ([0] bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_0008:  ldarg.2
      IL_0009:  add
      IL_000a:  stfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_000f:  ldarg.0
      IL_0010:  ldfld      bool JavaCompiler.BuildBuffer/BufferElement::appendToNext
      IL_0015:  stloc.0
      IL_0016:  ldloc.0
      IL_0017:  brfalse.s  IL_002a

      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_001f:  ldarg.1
      IL_0020:  ldc.i4.0
      IL_0021:  ldarg.2
      IL_0022:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(char[],
                                                                                                                          int32,
                                                                                                                          int32)
      IL_0027:  pop
      IL_0028:  br.s       IL_004e

      IL_002a:  nop
      IL_002b:  ldarg.0
      IL_002c:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_0031:  ldarg.1
      IL_0032:  ldc.i4.0
      IL_0033:  ldarg.2
      IL_0034:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(char[],
                                                                                                                          int32,
                                                                                                                          int32)
      IL_0039:  pop
      IL_003a:  ldarg.0
      IL_003b:  ldarg.0
      IL_003c:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_0041:  stfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0046:  ldarg.0
      IL_0047:  ldc.i4.1
      IL_0048:  stfld      bool JavaCompiler.BuildBuffer/BufferElement::appendToNext
      IL_004d:  nop
      IL_004e:  ret
    } // end of method BufferElement::Append

    .method assembly hidebysig instance string 
            GetString(int32 start,
                      int32 limit) cil managed
    {
      // Code size       203 (0xcb)
      .maxstack  5
      .locals init ([0] bool V_0,
               [1] string V_1,
               [2] bool V_2,
               [3] bool V_3,
               [4] bool V_4)
      IL_0000:  nop
      IL_0001:  ldarg.2
      IL_0002:  ldarg.1
      IL_0003:  cgt
      IL_0005:  ldc.i4.0
      IL_0006:  ceq
      IL_0008:  stloc.0
      IL_0009:  ldloc.0
      IL_000a:  brfalse.s  IL_0017

      IL_000c:  ldstr      ""
      IL_0011:  stloc.1
      IL_0012:  br         IL_00c9

      IL_0017:  ldarg.1
      IL_0018:  ldarg.0
      IL_0019:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_001e:  blt.s      IL_002e

      IL_0020:  ldarg.2
      IL_0021:  ldarg.0
      IL_0022:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_0027:  cgt
      IL_0029:  ldc.i4.0
      IL_002a:  ceq
      IL_002c:  br.s       IL_002f

      IL_002e:  ldc.i4.0
      IL_002f:  stloc.2
      IL_0030:  ldloc.2
      IL_0031:  brfalse    IL_00be

      IL_0036:  ldarg.2
      IL_0037:  ldarg.0
      IL_0038:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_003d:  clt
      IL_003f:  stloc.3
      IL_0040:  ldloc.3
      IL_0041:  brfalse.s  IL_005c

      IL_0043:  ldarg.0
      IL_0044:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_0049:  ldarg.1
      IL_004a:  ldarg.0
      IL_004b:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_0050:  sub
      IL_0051:  ldarg.2
      IL_0052:  ldarg.1
      IL_0053:  sub
      IL_0054:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString(int32,
                                                                                         int32)
      IL_0059:  stloc.1
      IL_005a:  br.s       IL_00c9

      IL_005c:  ldarg.1
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0063:  clt
      IL_0065:  ldc.i4.0
      IL_0066:  ceq
      IL_0068:  stloc.s    V_4
      IL_006a:  ldloc.s    V_4
      IL_006c:  brfalse.s  IL_0087

      IL_006e:  ldarg.0
      IL_006f:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_0074:  ldarg.1
      IL_0075:  ldarg.0
      IL_0076:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_007b:  sub
      IL_007c:  ldarg.2
      IL_007d:  ldarg.1
      IL_007e:  sub
      IL_007f:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString(int32,
                                                                                         int32)
      IL_0084:  stloc.1
      IL_0085:  br.s       IL_00c9

      IL_0087:  ldarg.0
      IL_0088:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_008d:  ldarg.1
      IL_008e:  ldarg.0
      IL_008f:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_0094:  sub
      IL_0095:  ldarg.0
      IL_0096:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_009b:  ldarg.1
      IL_009c:  sub
      IL_009d:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString(int32,
                                                                                         int32)
      IL_00a2:  ldarg.0
      IL_00a3:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_00a8:  ldc.i4.0
      IL_00a9:  ldarg.2
      IL_00aa:  ldarg.0
      IL_00ab:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_00b0:  sub
      IL_00b1:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString(int32,
                                                                                         int32)
      IL_00b6:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_00bb:  stloc.1
      IL_00bc:  br.s       IL_00c9

      IL_00be:  ldstr      "String was outside data buffer"
      IL_00c3:  newobj     instance void JavaCompiler.BufferException::.ctor(string)
      IL_00c8:  throw

      IL_00c9:  ldloc.1
      IL_00ca:  ret
    } // end of method BufferElement::GetString

    .method assembly hidebysig instance void 
            Mark(int32 limit) cil managed
    {
      // Code size       83 (0x53)
      .maxstack  3
      .locals init ([0] bool V_0,
               [1] class [mscorlib]System.Text.StringBuilder temp)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0008:  ldc.i4.s   16
      IL_000a:  add
      IL_000b:  cgt
      IL_000d:  stloc.0
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_0052

      IL_0011:  nop
      IL_0012:  ldarg.0
      IL_0013:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_0018:  stloc.1
      IL_0019:  ldarg.0
      IL_001a:  ldarg.0
      IL_001b:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_0020:  stfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::bldr
      IL_0025:  ldarg.0
      IL_0026:  ldloc.1
      IL_0027:  stfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_002c:  ldarg.0
      IL_002d:  ldfld      class [mscorlib]System.Text.StringBuilder JavaCompiler.BuildBuffer/BufferElement::next
      IL_0032:  ldc.i4.0
      IL_0033:  callvirt   instance void [mscorlib]System.Text.StringBuilder::set_Length(int32)
      IL_0038:  nop
      IL_0039:  ldarg.0
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0040:  stfld      int32 JavaCompiler.BuildBuffer/BufferElement::minIx
      IL_0045:  ldarg.0
      IL_0046:  ldarg.0
      IL_0047:  ldfld      int32 JavaCompiler.BuildBuffer/BufferElement::maxIx
      IL_004c:  stfld      int32 JavaCompiler.BuildBuffer/BufferElement::brkIx
      IL_0051:  nop
      IL_0052:  ret
    } // end of method BufferElement::Mark

    .property instance int32 MaxIndex()
    {
      .get instance int32 JavaCompiler.BuildBuffer/BufferElement::get_MaxIndex()
    } // end of property BufferElement::MaxIndex
    .property instance char Item(int32)
    {
      .get instance char JavaCompiler.BuildBuffer/BufferElement::get_Item(int32)
    } // end of property BufferElement::Item
  } // end of class BufferElement

  .field private class JavaCompiler.BuildBuffer/BufferElement data
  .field private int32 bPos
  .field private class JavaCompiler.BlockReader NextBlk
  .method private hidebysig specialname instance string 
          get_EncodingName() cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  1
    .locals init ([0] class [mscorlib]System.IO.StreamReader rdr,
             [1] string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.BlockReader JavaCompiler.BuildBuffer::NextBlk
    IL_0007:  callvirt   instance object [mscorlib]System.Delegate::get_Target()
    IL_000c:  isinst     [mscorlib]System.IO.StreamReader
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  brfalse.s  IL_0022

    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [mscorlib]System.Text.Encoding [mscorlib]System.IO.StreamReader::get_CurrentEncoding()
    IL_001b:  callvirt   instance string [mscorlib]System.Text.Encoding::get_BodyName()
    IL_0020:  br.s       IL_0027

    IL_0022:  ldstr      "raw-bytes"
    IL_0027:  stloc.1
    IL_0028:  br.s       IL_002a

    IL_002a:  ldloc.1
    IL_002b:  ret
  } // end of method BuildBuffer::get_EncodingName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  2
    .locals init ([0] class [mscorlib]System.IO.FileStream fStrm,
             [1] bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void JavaCompiler.BuildBuffer/BufferElement::.ctor()
    IL_0006:  stfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_000b:  ldarg.0
    IL_000c:  call       instance void JavaCompiler.ScanBuff::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.1
    IL_0014:  isinst     [mscorlib]System.IO.FileStream
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  ldnull
    IL_001c:  cgt.un
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  brfalse.s  IL_002f

    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance string [mscorlib]System.IO.FileStream::get_Name()
    IL_0029:  call       instance void JavaCompiler.ScanBuff::set_FileName(string)
    IL_002e:  nop
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  call       class JavaCompiler.BlockReader JavaCompiler.BlockReaderFactory::Raw(class [mscorlib]System.IO.Stream)
    IL_0036:  stfld      class JavaCompiler.BlockReader JavaCompiler.BuildBuffer::NextBlk
    IL_003b:  ret
  } // end of method BuildBuffer::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.IO.Stream 'stream',
                               int32 fallbackCodePage) cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.IO.FileStream fStrm,
             [1] bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void JavaCompiler.BuildBuffer/BufferElement::.ctor()
    IL_0006:  stfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_000b:  ldarg.0
    IL_000c:  call       instance void JavaCompiler.ScanBuff::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.1
    IL_0014:  isinst     [mscorlib]System.IO.FileStream
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  ldnull
    IL_001c:  cgt.un
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  brfalse.s  IL_002f

    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance string [mscorlib]System.IO.FileStream::get_Name()
    IL_0029:  call       instance void JavaCompiler.ScanBuff::set_FileName(string)
    IL_002e:  nop
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldarg.2
    IL_0032:  call       class JavaCompiler.BlockReader JavaCompiler.BlockReaderFactory::Get(class [mscorlib]System.IO.Stream,
                                                                                             int32)
    IL_0037:  stfld      class JavaCompiler.BlockReader JavaCompiler.BuildBuffer::NextBlk
    IL_003c:  ret
  } // end of method BuildBuffer::.ctor

  .method public hidebysig virtual instance void 
          Mark() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_000d:  ldc.i4.2
    IL_000e:  sub
    IL_000f:  callvirt   instance void JavaCompiler.BuildBuffer/BufferElement::Mark(int32)
    IL_0014:  nop
    IL_0015:  ret
  } // end of method BuildBuffer::Mark

  .method public hidebysig specialname virtual 
          instance int32  get_Pos() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method BuildBuffer::get_Pos

  .method public hidebysig specialname virtual 
          instance void  set_Pos(int32 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_0008:  ret
  } // end of method BuildBuffer::set_Pos

  .method public hidebysig virtual instance int32 
          Read() cil managed
  {
    // Code size       152 (0x98)
    .maxstack  4
    .locals init ([0] bool V_0,
             [1] int32 V_1,
             [2] int32 V_2,
             [3] char[] chrs,
             [4] int32 count,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_000d:  callvirt   instance int32 JavaCompiler.BuildBuffer/BufferElement::get_MaxIndex()
    IL_0012:  clt
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  brfalse.s  IL_0038

    IL_0018:  nop
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_0026:  stloc.1
    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance char JavaCompiler.BuildBuffer/BufferElement::get_Item(int32)
    IL_0035:  stloc.2
    IL_0036:  br.s       IL_0096

    IL_0038:  nop
    IL_0039:  ldc.i4     0x1000
    IL_003e:  newarr     [mscorlib]System.Char
    IL_0043:  stloc.3
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class JavaCompiler.BlockReader JavaCompiler.BuildBuffer::NextBlk
    IL_004a:  ldloc.3
    IL_004b:  ldc.i4.0
    IL_004c:  ldc.i4     0x1000
    IL_0051:  callvirt   instance int32 JavaCompiler.BlockReader::Invoke(char[],
                                                                         int32,
                                                                         int32)
    IL_0056:  stloc.s    count
    IL_0058:  ldloc.s    count
    IL_005a:  ldc.i4.0
    IL_005b:  ceq
    IL_005d:  stloc.s    V_5
    IL_005f:  ldloc.s    V_5
    IL_0061:  brfalse.s  IL_0067

    IL_0063:  ldc.i4.m1
    IL_0064:  stloc.2
    IL_0065:  br.s       IL_0096

    IL_0067:  nop
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_006e:  ldloc.3
    IL_006f:  ldloc.s    count
    IL_0071:  callvirt   instance void JavaCompiler.BuildBuffer/BufferElement::Append(char[],
                                                                                      int32)
    IL_0076:  nop
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_0084:  stloc.1
    IL_0085:  ldloc.1
    IL_0086:  ldc.i4.1
    IL_0087:  add
    IL_0088:  stfld      int32 JavaCompiler.BuildBuffer::bPos
    IL_008d:  ldloc.1
    IL_008e:  callvirt   instance char JavaCompiler.BuildBuffer/BufferElement::get_Item(int32)
    IL_0093:  stloc.2
    IL_0094:  br.s       IL_0096

    IL_0096:  ldloc.2
    IL_0097:  ret
  } // end of method BuildBuffer::Read

  .method public hidebysig virtual instance string 
          GetString(int32 begin,
                    int32 limit) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class JavaCompiler.BuildBuffer/BufferElement JavaCompiler.BuildBuffer::data
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance string JavaCompiler.BuildBuffer/BufferElement::GetString(int32,
                                                                                           int32)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method BuildBuffer::GetString

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "StringBuilder buffer, encoding: "
    IL_0006:  ldarg.0
    IL_0007:  call       instance string JavaCompiler.BuildBuffer::get_EncodingName()
    IL_000c:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method BuildBuffer::ToString

  .property instance string EncodingName()
  {
    .get instance string JavaCompiler.BuildBuffer::get_EncodingName()
  } // end of property BuildBuffer::EncodingName
  .property instance int32 Pos()
  {
    .get instance int32 JavaCompiler.BuildBuffer::get_Pos()
    .set instance void JavaCompiler.BuildBuffer::set_Pos(int32)
  } // end of property BuildBuffer::Pos
} // end of class JavaCompiler.BuildBuffer

.class public auto ansi sealed JavaCompiler.BlockReader
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method BlockReader::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(char[] block,
                                 int32 index,
                                 int32 number) runtime managed
  {
  } // end of method BlockReader::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(char[] block,
                      int32 index,
                      int32 number,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method BlockReader::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method BlockReader::EndInvoke

} // end of class JavaCompiler.BlockReader

.class public abstract auto ansi sealed beforefieldinit JavaCompiler.BlockReaderFactory
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass0_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.IO.Stream 'stream'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass0_0'::.ctor

    .method assembly hidebysig instance int32 
            '<Raw>b__0'(char[] block,
                        int32 index,
                        int32 number) cil managed
    {
      // Code size       61 (0x3d)
      .maxstack  4
      .locals init ([0] uint8[] b,
               [1] int32 count,
               [2] int32 i,
               [3] int32 j,
               [4] bool V_4,
               [5] int32 V_5)
      IL_0000:  nop
      IL_0001:  ldarg.3
      IL_0002:  newarr     [mscorlib]System.Byte
      IL_0007:  stloc.0
      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [mscorlib]System.IO.Stream JavaCompiler.BlockReaderFactory/'<>c__DisplayClass0_0'::'stream'
      IL_000e:  ldloc.0
      IL_000f:  ldc.i4.0
      IL_0010:  ldarg.3
      IL_0011:  callvirt   instance int32 [mscorlib]System.IO.Stream::Read(uint8[],
                                                                           int32,
                                                                           int32)
      IL_0016:  stloc.1
      IL_0017:  ldc.i4.0
      IL_0018:  stloc.2
      IL_0019:  ldarg.2
      IL_001a:  stloc.3
      IL_001b:  br.s       IL_002b

      IL_001d:  ldarg.1
      IL_001e:  ldloc.3
      IL_001f:  ldloc.0
      IL_0020:  ldloc.2
      IL_0021:  ldelem.u1
      IL_0022:  stelem.i2
      IL_0023:  ldloc.2
      IL_0024:  ldc.i4.1
      IL_0025:  add
      IL_0026:  stloc.2
      IL_0027:  ldloc.3
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  stloc.3
      IL_002b:  ldloc.2
      IL_002c:  ldloc.1
      IL_002d:  clt
      IL_002f:  stloc.s    V_4
      IL_0031:  ldloc.s    V_4
      IL_0033:  brtrue.s   IL_001d

      IL_0035:  ldloc.1
      IL_0036:  stloc.s    V_5
      IL_0038:  br.s       IL_003a

      IL_003a:  ldloc.s    V_5
      IL_003c:  ret
    } // end of method '<>c__DisplayClass0_0'::'<Raw>b__0'

  } // end of class '<>c__DisplayClass0_0'

  .method public hidebysig static class JavaCompiler.BlockReader 
          Raw(class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  2
    .locals init ([0] class JavaCompiler.BlockReaderFactory/'<>c__DisplayClass0_0' 'CS$<>8__locals0',
             [1] class JavaCompiler.BlockReader V_1)
    IL_0000:  newobj     instance void JavaCompiler.BlockReaderFactory/'<>c__DisplayClass0_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class [mscorlib]System.IO.Stream JavaCompiler.BlockReaderFactory/'<>c__DisplayClass0_0'::'stream'
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  ldftn      instance int32 JavaCompiler.BlockReaderFactory/'<>c__DisplayClass0_0'::'<Raw>b__0'(char[],
                                                                                                            int32,
                                                                                                            int32)
    IL_0015:  newobj     instance void JavaCompiler.BlockReader::.ctor(object,
                                                                       native int)
    IL_001a:  stloc.1
    IL_001b:  br.s       IL_001d

    IL_001d:  ldloc.1
    IL_001e:  ret
  } // end of method BlockReaderFactory::Raw

  .method public hidebysig static class JavaCompiler.BlockReader 
          Get(class [mscorlib]System.IO.Stream 'stream',
              int32 fallbackCodePage) cil managed
  {
    // Code size       169 (0xa9)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.Text.Encoding encoding,
             [1] int32 preamble,
             [2] class [mscorlib]System.IO.StreamReader reader,
             [3] bool V_3,
             [4] bool V_4,
             [5] class JavaCompiler.BlockReader V_5,
             [6] bool V_6,
             [7] int32 guess,
             [8] bool V_8,
             [9] bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       int32 JavaCompiler.BlockReaderFactory::Preamble(class [mscorlib]System.IO.Stream)
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldc.i4.0
    IL_000a:  cgt.un
    IL_000c:  stloc.3
    IL_000d:  ldloc.3
    IL_000e:  brfalse.s  IL_0019

    IL_0010:  ldloc.1
    IL_0011:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::GetEncoding(int32)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_008d

    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.m1
    IL_001b:  ceq
    IL_001d:  stloc.s    V_4
    IL_001f:  ldloc.s    V_4
    IL_0021:  brfalse.s  IL_002d

    IL_0023:  ldarg.0
    IL_0024:  call       class JavaCompiler.BlockReader JavaCompiler.BlockReaderFactory::Raw(class [mscorlib]System.IO.Stream)
    IL_0029:  stloc.s    V_5
    IL_002b:  br.s       IL_00a6

    IL_002d:  ldarg.1
    IL_002e:  ldc.i4.s   -2
    IL_0030:  ceq
    IL_0032:  ldc.i4.0
    IL_0033:  ceq
    IL_0035:  stloc.s    V_6
    IL_0037:  ldloc.s    V_6
    IL_0039:  brfalse.s  IL_0044

    IL_003b:  ldarg.1
    IL_003c:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::GetEncoding(int32)
    IL_0041:  stloc.0
    IL_0042:  br.s       IL_008d

    IL_0044:  nop
    IL_0045:  ldarg.0
    IL_0046:  newobj     instance void JavaCompiler.Guesser::.ctor(class [mscorlib]System.IO.Stream)
    IL_004b:  call       instance int32 JavaCompiler.Guesser::GuessCodePage()
    IL_0050:  stloc.s    guess
    IL_0052:  ldarg.0
    IL_0053:  ldc.i4.0
    IL_0054:  conv.i8
    IL_0055:  ldc.i4.0
    IL_0056:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_005b:  pop
    IL_005c:  ldloc.s    guess
    IL_005e:  ldc.i4.m1
    IL_005f:  ceq
    IL_0061:  stloc.s    V_8
    IL_0063:  ldloc.s    V_8
    IL_0065:  brfalse.s  IL_006f

    IL_0067:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
    IL_006c:  stloc.0
    IL_006d:  br.s       IL_008c

    IL_006f:  ldloc.s    guess
    IL_0071:  ldc.i4     0xfde9
    IL_0076:  ceq
    IL_0078:  stloc.s    V_9
    IL_007a:  ldloc.s    V_9
    IL_007c:  brfalse.s  IL_0086

    IL_007e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0083:  stloc.0
    IL_0084:  br.s       IL_008c

    IL_0086:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Default()
    IL_008b:  stloc.0
    IL_008c:  nop
    IL_008d:  ldarg.0
    IL_008e:  ldloc.0
    IL_008f:  newobj     instance void [mscorlib]System.IO.StreamReader::.ctor(class [mscorlib]System.IO.Stream,
                                                                               class [mscorlib]System.Text.Encoding)
    IL_0094:  stloc.2
    IL_0095:  ldloc.2
    IL_0096:  dup
    IL_0097:  ldvirtftn  instance int32 [mscorlib]System.IO.TextReader::Read(char[],
                                                                             int32,
                                                                             int32)
    IL_009d:  newobj     instance void JavaCompiler.BlockReader::.ctor(object,
                                                                       native int)
    IL_00a2:  stloc.s    V_5
    IL_00a4:  br.s       IL_00a6

    IL_00a6:  ldloc.s    V_5
    IL_00a8:  ret
  } // end of method BlockReaderFactory::Get

  .method private hidebysig static int32 
          Preamble(class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // Code size       148 (0x94)
    .maxstack  3
    .locals init ([0] int32 b0,
             [1] int32 b1,
             [2] int32 b2,
             [3] bool V_3,
             [4] int32 V_4,
             [5] bool V_5,
             [6] bool V_6)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance int32 [mscorlib]System.IO.Stream::ReadByte()
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance int32 [mscorlib]System.IO.Stream::ReadByte()
    IL_000e:  stloc.1
    IL_000f:  ldloc.0
    IL_0010:  ldc.i4     0xfe
    IL_0015:  bne.un.s   IL_0021

    IL_0017:  ldloc.1
    IL_0018:  ldc.i4     0xff
    IL_001d:  ceq
    IL_001f:  br.s       IL_0022

    IL_0021:  ldc.i4.0
    IL_0022:  stloc.3
    IL_0023:  ldloc.3
    IL_0024:  brfalse.s  IL_002f

    IL_0026:  ldc.i4     0x4b1
    IL_002b:  stloc.s    V_4
    IL_002d:  br.s       IL_0091

    IL_002f:  ldloc.0
    IL_0030:  ldc.i4     0xff
    IL_0035:  bne.un.s   IL_0041

    IL_0037:  ldloc.1
    IL_0038:  ldc.i4     0xfe
    IL_003d:  ceq
    IL_003f:  br.s       IL_0042

    IL_0041:  ldc.i4.0
    IL_0042:  stloc.s    V_5
    IL_0044:  ldloc.s    V_5
    IL_0046:  brfalse.s  IL_0051

    IL_0048:  ldc.i4     0x4b0
    IL_004d:  stloc.s    V_4
    IL_004f:  br.s       IL_0091

    IL_0051:  ldarg.0
    IL_0052:  callvirt   instance int32 [mscorlib]System.IO.Stream::ReadByte()
    IL_0057:  stloc.2
    IL_0058:  ldloc.0
    IL_0059:  ldc.i4     0xef
    IL_005e:  bne.un.s   IL_0072

    IL_0060:  ldloc.1
    IL_0061:  ldc.i4     0xbb
    IL_0066:  bne.un.s   IL_0072

    IL_0068:  ldloc.2
    IL_0069:  ldc.i4     0xbf
    IL_006e:  ceq
    IL_0070:  br.s       IL_0073

    IL_0072:  ldc.i4.0
    IL_0073:  stloc.s    V_6
    IL_0075:  ldloc.s    V_6
    IL_0077:  brfalse.s  IL_0082

    IL_0079:  ldc.i4     0xfde9
    IL_007e:  stloc.s    V_4
    IL_0080:  br.s       IL_0091

    IL_0082:  ldarg.0
    IL_0083:  ldc.i4.0
    IL_0084:  conv.i8
    IL_0085:  ldc.i4.0
    IL_0086:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_008b:  pop
    IL_008c:  ldc.i4.0
    IL_008d:  stloc.s    V_4
    IL_008f:  br.s       IL_0091

    IL_0091:  ldloc.s    V_4
    IL_0093:  ret
  } // end of method BlockReaderFactory::Preamble

} // end of class JavaCompiler.BlockReaderFactory

.class public abstract auto ansi sealed beforefieldinit JavaCompiler.CodePageHandling
       extends [mscorlib]System.Object
{
  .method public hidebysig static int32  GetCodePage(string option) cil managed
  {
    // Code size       201 (0xc9)
    .maxstack  3
    .locals init ([0] string command,
             [1] bool V_1,
             [2] bool V_2,
             [3] int32 V_3,
             [4] bool V_4,
             [5] bool V_5,
             [6] bool V_6,
             [7] class [mscorlib]System.Text.Encoding enc)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance string [mscorlib]System.String::ToUpperInvariant()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldstr      "CodePage:"
    IL_000e:  ldc.i4.5
    IL_000f:  callvirt   instance bool [mscorlib]System.String::StartsWith(string,
                                                                           valuetype [mscorlib]System.StringComparison)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brfalse.s  IL_0021

    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.s   9
    IL_001b:  callvirt   instance string [mscorlib]System.String::Substring(int32)
    IL_0020:  stloc.0
    IL_0021:  nop
    .try
    {
      IL_0022:  nop
      IL_0023:  ldloc.0
      IL_0024:  ldstr      "RAW"
      IL_0029:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_002e:  stloc.2
      IL_002f:  ldloc.2
      IL_0030:  brfalse.s  IL_0039

      IL_0032:  ldc.i4.m1
      IL_0033:  stloc.3
      IL_0034:  leave      IL_00c7

      IL_0039:  ldloc.0
      IL_003a:  ldstr      "GUESS"
      IL_003f:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_0044:  stloc.s    V_4
      IL_0046:  ldloc.s    V_4
      IL_0048:  brfalse.s  IL_004f

      IL_004a:  ldc.i4.s   -2
      IL_004c:  stloc.3
      IL_004d:  leave.s    IL_00c7

      IL_004f:  ldloc.0
      IL_0050:  ldstr      "DEFAULT"
      IL_0055:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_005a:  stloc.s    V_5
      IL_005c:  ldloc.s    V_5
      IL_005e:  brfalse.s  IL_0064

      IL_0060:  ldc.i4.0
      IL_0061:  stloc.3
      IL_0062:  leave.s    IL_00c7

      IL_0064:  ldloc.0
      IL_0065:  ldc.i4.0
      IL_0066:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
      IL_006b:  call       bool [mscorlib]System.Char::IsDigit(char)
      IL_0070:  stloc.s    V_6
      IL_0072:  ldloc.s    V_6
      IL_0074:  brfalse.s  IL_0084

      IL_0076:  ldloc.0
      IL_0077:  call       class [mscorlib]System.Globalization.CultureInfo [mscorlib]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_007c:  call       int32 [mscorlib]System.Int32::Parse(string,
                                                               class [mscorlib]System.IFormatProvider)
      IL_0081:  stloc.3
      IL_0082:  leave.s    IL_00c7

      IL_0084:  nop
      IL_0085:  ldloc.0
      IL_0086:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::GetEncoding(string)
      IL_008b:  stloc.s    enc
      IL_008d:  ldloc.s    enc
      IL_008f:  callvirt   instance int32 [mscorlib]System.Text.Encoding::get_CodePage()
      IL_0094:  stloc.3
      IL_0095:  leave.s    IL_00c7

    }  // end .try
    catch [mscorlib]System.FormatException 
    {
      IL_0097:  pop
      IL_0098:  nop
      IL_0099:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
      IL_009e:  ldstr      "Invalid format \"{0}\", using machine default"
      IL_00a3:  ldarg.0
      IL_00a4:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                   object)
      IL_00a9:  nop
      IL_00aa:  nop
      IL_00ab:  leave.s    IL_00c3

    }  // end handler
    catch [mscorlib]System.ArgumentException 
    {
      IL_00ad:  pop
      IL_00ae:  nop
      IL_00af:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
      IL_00b4:  ldstr      "Unknown code page \"{0}\", using machine default"
      IL_00b9:  ldarg.0
      IL_00ba:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string,
                                                                                   object)
      IL_00bf:  nop
      IL_00c0:  nop
      IL_00c1:  leave.s    IL_00c3

    }  // end handler
    IL_00c3:  ldc.i4.0
    IL_00c4:  stloc.3
    IL_00c5:  br.s       IL_00c7

    IL_00c7:  ldloc.3
    IL_00c8:  ret
  } // end of method CodePageHandling::GetCodePage

} // end of class JavaCompiler.CodePageHandling

.class private auto ansi JavaCompiler.Guesser
       extends [mscorlib]System.Object
{
  .field private class JavaCompiler.ScanBuff buffer
  .field private static literal int32 maxAccept = int32(0x0000000A)
  .field private static literal int32 initial = int32(0x00000000)
  .field private static literal int32 eofNum = int32(0x00000000)
  .field private static literal int32 goStart = int32(0xFFFFFFFF)
  .field private static literal int32 INITIAL = int32(0x00000000)
  .field private static literal int32 EndToken = int32(0x00000000)
  .field public int64 utfX
  .field public int64 uppr
  .field private int32 state
  .field private int32 currentStart
  .field private int32 code
  .field private static int32[] startState
  .field private static int8[] map
  .field private static int8[][] nextState
  .method public hidebysig instance int32 
          GuessCodePage() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 JavaCompiler.Guesser::Scan()
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Guesser::GuessCodePage

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       270 (0x10e)
    .maxstack  6
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [mscorlib]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   11
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] JavaCompiler.Guesser::startState
    IL_0010:  ldc.i4     0x100
    IL_0015:  newarr     [mscorlib]System.SByte
    IL_001a:  dup
    IL_001b:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=256' '<PrivateImplementationDetails>'::'2F8CC4A68242A3A70A38752677E774A04A5F31EA'
    IL_0020:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0025:  stsfld     int8[] JavaCompiler.Guesser::map
    IL_002a:  ldc.i4.s   12
    IL_002c:  newarr     int8[]
    IL_0031:  dup
    IL_0032:  ldc.i4.0
    IL_0033:  ldc.i4.6
    IL_0034:  newarr     [mscorlib]System.SByte
    IL_0039:  stelem.ref
    IL_003a:  dup
    IL_003b:  ldc.i4.1
    IL_003c:  ldc.i4.6
    IL_003d:  newarr     [mscorlib]System.SByte
    IL_0042:  dup
    IL_0043:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::D609489F345E409E5F3D812978AA8654E2F3597E
    IL_0048:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_004d:  stelem.ref
    IL_004e:  dup
    IL_004f:  ldc.i4.2
    IL_0050:  ldc.i4.6
    IL_0051:  newarr     [mscorlib]System.SByte
    IL_0056:  dup
    IL_0057:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::CD5219D05795AB7E5A131BA932A38972BD0C05BF
    IL_005c:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.3
    IL_0064:  ldc.i4.6
    IL_0065:  newarr     [mscorlib]System.SByte
    IL_006a:  dup
    IL_006b:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'94AC727E10A815526C1A7EADB11E3A9A3A94B163'
    IL_0070:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.4
    IL_0078:  ldc.i4.6
    IL_0079:  newarr     [mscorlib]System.SByte
    IL_007e:  dup
    IL_007f:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::F0625F7BE9E0E4982766981702DC5FBD7B244EFA
    IL_0084:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0089:  stelem.ref
    IL_008a:  dup
    IL_008b:  ldc.i4.5
    IL_008c:  ldc.i4.6
    IL_008d:  newarr     [mscorlib]System.SByte
    IL_0092:  dup
    IL_0093:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'166D4D6A30A9558DE734CA62A438D657BEDD7EA8'
    IL_0098:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_009d:  stelem.ref
    IL_009e:  dup
    IL_009f:  ldc.i4.6
    IL_00a0:  ldc.i4.6
    IL_00a1:  newarr     [mscorlib]System.SByte
    IL_00a6:  dup
    IL_00a7:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'32082432B305F2759B0806874EFFB9E51D3F9FFC'
    IL_00ac:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00b1:  stelem.ref
    IL_00b2:  dup
    IL_00b3:  ldc.i4.8
    IL_00b4:  ldc.i4.6
    IL_00b5:  newarr     [mscorlib]System.SByte
    IL_00ba:  dup
    IL_00bb:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'1A9091F1E329E16ACA54C76A377103F032BCFE1A'
    IL_00c0:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00c5:  stelem.ref
    IL_00c6:  dup
    IL_00c7:  ldc.i4.s   11
    IL_00c9:  ldc.i4.6
    IL_00ca:  newarr     [mscorlib]System.SByte
    IL_00cf:  dup
    IL_00d0:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'1C20763FED8A95AB5F331035EACE0A4DD90CF306'
    IL_00d5:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_00da:  stelem.ref
    IL_00db:  stsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_00e0:  nop
    IL_00e1:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_00e6:  ldc.i4.7
    IL_00e7:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_00ec:  ldc.i4.2
    IL_00ed:  ldelem.ref
    IL_00ee:  stelem.ref
    IL_00ef:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_00f4:  ldc.i4.s   9
    IL_00f6:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_00fb:  ldc.i4.2
    IL_00fc:  ldelem.ref
    IL_00fd:  stelem.ref
    IL_00fe:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_0103:  ldc.i4.s   10
    IL_0105:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_010a:  ldc.i4.2
    IL_010b:  ldelem.ref
    IL_010c:  stelem.ref
    IL_010d:  ret
  } // end of method Guesser::.cctor

  .method private hidebysig instance int32 
          NextState() cil managed
  {
    // Code size       48 (0x30)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] int32 V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 JavaCompiler.Guesser::code
    IL_0007:  ldc.i4.m1
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0012

    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_002e

    IL_0012:  ldsfld     int8[][] JavaCompiler.Guesser::nextState
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 JavaCompiler.Guesser::state
    IL_001d:  ldelem.ref
    IL_001e:  ldsfld     int8[] JavaCompiler.Guesser::map
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 JavaCompiler.Guesser::code
    IL_0029:  ldelem.i1
    IL_002a:  ldelem.i1
    IL_002b:  stloc.1
    IL_002c:  br.s       IL_002e

    IL_002e:  ldloc.1
    IL_002f:  ret
  } // end of method Guesser::NextState

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.IO.Stream file) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     int32[] JavaCompiler.Guesser::startState
    IL_0006:  ldc.i4.0
    IL_0007:  ldelem.i4
    IL_0008:  stfld      int32 JavaCompiler.Guesser::currentStart
    IL_000d:  ldarg.0
    IL_000e:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0013:  nop
    IL_0014:  nop
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance void JavaCompiler.Guesser::SetSource(class [mscorlib]System.IO.Stream)
    IL_001c:  nop
    IL_001d:  ret
  } // end of method Guesser::.ctor

  .method public hidebysig instance void 
          SetSource(class [mscorlib]System.IO.Stream source) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  newobj     instance void JavaCompiler.BuildBuffer::.ctor(class [mscorlib]System.IO.Stream)
    IL_0008:  stfld      class JavaCompiler.ScanBuff JavaCompiler.Guesser::buffer
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Guesser::buffer
    IL_0014:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0019:  stfld      int32 JavaCompiler.Guesser::code
    IL_001e:  ret
  } // end of method Guesser::SetSource

  .method private hidebysig instance int32 
          Scan() cil managed
  {
    // Code size       439 (0x1b7)
    .maxstack  3
    .locals init ([0] int32 next,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] int32 V_4,
             [5] int32 V_5,
             [6] bool V_6,
             [7] int32 V_7,
             [8] bool V_8)
    IL_0000:  nop
    IL_0001:  br         IL_01af

    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      int32 JavaCompiler.Guesser::currentStart
    IL_000e:  stfld      int32 JavaCompiler.Guesser::state
    IL_0013:  br.s       IL_0026

    IL_0015:  ldarg.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Guesser::buffer
    IL_001c:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0021:  stfld      int32 JavaCompiler.Guesser::code
    IL_0026:  ldarg.0
    IL_0027:  call       instance int32 JavaCompiler.Guesser::NextState()
    IL_002c:  dup
    IL_002d:  stloc.0
    IL_002e:  ldc.i4.m1
    IL_002f:  ceq
    IL_0031:  stloc.1
    IL_0032:  ldloc.1
    IL_0033:  brtrue.s   IL_0015

    IL_0035:  ldarg.0
    IL_0036:  ldloc.0
    IL_0037:  stfld      int32 JavaCompiler.Guesser::state
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Guesser::buffer
    IL_0043:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0048:  stfld      int32 JavaCompiler.Guesser::code
    IL_004d:  br.s       IL_0069

    IL_004f:  nop
    IL_0050:  ldarg.0
    IL_0051:  ldloc.0
    IL_0052:  stfld      int32 JavaCompiler.Guesser::state
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class JavaCompiler.ScanBuff JavaCompiler.Guesser::buffer
    IL_005e:  callvirt   instance int32 JavaCompiler.ScanBuff::Read()
    IL_0063:  stfld      int32 JavaCompiler.Guesser::code
    IL_0068:  nop
    IL_0069:  ldarg.0
    IL_006a:  call       instance int32 JavaCompiler.Guesser::NextState()
    IL_006f:  dup
    IL_0070:  stloc.0
    IL_0071:  ldc.i4.0
    IL_0072:  cgt
    IL_0074:  stloc.2
    IL_0075:  ldloc.2
    IL_0076:  brtrue.s   IL_004f

    IL_0078:  ldarg.0
    IL_0079:  ldfld      int32 JavaCompiler.Guesser::state
    IL_007e:  ldc.i4.s   10
    IL_0080:  cgt
    IL_0082:  ldc.i4.0
    IL_0083:  ceq
    IL_0085:  stloc.3
    IL_0086:  ldloc.3
    IL_0087:  brfalse    IL_01ae

    IL_008c:  nop
    IL_008d:  ldarg.0
    IL_008e:  ldfld      int32 JavaCompiler.Guesser::state
    IL_0093:  stloc.s    V_4
    IL_0095:  ldloc.s    V_4
    IL_0097:  switch     ( 
                          IL_00cd,
                          IL_0134,
                          IL_0134,
                          IL_0134,
                          IL_0134,
                          IL_0145,
                          IL_0156,
                          IL_0167,
                          IL_0178,
                          IL_0189,
                          IL_019a)
    IL_00c8:  br         IL_01ab

    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      int32 JavaCompiler.Guesser::currentStart
    IL_00d3:  stloc.s    V_5
    IL_00d5:  ldloc.s    V_5
    IL_00d7:  ldc.i4.s   11
    IL_00d9:  beq.s      IL_00dd

    IL_00db:  br.s       IL_012c

    IL_00dd:  ldarg.0
    IL_00de:  ldfld      int64 JavaCompiler.Guesser::utfX
    IL_00e3:  brtrue.s   IL_00f1

    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_00eb:  ldc.i4.0
    IL_00ec:  conv.i8
    IL_00ed:  ceq
    IL_00ef:  br.s       IL_00f2

    IL_00f1:  ldc.i4.0
    IL_00f2:  stloc.s    V_6
    IL_00f4:  ldloc.s    V_6
    IL_00f6:  brfalse.s  IL_0100

    IL_00f8:  ldc.i4.m1
    IL_00f9:  stloc.s    V_7
    IL_00fb:  br         IL_01b4

    IL_0100:  ldarg.0
    IL_0101:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_0106:  ldc.i4.s   10
    IL_0108:  conv.i8
    IL_0109:  mul
    IL_010a:  ldarg.0
    IL_010b:  ldfld      int64 JavaCompiler.Guesser::utfX
    IL_0110:  cgt
    IL_0112:  stloc.s    V_8
    IL_0114:  ldloc.s    V_8
    IL_0116:  brfalse.s  IL_0120

    IL_0118:  ldc.i4.0
    IL_0119:  stloc.s    V_7
    IL_011b:  br         IL_01b4

    IL_0120:  ldc.i4     0xfde9
    IL_0125:  stloc.s    V_7
    IL_0127:  br         IL_01b4

    IL_012c:  ldc.i4.0
    IL_012d:  stloc.s    V_7
    IL_012f:  br         IL_01b4

    IL_0134:  ldarg.0
    IL_0135:  ldarg.0
    IL_0136:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_013b:  ldc.i4.1
    IL_013c:  conv.i8
    IL_013d:  add
    IL_013e:  stfld      int64 JavaCompiler.Guesser::uppr
    IL_0143:  br.s       IL_01ad

    IL_0145:  ldarg.0
    IL_0146:  ldarg.0
    IL_0147:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_014c:  ldc.i4.2
    IL_014d:  conv.i8
    IL_014e:  add
    IL_014f:  stfld      int64 JavaCompiler.Guesser::uppr
    IL_0154:  br.s       IL_01ad

    IL_0156:  ldarg.0
    IL_0157:  ldarg.0
    IL_0158:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_015d:  ldc.i4.3
    IL_015e:  conv.i8
    IL_015f:  add
    IL_0160:  stfld      int64 JavaCompiler.Guesser::uppr
    IL_0165:  br.s       IL_01ad

    IL_0167:  ldarg.0
    IL_0168:  ldarg.0
    IL_0169:  ldfld      int64 JavaCompiler.Guesser::utfX
    IL_016e:  ldc.i4.3
    IL_016f:  conv.i8
    IL_0170:  add
    IL_0171:  stfld      int64 JavaCompiler.Guesser::utfX
    IL_0176:  br.s       IL_01ad

    IL_0178:  ldarg.0
    IL_0179:  ldarg.0
    IL_017a:  ldfld      int64 JavaCompiler.Guesser::uppr
    IL_017f:  ldc.i4.2
    IL_0180:  conv.i8
    IL_0181:  add
    IL_0182:  stfld      int64 JavaCompiler.Guesser::uppr
    IL_0187:  br.s       IL_01ad

    IL_0189:  ldarg.0
    IL_018a:  ldarg.0
    IL_018b:  ldfld      int64 JavaCompiler.Guesser::utfX
    IL_0190:  ldc.i4.2
    IL_0191:  conv.i8
    IL_0192:  add
    IL_0193:  stfld      int64 JavaCompiler.Guesser::utfX
    IL_0198:  br.s       IL_01ad

    IL_019a:  ldarg.0
    IL_019b:  ldarg.0
    IL_019c:  ldfld      int64 JavaCompiler.Guesser::utfX
    IL_01a1:  ldc.i4.1
    IL_01a2:  conv.i8
    IL_01a3:  add
    IL_01a4:  stfld      int64 JavaCompiler.Guesser::utfX
    IL_01a9:  br.s       IL_01ad

    IL_01ab:  br.s       IL_01ad

    IL_01ad:  nop
    IL_01ae:  nop
    IL_01af:  br         IL_0006

    IL_01b4:  ldloc.s    V_7
    IL_01b6:  ret
  } // end of method Guesser::Scan

} // end of class JavaCompiler.Guesser

.class public abstract auto ansi beforefieldinit JavaCompiler.Type
       extends JavaCompiler.Node
{
  .method public hidebysig instance bool 
          Compatible(class JavaCompiler.Type other) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance bool JavaCompiler.Type::Equal(class JavaCompiler.Type)
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method Type::Compatible

  .method public hidebysig newslot abstract virtual 
          instance string  GetTypeName() cil managed
  {
  } // end of method Type::GetTypeName

  .method public hidebysig newslot abstract virtual 
          instance bool  Equal(class JavaCompiler.Type other) cil managed
  {
  } // end of method Type::Equal

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JavaCompiler.Node::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Type::.ctor

} // end of class JavaCompiler.Type

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=6'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 6
  } // end of class '__StaticArrayInitTypeSize=6'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=12'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 12
  } // end of class '__StaticArrayInitTypeSize=12'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=16'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 16
  } // end of class '__StaticArrayInitTypeSize=16'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=18'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 18
  } // end of class '__StaticArrayInitTypeSize=18'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=24'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 24
  } // end of class '__StaticArrayInitTypeSize=24'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=28'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 28
  } // end of class '__StaticArrayInitTypeSize=28'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=32'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 32
  } // end of class '__StaticArrayInitTypeSize=32'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=40'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 40
  } // end of class '__StaticArrayInitTypeSize=40'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=41'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 41
  } // end of class '__StaticArrayInitTypeSize=41'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=64'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 64
  } // end of class '__StaticArrayInitTypeSize=64'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=80'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 80
  } // end of class '__StaticArrayInitTypeSize=80'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=127'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 127
  } // end of class '__StaticArrayInitTypeSize=127'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=256'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 256
  } // end of class '__StaticArrayInitTypeSize=256'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '04EDF8D01342FF2BE21ACDF644D47B6B699F2640' at I_0000C218
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '0D736771679D0E9FE28137E2C21470F3A33877F4' at I_0000C238
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '166D4D6A30A9558DE734CA62A438D657BEDD7EA8' at I_0000C250
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '1A9091F1E329E16ACA54C76A377103F032BCFE1A' at I_0000C258
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '1C13440DA2078262FAAD9D59395C3DE89C1A48E0' at I_0000C260
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '1C20763FED8A95AB5F331035EACE0A4DD90CF306' at I_0000C278
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '1CA3B51A5E3D60BCE091E1A17F5E4A408A6135A1' at I_0000C280
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '1E0415EC6B7D5BD87FF3A85EA4780B80D1B29CC8' at I_0000C298
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '22A0F58379C1A7E7460957E7A67D15131967BAD7' at I_0000C2A8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '282C6DE3D86E2A4342193D2B7F85A624B39F05AE' at I_0000C2B8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=256' '2F8CC4A68242A3A70A38752677E774A04A5F31EA' at I_0000C2C8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '32082432B305F2759B0806874EFFB9E51D3F9FFC' at I_0000C3C8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '425B330B5B4E0336A06572C6BEC36747C8480C0E' at I_0000C3D0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '42E3BCE12E100DBED988E4BEAD40C0AF3FE862EA' at I_0000C3E8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '4AF742FE1255C7637F7BB2B35C73048AEB2B63D5' at I_0000C428
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '4D6DFDD3971F577B2EB2A40DEAA5A18CB557019B' at I_0000C438
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '514E28B9D34E59B60483B7DACDFFC8B7B208B240' at I_0000C448
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '51D3CD1F5361AEA05770A6302B42C1BEFD932F4B' at I_0000C460
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '52BF7C0C49BEDD087654D42A70AD05039FC55AE3' at I_0000C478
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '55EBB986CDD9CDDA6E6B06882C98A56B57A873AC' at I_0000C490
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '63376406292A5DFA576F3E51A8F4819110E5DA5F' at I_0000C4A8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '6663FE421E05E19E11F210E3F5BDCA5D4E471A1E' at I_0000C4C0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '69BF9741111E6425D69C1742989B6738123EEC4D' at I_0000C4D0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '70A3E4F2CAD914097FFA614DCB5B7C54CDC42C37' at I_0000C4E8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '71654E23EBE28EF663F1329BC660A4B0465F42DA' at I_0000C528
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=28' '75CD11FA324D766851CA731DD9D1793E6CDE3145' at I_0000C540
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '7CCB833282C9B6E947C892544B30E47B9EE8E05A' at I_0000C560
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '7CF4D40D2981482799E8B8BA75C5BDA7E996AB88' at I_0000C570
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '80B896F488188EE0BB10A1121D1A617632E993CB' at I_0000C580
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '832657139EF8EEB638B3EEB19D8E8034603941AB' at I_0000C590
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=80' '86BCB8BB10E3DEC944DEE89D7ABD12B563F9D037' at I_0000C5A8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '94AC727E10A815526C1A7EADB11E3A9A3A94B163' at I_0000C5F8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' '954A29F46B89F7C337DF2219D21C184BF93E0CA7' at I_0000C600
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '977B202400AE6A7BFF63D07CBFD4DD66514E9272' at I_0000C618
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=41' A09AF51887A0D8B0138589F54042D23D35D9CF63 at I_0000C628
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' A1F34BB1DB54FC708F2F236D9312281B1BAB49C3 at I_0000C658
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' A4A78754227166FB211195B76DB474D14C776DFB at I_0000C670
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' AED23D133C4E7786D2B529A1BEFCD3B284CEDE3A at I_0000C688
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' AF25B75388232B0E0ED839B3041F4B8361588371 at I_0000C6A0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' B2A158CA51AD493917F3155B46057E61D7181784 at I_0000C6B0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' B2CAC0C39642285D8F264297961602A916A7E2E7 at I_0000C6C0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' B58C90035CB06D523DB96990B500B99753ABDFFE at I_0000C6D8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' B5B4FEB58FE6EBE2242AD019CCD0E57F8ADB7486 at I_0000C6F0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' B62EAD6F93AB829D2BBCF5EDA0A6CDCED9B6E1E1 at I_0000C708
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' B696995357AF5A800EFA12D6A54A821115D1987A at I_0000C730
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' B6C1CF86FE3B98691E9802526A1D0791E8CD0188 at I_0000C740
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' C2D31722E50C02855135F3A5C184AD66D33F456E at I_0000C758
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' C63F2B9B9BA188CA897BAE08ADC25AB033BAA7B4 at I_0000C768
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' CB401B2ED02DD97FF68009C8ED492ED85C916C2D at I_0000C780
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' CC812D4DCD2A10674D4A4C41ED16D114EA682349 at I_0000C798
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' CD5219D05795AB7E5A131BA932A38972BD0C05BF at I_0000C7B0
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' CDEF00C73C6B9A716905CFC10980C286F8FC3790 at I_0000C7B8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' CEE60A83A9EFF633F451A28320B892E126A291F4 at I_0000C7D8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' D0154107136F45B547C52B5FDA9BDA656D1D4EFC at I_0000C7E8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' D08338B780738581E95BDDCE05C44459ADF6D6BB at I_0000C7F8
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' D609489F345E409E5F3D812978AA8654E2F3597E at I_0000C808
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' DE661ADBEA46EDC77291404523EB1B6E1D75E227 at I_0000C810
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' DEDD51AF0D23CF914D82301DFC470D532F536084 at I_0000C820
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' E2BCF0B0FFEBCCA84A15DF269BAE5BA21A9D4432 at I_0000C838
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' E43995CCB19E6A1A85322C85C14067D346290E73 at I_0000C848
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' ECDF1D5657410567E2DB183C009434DD8DFFBCC9 at I_0000C858
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' F0625F7BE9E0E4982766981702DC5FBD7B244EFA at I_0000C870
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' F0CBB6C582893C7C3E5E373E853ADAF1D0370822 at I_0000C878
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=127' F59EBAE84004ABE77292A61DFE46E8AA32AC16A6 at I_0000C890
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' F831B54CA5DA50A1E942EB5E2D1975FC6217565A at I_0000C910
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=18' F8B8382F2EB45347774E4548FFE258A84F110D00 at I_0000C928
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' FC430569B5A5AD4A1A78A297A073E90497EAE102 at I_0000C940
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_0000C218 = bytearray (
                 ED FF FF FF 46 00 00 00 E2 FF FF FF 47 00 00 00  // ....F.......G...
                 E3 FF FF FF 32 00 00 00 D8 FF FF FF 34 00 00 00) // ....2.......4...
.data cil I_0000C238 = bytearray (
                 E2 FF FF FF 33 00 00 00 E3 FF FF FF 32 00 00 00  // ....3.......2...
                 D8 FF FF FF 34 00 00 00)                         // ....4...
.data cil I_0000C250 = bytearray (
                 FF FF 06 FF FF FF) 
.data cil I_0000C256 = int8[2]
.data cil I_0000C258 = bytearray (
                 FF FF 09 FF FF FF) 
.data cil I_0000C25E = int8[2]
.data cil I_0000C260 = bytearray (
                 29 00 00 00 45 00 00 00 87 00 00 00 FD FF FF FF  // )...E...........
                 82 00 00 00 FD FF FF FF) 
.data cil I_0000C278 = bytearray (
                 FF 01 02 03 04 02) 
.data cil I_0000C27E = int8[2]
.data cil I_0000C280 = bytearray (
                 03 03 FF FF FF 03 03 2F 03 03 03 03 03 03 03 03  // ......./........
                 03 03) 
.data cil I_0000C292 = int8[6]
.data cil I_0000C298 = bytearray (
                 86 00 00 00 F1 FF FF FF 7D 00 00 00 F5 FF FF FF) // ........}.......
.data cil I_0000C2A8 = bytearray (
                 F3 FF FF FF 14 00 00 00 D8 FF FF FF 3F 00 00 00) // ............?...
.data cil I_0000C2B8 = bytearray (
                 EC FF FF FF 44 00 00 00 D8 FF FF FF 4A 00 00 00) // ....D.......J...
.data cil I_0000C2C8 = bytearray (
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02
                 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02
                 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02
                 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02
                 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01
                 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01
                 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03 03
                 04 04 04 04 04 04 04 04 05 05 05 05 05 05 05 05) 
.data cil I_0000C3C8 = bytearray (
                 FF FF 07 FF FF FF) 
.data cil I_0000C3CE = int8[2]
.data cil I_0000C3D0 = bytearray (
                 7D 00 00 00 15 00 00 00 82 00 00 00 3E 00 00 00  // }...........>...
                 87 00 00 00 FD FF FF FF) 
.data cil I_0000C3E8 = bytearray (
                 EB FF FF FF 48 00 00 00 EA FF FF FF 1F 00 00 00  // ....H...........
                 E8 FF FF FF 20 00 00 00 E7 FF FF FF 21 00 00 00  // .... .......!...
                 E9 FF FF FF 23 00 00 00 E4 FF FF FF 24 00 00 00  // ....#.......$...
                 E6 FF FF FF 2D 00 00 00 E5 FF FF FF 31 00 00 00) // ....-.......1...
.data cil I_0000C428 = bytearray (
                 EF FF FF FF 11 00 00 00 F0 FF FF FF 12 00 00 00) 
.data cil I_0000C438 = bytearray (
                 F1 FF FF FF 10 00 00 00 F8 FF FF FF 40 00 00 00) // ............@...
.data cil I_0000C448 = bytearray (
                 03 03 FF FF FF 03 03 03 36 03 03 03 03 03 03 03  // ........6.......
                 03 03) 
.data cil I_0000C45A = int8[6]
.data cil I_0000C460 = bytearray (
                 83 00 00 00 4E 00 00 00 85 00 00 00 4F 00 00 00  // ....N.......O...
                 86 00 00 00 FD FF FF FF) 
.data cil I_0000C478 = bytearray (
                 03 03 FF FF FF 03 03 34 03 03 03 03 03 03 03 03  // .......4........
                 03 03) 
.data cil I_0000C48A = int8[6]
.data cil I_0000C490 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 03 03 03 03 03
                 03 26)                                           // .&
.data cil I_0000C4A2 = int8[6]
.data cil I_0000C4A8 = bytearray (
                 03 03 FF FF FF 03 03 03 03 25 03 03 03 03 03 03  // .........%......
                 03 03) 
.data cil I_0000C4BA = int8[6]
.data cil I_0000C4C0 = bytearray (
                 E2 FF FF FF EB FF FF FF DC FF FF FF) 
.data cil I_0000C4CC = int8[4]
.data cil I_0000C4D0 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 03 03 03 03 03
                 03 03) 
.data cil I_0000C4E2 = int8[6]
.data cil I_0000C4E8 = bytearray (
                 EB FF FF FF 1B 00 00 00 EA FF FF FF 1F 00 00 00
                 E8 FF FF FF 20 00 00 00 E7 FF FF FF 21 00 00 00  // .... .......!...
                 E9 FF FF FF 23 00 00 00 E4 FF FF FF 24 00 00 00  // ....#.......$...
                 E6 FF FF FF 2D 00 00 00 E5 FF FF FF 31 00 00 00) // ....-.......1...
.data cil I_0000C528 = bytearray (
                 03 03 FF FF FF 2B 03 03 03 03 03 03 03 03 03 03  // .....+..........
                 03 03) 
.data cil I_0000C53A = int8[6]
.data cil I_0000C540 = bytearray (
                 FC FF FF FF 84 00 00 00 82 00 00 00 D7 FF FF FF
                 7B 00 00 00 FB FF FF FF 7D 00 00 00)             // {.......}...
.data cil I_0000C55C = int8[4]
.data cil I_0000C560 = bytearray (
                 D9 FF FF FF 04 00 00 00 D8 FF FF FF 54 00 00 00) // ............T...
.data cil I_0000C570 = bytearray (
                 D7 FF FF FF 0A 00 00 00 D8 FF FF FF 52 00 00 00) // ............R...
.data cil I_0000C580 = bytearray (
                 87 00 00 00 22 00 00 00 82 00 00 00 2E 00 00 00) // ...."...........
.data cil I_0000C590 = bytearray (
                 D6 FF FF FF 25 00 00 00 D5 FF FF FF 26 00 00 00  // ....%.......&...
                 D8 FF FF FF 2C 00 00 00)                         // ....,...
.data cil I_0000C5A8 = bytearray (
                 F7 FF FF FF 16 00 00 00 F6 FF FF FF 17 00 00 00
                 DE FF FF FF 18 00 00 00 E2 FF FF FF 1A 00 00 00
                 E3 FF FF FF 32 00 00 00 D8 FF FF FF 34 00 00 00  // ....2.......4...
                 F4 FF FF FF 35 00 00 00 F5 FF FF FF 36 00 00 00  // ....5.......6...
                 E1 FF FF FF 37 00 00 00 DF FF FF FF 39 00 00 00) // ....7.......9...
.data cil I_0000C5F8 = bytearray (
                 FF FF 08 FF FF FF) 
.data cil I_0000C5FE = int8[2]
.data cil I_0000C600 = bytearray (
                 03 03 FF FF FF 32 03 03 03 03 03 03 03 03 03 03  // .....2..........
                 03 03) 
.data cil I_0000C612 = int8[6]
.data cil I_0000C618 = bytearray (
                 DF FF FF FF D2 FF FF FF E0 FF FF FF) 
.data cil I_0000C624 = int8[4]
.data cil I_0000C628 = bytearray (
                 04 05 03 03 06 03 03 07 03 03 08 09 0A 0B 0C 0D
                 0E 0F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D
                 1E 1F 20 03 21 22 23 01 02)                      // .. .!"#..
.data cil I_0000C651 = int8[7]
.data cil I_0000C658 = bytearray (
                 EE FF FF FF 4D 00 00 00 FA FF FF FF 4C 00 00 00  // ....M.......L...
                 D8 FF FF FF 50 00 00 00)                         // ....P...
.data cil I_0000C670 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 2E 03 03 03 03  // ................
                 03 03) 
.data cil I_0000C682 = int8[6]
.data cil I_0000C688 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 2C 03 03 03 03 03  // ..........,.....
                 03 03) 
.data cil I_0000C69A = int8[6]
.data cil I_0000C6A0 = bytearray (
                 DC FF FF FF 1C 00 00 00 DD FF FF FF 1D 00 00 00) 
.data cil I_0000C6B0 = bytearray (
                 7B 00 00 00 F3 FF FF FF 7D 00 00 00)             // {.......}...
.data cil I_0000C6BC = int8[4]
.data cil I_0000C6C0 = bytearray (
                 FD FF FF FF 05 00 00 00 FE FF FF FF 06 00 00 00
                 FC FF FF FF 07 00 00 00) 
.data cil I_0000C6D8 = bytearray (
                 FF FF FF FF 01 00 00 00 DA FF FF FF 03 00 00 00
                 D8 FF FF FF 55 00 00 00)                         // ....U...
.data cil I_0000C6F0 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 03 03 03 03 03
                 24 03)                                           // $.
.data cil I_0000C702 = int8[6]
.data cil I_0000C708 = bytearray (
                 FB FF FF FF 0C 00 00 00 F9 FF FF FF 0E 00 00 00
                 EE FF FF FF 0F 00 00 00 FA FF FF FF 4C 00 00 00  // ............L...
                 D8 FF FF FF 51 00 00 00)                         // ....Q...
.data cil I_0000C730 = bytearray (
                 EE FF FF FF F1 FF FF FF EF FF FF FF) 
.data cil I_0000C73C = int8[4]
.data cil I_0000C740 = bytearray (
                 03 03 FF FF FF 03 03 03 03 31 03 03 03 03 03 03  // .........1......
                 03 03) 
.data cil I_0000C752 = int8[6]
.data cil I_0000C758 = bytearray (
                 DA FF FF FF D9 FF FF FF FD FF FF FF) 
.data cil I_0000C764 = int8[4]
.data cil I_0000C768 = bytearray (
                 03 03 FF FF FF 03 03 03 03 2A 03 03 03 03 03 03  // .........*......
                 03 03) 
.data cil I_0000C77A = int8[6]
.data cil I_0000C780 = bytearray (
                 03 03 FF FF FF 03 29 03 03 03 03 03 03 03 03 03  // ......).........
                 03 03) 
.data cil I_0000C792 = int8[6]
.data cil I_0000C798 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 03 03 03 28 03  // ..............(.
                 03 03) 
.data cil I_0000C7AA = int8[6]
.data cil I_0000C7B0 = bytearray (
                 FF FF FF FF FF FF) 
.data cil I_0000C7B6 = int8[2]
.data cil I_0000C7B8 = bytearray (
                 83 00 00 00 4E 00 00 00 85 00 00 00 4F 00 00 00  // ....N.......O...
                 7D 00 00 00 FD FF FF FF 86 00 00 00 FD FF FF FF) // }...............
.data cil I_0000C7D8 = bytearray (
                 82 00 00 00 28 00 00 00 EC FF FF FF 29 00 00 00) // ....(.......)...
.data cil I_0000C7E8 = bytearray (
                 E2 FF FF FF EB FF FF FF DD FF FF FF) 
.data cil I_0000C7F4 = int8[4]
.data cil I_0000C7F8 = bytearray (
                 D3 FF FF FF 2F 00 00 00 D8 FF FF FF 30 00 00 00) // ..../.......0...
.data cil I_0000C808 = bytearray (
                 FF FF 0A FF FF FF) 
.data cil I_0000C80E = int8[2]
.data cil I_0000C810 = bytearray (
                 D5 FF FF FF 5B 00 00 00 5D 00 00 00 D4 FF FF FF) // ....[...].......
.data cil I_0000C820 = bytearray (
                 03 03 FF FF FF 03 03 03 35 03 03 03 03 03 03 03  // ........5.......
                 03 03) 
.data cil I_0000C832 = int8[6]
.data cil I_0000C838 = bytearray (
                 5B 00 00 00 D5 FF FF FF 82 00 00 00 D6 FF FF FF) // [...............
.data cil I_0000C848 = bytearray (
                 82 00 00 00 DB FF FF FF 5B 00 00 00 FD FF FF FF) // ........[.......
.data cil I_0000C858 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 30 03 03 03 03  // ...........0....
                 03 03) 
.data cil I_0000C86A = int8[6]
.data cil I_0000C870 = bytearray (
                 FF FF 05 FF FF FF) 
.data cil I_0000C876 = int8[2]
.data cil I_0000C878 = bytearray (
                 03 03 FF FF FF 03 33 03 03 03 03 03 03 03 03 03  // ......3.........
                 03 03) 
.data cil I_0000C88A = int8[6]
.data cil I_0000C890 = bytearray (
                 00 00 00 00 00 00 00 00 00 2A 29 00 00 2A 00 00  // .........*)..*..
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 2A 1B 00 00 00 26 23 00 0E 0F 21 1F 15 20 16 22  // *....&#...!.. ."
                 28 28 28 28 28 28 28 28 28 28 1E 14 1A 18 19 1D  // ((((((((((......
                 17 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27  // .'''''''''''''''
                 27 27 27 27 27 27 27 27 27 27 27 12 00 13 25 00  // '''''''''''...%.
                 00 03 0A 01 0D 27 27 27 27 05 27 27 02 27 06 0C  // .....''''.''.'..
                 08 27 27 04 07 09 0B 27 27 27 27 10 24 11 1C)    // .''....''''.$..
.data cil I_0000C90F = int8[1]
.data cil I_0000C910 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 2D 03 03 03 03  // ...........-....
                 03 03) 
.data cil I_0000C922 = int8[6]
.data cil I_0000C928 = bytearray (
                 03 03 FF FF FF 03 03 03 03 03 03 03 03 27 03 03  // .............'..
                 03 03) 
.data cil I_0000C93A = int8[6]
.data cil I_0000C940 = bytearray (
                 D4 FF FF FF 29 00 00 00 D6 FF FF FF 2A 00 00 00  // ....).......*...
                 D5 FF FF FF 26 00 00 00 D8 FF FF FF 2B 00 00 00) // ....&.......+...
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Users\Ngoc Tu Pham\Documents\IFN660 Project\GPLexTutorial\bin\Debug\JavaCompiler.res
