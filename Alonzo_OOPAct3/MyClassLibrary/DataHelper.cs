using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyClassLibrary
{
    public class DataHelper
    {
        static int quantity;
        static double price;
        static double memberTypeDiscount;
        static double totalPrice;

        public int Quantity { get => quantity; set => quantity = value; }
        public double Price { get => price; set => price = value; }
        public double MemberTypeDiscount { get => memberTypeDiscount; set => memberTypeDiscount = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }

        public double processTotalAmount()
        {
            return TotalPrice += price;
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
