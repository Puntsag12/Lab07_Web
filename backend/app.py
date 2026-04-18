from flask import Flask, jsonify, request
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS(app)
# Mongol vseg haruulah
app.config['JSON_AS_ASCII'] = False 

def get_db_connection():
    return mysql.connector.connect(
        host="db", 
        user="root", 
        password="root_password", 
        database="num_db",
        charset='utf8mb4',
        use_unicode=True
    )

@app.route('/api/stats', methods=['GET'])
def get_stats():
    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM university_stats")
        data = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(data)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/login', methods=['POST'])
def login():
    auth = request.json
    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM admins WHERE username=%s AND password=%s", 
                       (auth['username'], auth['password']))
        user = cursor.fetchone()
        cursor.close()
        conn.close()
        if user:
            return jsonify({"success": True, "token": "dummy-session-token"})
        return jsonify({"success": False, "message": "Нэвтрэх нэр эсвэл нууц үг буруу"}), 401
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/stats', methods=['POST'])
def create_stat():
    data = request.json
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO university_stats (category, value) VALUES (%s, %s)",
                       (data['label'], data['value']))
        conn.commit()
        cursor.close()
        conn.close()
        return jsonify({"message": "Амжилттай нэмэгдлээ"}), 201
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/stats/<int:id>', methods=['DELETE'])
def delete_stat(id):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM university_stats WHERE id = %s", (id,))
        conn.commit()
        cursor.close()
        conn.close()
        return jsonify({"message": "Устгагдлаа"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/stats/<int:id>', methods=['PUT'])
def update_stat(id):
    data = request.json
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("UPDATE university_stats SET category=%s, value=%s WHERE id=%s",
                       (data['label'], data['value'], id))
        conn.commit()
        cursor.close()
        conn.close()
        return jsonify({"message": "Амжилттай шинэчлэгдлээ"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)