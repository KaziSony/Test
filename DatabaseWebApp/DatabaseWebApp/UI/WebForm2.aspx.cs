using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseWebApp.BLL;

namespace DatabaseWebApp.UI
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        StudentManager studentManager = new StudentManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void showButton_Click(object sender, EventArgs e)
        {
            ShowAllStudents();
        }

        public void saveButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            string regNo = regTextBox.Text;
            string address = addressTextBox.Text;
            string phoneNo = phoneTextBox.Text;
            string subject = subTextBox.Text;
            Student student = new Student(name, regNo, address, phoneNo, subject);

            Label5.Text = studentManager.SaveStudent(student);



        }



        private void ShowAllStudents()
        {
            List<Student> student = studentManager.GetAllStudents();
            studentGridView.DataSource = student;
            studentGridView.DataBind();
        }

    }






}



