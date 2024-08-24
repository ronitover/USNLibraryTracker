function redirectToFacultyPage() {
    window.location.href = '/login/faculty';
}

function redirectToStudentPage() {
    window.location.href = '/';
}

function redirectToAdminPage() {
    window.location.href='/login/admin';
    document.getElementById('login-button').innerText = 'Login As Student';
}
