using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class DataAccess
    {
        static int quantity;
        static double price;
        static double memberTypeDiscount;
        static double totalPrice;

        public int Quantity { get => quantity; set => quantity = value; }
        public double Price { get => price; set => price = value; }
        public double MemberTypeDiscount { get => memberTypeDiscount; set => memberTypeDiscount = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }

        public double processTotalAmount(int laptop, int desktop, int printDot, int printInk)
        {
            if(laptop > 0)
            {
                laptop = laptop * 35500;
            }

            if(desktop > 0)
            {
                desktop = desktop * 27500;
            }

            if(printDot > 0)
            {
                printDot = printDot * 5500;
            }

            if(printInk > 0)
            {
                printInk = printInk * 4500;
            }

            return TotalPrice = laptop + desktop + printDot + printInk;
        }

        public double processAppliedDiscount()
        {
            if (memberTypeDiscount > 0 && quantity >= 3)
            {
                return TotalPrice * memberTypeDiscount;
            }

            return 0;
        }

        public double processGrandTotal()
        {
            return TotalPrice - processAppliedDiscount();
        }

        public string AccountID(string memberInitial)
        {
            Random random = new Random();
            int randomNumber = random.Next(10000, 99999);

            return memberInitial + randomNumber.ToString();
        }
    }
}
