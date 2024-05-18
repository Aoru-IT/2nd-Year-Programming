using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class DataAccess
    {
        static string myConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Downloads\APPDEV RELATED\APPDEV RELATED\Alonzo_Long Quiz\Alonzo_Long Quiz\App_Data\Database1.mdf"";Integrated Security=True";
        SqlConnection myConn = new SqlConnection(myConStr);

        //Method in Encrypting the data using MD5 Data Encryption
        //MD5 - Message-Direct algorith 5
        //yoyoyo
        public string EncryptData(string userPassWord)
        {
            MD5CryptoServiceProvider mdHash = new MD5CryptoServiceProvider();
            byte[] totalBytes = Encoding.ASCII.GetBytes(userPassWord);
            byte[] hashBytes = mdHash.ComputeHash(totalBytes);

            //String Builder
            StringBuilder sb = new StringBuilder();
            for (int generateChar = 0; generateChar < hashBytes.Length; generateChar++)
            {
                sb.AppendFormat("{0:x2}", hashBytes[generateChar]);

            }
            return sb.ToString();
        }
        string encryptedUserPassword;

        public string EncryptedUserPassword
        {
            get { return encryptedUserPassword; }
            set { encryptedUserPassword = value; }
        }


        //Method in Saving New User
        public void SaveNewAccount(string userName, string userPassword, string lastName, string firstName,
            string middleInitial, string phoneNumber, string userAddress, DateTime birthDay, string gender, string userType)
        {
            myConn.Open();
            encryptedUserPassword = EncryptData(userPassword);
            SqlCommand saveCmd = new SqlCommand("SaveNewAccount", myConn);
            saveCmd.CommandType = CommandType.StoredProcedure;
            saveCmd.Parameters.Add("@userName", SqlDbType.NVarChar).Value = userName;
            saveCmd.Parameters.Add("@userPassword", SqlDbType.NVarChar).Value = encryptedUserPassword; // Password input by the user will be encrypted
            saveCmd.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = lastName;
            saveCmd.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = firstName;
            saveCmd.Parameters.Add("@middleInitial", SqlDbType.NVarChar).Value = middleInitial;
            saveCmd.Parameters.Add("@phoneNumber", SqlDbType.NVarChar).Value = phoneNumber;
            saveCmd.Parameters.Add("@userAddress", SqlDbType.NVarChar).Value = userAddress;
            saveCmd.Parameters.Add("@birthDay", SqlDbType.Date).Value = birthDay;
            saveCmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = gender;
            saveCmd.Parameters.Add("@userType", SqlDbType.NVarChar).Value = userType;

            saveCmd.ExecuteNonQuery();                  
            myConn.Close();
        }
        
        string userName, userPassword;

        public string UserPassword
        {
            get { return userPassword; }
            set { userPassword = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }


        public bool CheckAccount()
        {
            bool found = false;
            myConn.Open();
            SqlCommand readCmd = new SqlCommand("CheckUser", myConn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@userName", SqlDbType.NVarChar).Value = userName;
            readCmd.Parameters.Add("@userPassWord", SqlDbType.NVarChar).Value = userPassword;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                userName = dr.GetString(1);
                userPassword = dr.GetString(2);
                found = true;
                break;
            }
            myConn.Close();
            return found;
        }

        public bool CheckType(string username)
        {
            bool found = false;
            myConn.Open();
            SqlCommand readCmd = new SqlCommand("CheckType", myConn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@userName", SqlDbType.NVarChar).Value = username;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            myConn.Close();

            return found;
        }
    }
}
