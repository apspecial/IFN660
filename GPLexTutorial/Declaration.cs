using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPLexTutorial
{
    public interface Declaration
    {
          Type GetTypeFrom();
        void AddItems(LexicalScope scop);
        //string GetName();
       //  int GetNumber();

    }
}
