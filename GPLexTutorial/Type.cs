using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.IO;

namespace JavaCompiler
{
    public abstract class Type:Node
    {
        public bool Compatible(JavaCompiler.Type other)
        {
            return Equal(other);
        }
        public abstract string GetTypeName();
        public abstract bool Equal(JavaCompiler.Type other);

        }
    }

    public class Intype:JavaCompiler.Type
    {
        public override string GetTypeName() {
        return "int32";
       }


        public bool Compatible(JavaCompiler.Type other)
        {
            return Equal(other);
        }

        public override void CheckType()
            {
            }

        public override bool Equal(JavaCompiler.Type other)
        {
 
        Boolean f = true;
        try
        {
            int b = Convert.ToInt32(other);
        }
        catch {
            f = false;
        }
        return f;
        }

    void Indent(int n)
    {
        for (int i = 0; i < n; i++)
            Console.Write("    ");
    }
    public void DumpValue(int indent) {}
    public override bool ResolveNames(JavaCompiler.LexicalScope scope) {
        return true;
    }
    public override void GenerateCode(StreamWriter stream) { }
}


