using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelperArL
{
    public class DataAccess
    {
        static ArrayList customerID = new ArrayList();
        static ArrayList customerFirstName = new ArrayList();
        static ArrayList customerLastName = new ArrayList();
        static ArrayList customerPassword = new ArrayList();
        static ArrayList customerType = new ArrayList();
        static bool signedIn = false;
        public static ArrayList CustomerID
        {
            get { return DataAccess.customerID; }
            set { DataAccess.customerID = value; }
        }
        public static ArrayList CustomerFirstName
        {
            get { return DataAccess.customerFirstName; }
            set { DataAccess.customerFirstName = value; }
        }

        public static ArrayList CustomerLastName { get => customerLastName; set => customerLastName = value; }
        public static ArrayList CustomerPassword { get => customerPassword; set => customerPassword = value; }
        public static ArrayList CustomerType { get => customerType; set => customerType = value; }
        public static bool SignedIn { get => signedIn; set => signedIn = value; }

        public void SaveRecord(string userName, string clientFirstName, string clientLastName, string clientPassword, string clientType)
        {
            customerID.Add(userName);
            customerFirstName.Add(clientFirstName);
            customerLastName.Add(clientLastName);
            customerPassword.Add(clientPassword);
            customerType.Add(clientType);
        }

        public bool userSignedIn()
        {
            return signedIn = true;
        }
    }
}   
