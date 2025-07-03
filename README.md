Creating and Using Views – Step-by-Step Summary
Step 1: Create a New Database
In this step, I created a new database named `company_db` to organize all the tables and views for this activity.
Step 2: Create Tables
I created two tables:
`departments`: to store department IDs and department names.
`employees`: to store employee details including name, department, and salary.
  This table includes a foreign key linking to the `departments` table.
Step 3: Insert Sample Data
I inserted sample records into both tables to simulate a real-world working environment with employees belonging to different departments and having different salaries.
Step 4: Create a Complex View
I created a view named `high_earners` which combines data from both `employees` and `departments` using a `JOIN`.
This view filters employees having a salary greater than 60,000 and shows their department name as well.
It also orders the result in descending order of salary.
This demonstrates the use of views to simplify complex queries.
Step 5: Query the View
I queried the `high_earners` view to fetch results.
The view worked like a virtual table, returning only high-salary employees along with their departments, using a simple SELECT query.
Step 6: Create a Table with Sensitive Information
I created a third table named `users` that included sensitive data such as usernames, emails, and passwords.
This was to demonstrate how views can be used for security and abstraction.
Step 7: Create a Secure View
I created a second view named `user_summary`, which excluded the password column from the `users` table.
This view provides a secure way to show user information without exposing sensitive fields like passwords.
Step 8: Use the Abstracted View
I used the `user_summary` view to show non-sensitive data (like username, email, and role).
This proved that views can restrict access to certain columns, adding a layer of security and abstraction.
Step 9: Outcome
By the end of this activity, I successfully:
* Created and used views for simplifying complex logic
* Implemented views for abstraction and security
* Understood how views help in reusing SQL queries and hiding sensitive data

