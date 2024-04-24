// RUN SQL SCRIPT
// Usage: runSql.ps1 -server <server> -database <database> -script <script> [-username <username>] [-password <password>]
//   -server: The SQL Server to connect to
//   -database: The database to run the script against
//   -script: The path to the SQL script to run
//   -username: The username to connect with
//   -password: The password to connect with
// Example: runSql.ps1 -server localhost -database master -script .\createDatabase.sql -username sa -password password
param (
    [string]$server,
    [string]$database,
    [string]$script,
    [string]$username,
    [string]$password
)
