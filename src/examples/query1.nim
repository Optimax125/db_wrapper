import ../database/connection

let db = connection.open(MySQL, "user", "Password!", "127.0.0.1", "3306", "database", 10)
echo db.ping
echo "Connectted!"
echo "exec query"
let row = db.query("SELECT * FROM sample WHERE id = ?", 1)

let r = row[0]

echo r
echo row.columnNames
echo row.columnTypes
echo row.all
