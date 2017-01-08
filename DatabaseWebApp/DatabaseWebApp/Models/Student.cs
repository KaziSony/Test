using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DatabaseWebApp
{
    public class Student
    {
        
        public string Name { get; set; }
        public string RegNo { get; set; }
        public string Address { get; set; }
        public string PhoneNo { get; set; }
        public string Subject { get; set; }

        public Student(string name, string regNo, string address, string phoneNo, string subject)
        {

            Name = name;
            RegNo = regNo;
            Address = address;
            PhoneNo = phoneNo;
            Subject = subject;
          
        }
       

    }
}