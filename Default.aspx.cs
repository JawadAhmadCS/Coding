using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace dbsfinalq2
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Handle any initialization here
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                try
                {
                    sqlCon.Open();

                    // Insert into Student table
                    string studentQuery = "INSERT INTO Student (StudentID, StudentName) VALUES (@StudentID, @StudentName)";
                    using (SqlCommand studentCmd = new SqlCommand(studentQuery, sqlCon))
                    {
                        studentCmd.Parameters.AddWithValue("@StudentID", StudentIDText.Text);
                        studentCmd.Parameters.AddWithValue("@StudentName", StudentNameText.Text);
                        studentCmd.ExecuteNonQuery();
                    }

                    // Insert into Course table
                    string courseQuery = "INSERT INTO Course (CourseID, CourseName, Instructor, Department, CreditHours) VALUES (@CourseID, @CourseName, @Instructor, @Department, @CreditHours)";
                    using (SqlCommand courseCmd = new SqlCommand(courseQuery, sqlCon))
                    {
                        courseCmd.Parameters.AddWithValue("@CourseID", CourseIDText.Text);
                        courseCmd.Parameters.AddWithValue("@CourseName", CourseNameText.Text);
                        courseCmd.Parameters.AddWithValue("@Instructor", InstructorText.Text);
                        courseCmd.Parameters.AddWithValue("@Department", DepartmentText.Text);
                        courseCmd.Parameters.AddWithValue("@CreditHours", Convert.ToInt32(CreditHoursText.Text));
                        courseCmd.ExecuteNonQuery();
                    }

                    // Clear all input fields
                    StudentIDText.Text = string.Empty;
                    StudentNameText.Text = string.Empty;
                    CourseIDText.Text = string.Empty;
                    CourseNameText.Text = string.Empty;
                    InstructorText.Text = string.Empty;
                    DepartmentText.Text = string.Empty;
                    CreditHoursText.Text = string.Empty;

                    // Display success message
                    lblMessage.Text = "Record inserted successfully!";
                    lblMessage.Style["color"] = "green";
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.Style["color"] = "red";
                }
            }
        }
    }
}
