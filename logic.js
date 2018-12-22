var inquirer = require('inquirer');
var mysql = require('mysql');

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "produce_DB"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
});


var managerPrompt = function() {
    inquirer.prompt({
        name: "action",
        type: "list",
        message: "Hello! What would you like to do?",
        choices: ["View products for sale", 'Exit']
    }).then(function(answer) {
        switch (answer.action) {
            case 'View products for sale':
                viewInven(function() {
                    managerPrompt();
                });

            }

var viewInven = function(cb) {
    connection.query('SELECT * FROM products', function(err, res) {
        //THIS CREATES THE NEW CLI TABLE 
        var table = new Table({
            head: ['ID', 'Product', 'Price', 'Quantity']
        });
        console.log("HERE ARE ALL THE ITEMS AVAILABLE FOR SALE: ");
        console.log("===========================================");
        for (var i = 0; i < res.length; i++) {
            table.push([res[i].id, res[i].Product, res[i].Price, res[i].Quantity]);
        }
        //DISPLAYS THE PRODUCTS IN A COOL TABLE VIEW USING CLI TABLE NPM PACKAGES. 
        console.log(table.toString());
        console.log("-----------------------------------------------");
        cb();
    })
}
 })}

