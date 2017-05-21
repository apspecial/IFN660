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
        //public LexicalScope parentScope;
        protected LexicalScope parentScope;
        protected Dictionary<string, Declaration> symbol_table;
        //List<Declaration> symbol_table;
        //Dictionary<string, Declaration> symbol_table = new Dictionary<string, Declaration>();
        //OrderedDictionary symbol_table = new OrderedDictionary();
        // private var symbol_table = new Dictionary<string, double>();

        public LexicalScope()
        {
            parentScope = null;
            symbol_table.Clear();
        }

        public LexicalScope ParentScope { get; set; }
        public Dictionary<string, Declaration> Symbol_table {  get;  set; }


        public Declaration ResolveHere(string symbol)
        {
            //Shawn Zhao: 
            Declaration local;
            //Get every value in Symbol_table by key "symbol"
            if (Symbol_table.TryGetValue(symbol, out local))
                return local;
            else
                return null;


            //int termIndex = GetIndex(symbol_table, symbol);

          //  if (termIndex != symbol_table.Count)
             //   return termIndex++;
           // return NULL;
        }

        // public int GetIndex(OrderedDictionary dictionary, string key)
        // {
        //     for (int index = 0; index < dictionary.Count; index++)
        //    {
        //         dictionary
        //        if (dictionary.Item[index] == dictionary.Item[key])
        //             return index; // We found the item
        //    }
        //
        //     return -1;
        // }

        

        public static int GetIndex(Dictionary<string, Declaration> dictionary, string key)
        {
            for (int index = 0; index < dictionary.Count; index++)
            {
                if (dictionary.Skip(index).First().Key == key)
                    return index;
            }

            return -1;
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
