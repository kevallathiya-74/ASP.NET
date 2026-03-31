using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace _230801347.Extra
{
    public static class DatabaseInitializer
    {
        public static void EnsureFreshDatabase()
        {
            using (SqlConnection masterConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True"))
            {
                masterConnection.Open();
                string createDatabaseSql = @"
IF DB_ID('ch4') IS NULL
BEGIN
    CREATE DATABASE [ch4]
END";
                using (SqlCommand createDbCommand = new SqlCommand(createDatabaseSql, masterConnection))
                {
                    createDbCommand.ExecuteNonQuery();
                }
            }

            using (SqlConnection appConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=ch4;Integrated Security=True"))
            {
                appConnection.Open();
                string createTablesSql = @"
IF OBJECT_ID('dbo.stud', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.stud
    (
        rno INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        city NVARCHAR(100) NOT NULL
    )
END;

IF OBJECT_ID('dbo.P2', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.P2
    (
        id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        email NVARCHAR(150) NOT NULL,
        password NVARCHAR(100) NOT NULL,
        contact NVARCHAR(30) NOT NULL,
        gender NVARCHAR(20) NOT NULL,
        language NVARCHAR(50) NOT NULL,
        zipcode INT NOT NULL,
        about NVARCHAR(MAX) NOT NULL
    )
END;

IF OBJECT_ID('dbo.P3', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.P3
    (
        id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        name NVARCHAR(100) NOT NULL,
        email NVARCHAR(150) NOT NULL,
        password NVARCHAR(100) NOT NULL,
        age INT NOT NULL
    )
END;

IF OBJECT_ID('dbo.P4', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.P4
    (
        id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        fname NVARCHAR(100) NOT NULL,
        lname NVARCHAR(100) NOT NULL,
        gender NVARCHAR(20) NOT NULL,
        age INT NOT NULL,
        [date] DATETIME NOT NULL,
        email NVARCHAR(150) NOT NULL,
        password NVARCHAR(100) NOT NULL,
        contact NVARCHAR(30) NOT NULL,
        address NVARCHAR(300) NOT NULL,
        state NVARCHAR(100) NOT NULL,
        pincode INT NOT NULL,
        hobbies NVARCHAR(300) NOT NULL,
        photo NVARCHAR(300) NOT NULL
    )
END;

IF OBJECT_ID('dbo.P5', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.P5
    (
        id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        uname NVARCHAR(100) NOT NULL,
        email NVARCHAR(150) NOT NULL,
        password NVARCHAR(100) NOT NULL
    )
END;";

                using (SqlCommand createTablesCommand = new SqlCommand(createTablesSql, appConnection))
                {
                    createTablesCommand.ExecuteNonQuery();
                }
            }
        }
    }
}