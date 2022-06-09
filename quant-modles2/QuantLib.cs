using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuantUtilityLibraries
{
    public static class QuantLibrary
    {
        public static bool StartsWithUpper(this string str)
        {
            if (string.IsNullOrWhiteSpace(str))
                return false;

            char ch = str[0];
            return char.IsUpper(ch);
        }


        public static int[] calculateVAR(int days)
        {
            int[] var = new int[days];

            for (int i = 0; i < var.Length; i++)
            {
                var[i] = i;
            }

            return var;
        }
    }
}