var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "employeesDB"
});

connection.connect(function (err) {
    if (err) throw err;
    runTracker();
});

function runTracker() {
    inquirer
        .prompt({
            name: "action",
            type: "rawlist",
            message: "What would you like to do?",
            choices: [
                "View All Employees",
                "Add Employee",
                "Update Employee",
                "Exit"
            ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case "View All Employees":
                    viewAllEmp();
                    break;
                case "Add Employee":
                    addEmp();
                    break;
                case "Update Employee":
                    updateEmp();
                    break;
                case "exit":
                    connection.end();
                    break;
            }
        });
}

function viewAllEmp() {
    var query = "SELECT employees.emp_id, employees.first_name, employees.last_name, roles.title, ";
        query += "roles.salary FROM employees INNER JOIN roles ON ";
        query += "employees.role_id = roles.role_id ORDER BY employees.emp_id";

    connection.query(query, function (err, res) {
        console.log(res.length + " matches found!");
        for (var i = 0; i < res.length; i++) {
            console.log(
                res[i].emp_id + " " +
                res[i].first_name + " " +
                res[i].last_name + " " +
                res[i].title + " " +
                res[i].salary
                );
        }
        runTracker();
    });
}

function addEmp() {
}
function updateEmp() {
}