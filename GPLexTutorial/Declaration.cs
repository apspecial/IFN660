using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPLexTutorial
{
    public abstract class Declaration
    {
        public abstract Type GetType();
        public abstract string GetName();
        public abstract int GetNumber();

    }
}
