using System;
using System.Collections.Specialized;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPLexTutorial
{
    public class LexicalScope
    {
        protected LexicalScope parentScope;
        protected Dictionary<string, Declaration> symbol_table;

        public LexicalScope(LexicalScope parentScope)
        {
            this.parentScope = parentScope;
            symbol_table = new Dictionary<string, Declaration>();
        }

        public void Add(Declaration decl)
        {
            symbol_table.Add(decl.GetName(), decl);
        }

        public Declaration ResolveHere(string symbol)
        {
            if (symbol_table.ContainsKey(symbol))
                return symbol_table[symbol];
            else
                return null;
        }

        public Declaration Resolve(string symbol)
        {
            Declaration local = ResolveHere(symbol);
            if (local != null)
                return local;
            else if (parentScope != null)
                return parentScope.Resolve(symbol);
            else
                return null;
        }
    }
}
