using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DatabaseWebApp.DAL;

namespace DatabaseWebApp.BLL
{
    public class StudentManager
    {
      StudentGateway _studentGateway = new StudentGateway();

        public string SaveStudent(Student student)

        {

            var isStudentExists = _studentGateway.IsStudentExists(student);
            if (isStudentExists)
            {

               return "student already exists!";
               
            }

           int rowAffected= _studentGateway.SaveStudent(student);
            

            if (rowAffected>0)
            {
                return "saved succecfully";

            }
            else
            {
                return "Insertion failed";
            }
        }

        public List<Student> GetAllStudents()
        {
            return _studentGateway.GetAllStudents();
        } 
    }
}