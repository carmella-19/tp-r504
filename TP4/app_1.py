from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
 
# MySQL configuration
db_config = {
    'host': 'tp4-sql',
    'user': 'root',
    'password': 'foo',
    'database': 'demosql'
}

# Initialize MySQL connection


@app.route('/')
def index():
    # Sample query
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor() 
    query = "SELECT * FROM myTable"
    cursor.execute(query)
    data = cursor.fetchall()
    
    # Close the cursor and connection
    cursor.close()
    conn.close()
    
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
    

