# DBS Final Lab Task  

This repository contains the solution for the **DBS Final Lab Task**. The lab consisted of two tasks outlined in the provided `dbs final lab.pdf` document. Below are the details for each task, including instructions on how to set up and run the project.  

---

## Task Details  

### **Task 1: Paper Question App**  
- SQL Query: `dbfinallq1.sql`  
- The SQL file contains the script to create the necessary database for Task 1.  

### **Task 2: Student and Course Management System**  
- SQL Query: `dbs final lab q2.sql`  
- The SQL script creates the required database structure, including `Student`, `Course`, and `Enrollment` tables.

---

## Instructions for Setting Up the Project  

### Prerequisites  
Before starting, ensure the following are installed:  
1. **SQL Server** (LocalDB or full server installation).  
2. **Visual Studio** (2022 or later) with **ASP.NET Web Forms** support.  

---

### Step 1: Database Setup  

#### For Task 1  
1. Open **SQL Server Management Studio (SSMS)**.  
2. Execute the SQL script in `dbfinallq1.sql` to create the required database.  

#### For Task 2  
1. Open **SQL Server Management Studio (SSMS)**.  
2. Run the `dbs final lab q2.sql` script snippet by snippet.  
   - This will create the `Student`, `Course`, and `Enrollment` tables with their respective constraints.  

---

### Step 2: Create the ASP.NET Web Application  

1. Open **Visual Studio**.  
2. Create a new project:  
   - Select **"ASP.NET Web Application (.NET Framework)"**.  
   - Enter the project name and click **Create**.  
3. From the next menu:  
   - Choose **"Web Forms"**.  
   - Uncheck **Enable HTTPS**.  
   - Click **Create**.  

---

### Step 3: Update Project Files  

1. Replace the content of the `Default.aspx` file with the provided file content.  
   - Copy the content from the uploaded file and paste it into `Default.aspx`.  
2. Similarly, replace the content of the `Default.aspx.cs` file with the uploaded content.  
   - Copy the content from the uploaded file and paste it into `Default.aspx.cs`.  
3. Update the `Web.config` file:  
   - Locate the `<configuration>` section in `Web.config`.  
   - Add the following `<connectionStrings>` section directly under `<configuration>`:  
   ```xml
   <connectionStrings>
	<add name="ConnectionString" connectionString="Data Source=DESKTOP-RCFGB52; Initial Catalog=studentsystem; Integrated Security=True;" providerName="System.Data.SqlClient"/>
</connectionStrings>
   ```
   
# Instructions for Configuration and Running  

### Replace  
- **DESKTOP-RCFGB52** with your SQL Server data source.  
- **studentsystem** with the database name created from the SQL scripts.  

---

### Step 4: Run the Application  

1. Save all files in Visual Studio.  
2. Press **F5** or click **Start Debugging** to run the project.  
3. Test the application by adding student and course details.  

---


https://github.com/user-attachments/assets/88ea0acb-9e61-4f2e-aa0b-bd83dc52f160
