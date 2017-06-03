using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JavaCompiler
{
    public abstract class Type:Node
    {
        public bool Compatible(Type other)
        {
            return Equal(other);
        }
        public abstract string GetTypeName();
        public abstract bool Equal(Type other);
    }
}
