from flask import Flask, render_template, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

@app.route('/')
def login_student():
    return render_template('login_student.html')

@app.route('/login/faculty')
def login_faculty():
    return render_template('login_faculty.html')

if __name__ == "__main__":
    app.run(debug=True)
