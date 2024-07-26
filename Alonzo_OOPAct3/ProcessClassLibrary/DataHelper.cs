using System.ComponentModel;

namespace ProcessClassLibrary
{
    public class DataHelper
    {
        public static double AppliedDiscount(double totalAmount, double memberTypeDiscount)
        {
           if(memberTypeDiscount > 0 && totalAmount >= 3)
            {
                return totalAmount * memberTypeDiscount;
            }

            return 0;
        }

        public static double TotalAmount(double price, int quantity)
        {
            return price * quantity;
        }

        public static double GrandTotal(double totalAmount, double appliedDiscount)
        {
            return totalAmount - appliedDiscount;
        }
     
        public static string AccountNumber(string memberInitial)
        {
            Random random = new Random();
            int randomNumber = random.Next(10000, 99999);

            return memberInitial + randomNumber.ToString();
        }
    }
}
