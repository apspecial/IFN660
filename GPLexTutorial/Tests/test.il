.assembly extern mscorlib
{}
.assembly test
{}
.module test
.class public HelloWorld
{
.method static public void main(string[] args)
{
.entrypoint
.maxstack 1
.locals init ([0] int32 x)
ldc.i4.s 42
stloc.0
.locals init ([0] int32 y)
ldc.i4.s 1
stloc.0
ret
}
}
