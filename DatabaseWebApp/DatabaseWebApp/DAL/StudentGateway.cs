using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DatabaseWebApp.DAL
{
    public class StudentGateway
    {
        public bool IsStudentExists(Student student)
        {
            bool isStudentExists = false;
            string connectionString =
                @"Data Source=DESKTOP-83A6S8Q;Initial Catalog=University_Management_System;User ID=sa;Password=12345";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT*FROM Student WHERE RegNo ='" + student.RegNo + "'";


            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                isStudentExists = true;
            }
            connection.Close();
            return isStudentExists;
        }
        public int SaveStudent(Student student)
        {

            string connectionString =
                @"Data Source=DESKTOP-83A6S8Q;Initial Catalog=University_Management_System;User ID=sa;Password=12345";
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "INSERT INTO Student VALUES('" + student.Name + "','" + student.RegNo + "','" + student.Address + "','" + student.PhoneNo + "','" +
                           student.Subject + "')";
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);
            int rowAffected = command.ExecuteNonQuery();

            return rowAffected;
        }

        public List<Student> GetAllStudents()
        {
            string connectionString =
                @"Data Source=DESKTOP-83A6S8Q;Initial Catalog=University_Management_System;User ID=sa;Password=12345";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT*FROM Student";
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            List<Student> student = new List<Student>();
            while (reader.Read())
            {
                string name = reader["Name"].ToString();
                string regNo = reader["RegNo"].ToString();
                string address = reader["Address"].ToString();
                string phoneNo = reader["PhoneNo"].ToString();
                string subject = reader["Subject"].ToString();


                Student aStudent = new Student(name, regNo, address, phoneNo, subject);


                student.Add(aStudent);
            }
            return student;
        }
    }
}