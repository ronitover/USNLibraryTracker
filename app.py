from flask import Flask, render_template, request, jsonify
from config import get_db_connection  
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def student_login_page():
    return render_template('login_student.html')

@app.route('/login/student', methods=['POST'])
def student_login():
    conn = None  
    try:
        usn = request.form['usn']
        print(f"Received USN: {usn}")

        conn = get_db_connection()  
        cursor = conn.cursor(dictionary=True)
        print("Database connection established.")

        cursor.execute('''
            SELECT s.name, s.usn, c.class_name
            FROM students s
            JOIN classes c ON s.class_id = c.class_id
            WHERE s.usn = %s
        ''', (usn,))
        student = cursor.fetchone()

        if student:
            print(f"Student found: {student}")
            name, usn, class_name = student['name'], student['usn'], student['class_name']
            current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

            cursor.execute(''' 
                INSERT INTO login_records (name, usn, class, login_time)
                VALUES (%s, %s, %s, %s)
            ''', (name, usn, class_name, current_time))
            conn.commit()
            print("Login record inserted successfully.")
            return jsonify({"status": "success", "message": f"Login successful for {name}.", "class": class_name, "time": current_time})
        else:
            print("No matching student found.")
            return jsonify({"status": "error", "message": "Invalid USN. Please try again."})

    except Exception as e:
        print(f"Error: {e}")  
        return jsonify({"status": "error", "message": "An unexpected error occurred. Please try again later."}), 500

    finally:
        if conn:
            conn.close()  



@app.route('/login/faculty')
def login_faculty():
    return render_template('login_faculty.html')

if __name__ == "__main__":
    app.run(debug=True)
