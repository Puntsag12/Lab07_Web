from flask import Flask, jsonify, request, send_from_directory
from flask_cors import CORS
import mysql.connector
import os

app = Flask(__name__, static_folder = '/app/src')
CORS(app)

app.config['JSON_AS_ASCII'] = False 
def get_db_connection():
    return mysql.connector.connect(
        host="db", 
        user="root", 
        password="root_password", 
        database="num_db"
    )

@app.route('/')
def index():
    return send_from_directory(app.static_folder, 'index.html')

@app.route('/admin')
def admin_page():
    return send_from_directory(app.static_folder, 'admin.html')

@app.route('/<path:path>')
def static_proxy(path):
    return send_from_directory(app.static_folder, path)

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

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)