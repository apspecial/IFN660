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
        public LexicalScope parentScope;
        //List<Declaration> symbol_table;
        Dictionary<string, Declaration> symbol_table = new Dictionary<string, Declaration>();
        //OrderedDictionary symbol_table = new OrderedDictionary();
        // private var symbol_table = new Dictionary<string, double>();

        public LexicalScope()
        {
            parentScope = null;
            symbol_table.Clear();
        }

        public Declaration ResolveHere(string symbol)
        {
            //std::map < std::string, Declaration*>::iterator it = symbol_table.find(symbol);
            // foreach (KeyValuePair<string, Declaration> entry in symbol_table)
            // {
            // do something with entry.Value or entry.Key
            // find(entry.Key);
            // symbol_table [symbol];

            // }
            Declaration local;
            symbol_table.TryGetValue(symbol,out local);

            return local;
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

        Declaration Resolve(string symbol)
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
