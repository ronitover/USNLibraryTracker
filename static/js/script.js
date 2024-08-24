function redirectToFacultyPage() {
    console.log('Redirecting to Faculty Page'); // For debugging
    window.location.href = '/login/faculty';
}

function redirectToStudentPage() {
    console.log('Redirecting to Student Page'); // For debugging
    window.location.href = '/';
}

function redirectToAdminPage() {
    window.location.href='/login/admin';
    document.getElementById('login-button').innerText = 'Login As Student';
}

document.getElementById('login-button').addEventListener('click', function(event) {
    event.preventDefault();

    const usn = document.getElementById('usnInput').value;
    fetch('/login/student', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `usn=${usn}`
    })
    .then(response => response.json())
    .then(data => {
        if (data.status === 'success') {
            alert(`Hey ${usn}, successfully logged in.`);
        } else {
            alert(data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An unexpected error occurred. Please try again.');
    });
});


function redirectToAdminPage() {
    window.location.href='/login/admin';
    document.getElementById('login-button').innerText = 'Login As Student';
}


document.getElementById('login-button').addEventListener('click', function(event) {
    event.preventDefault();

    const usn = document.getElementById('usnInput').value;
    fetch('/login/student', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `usn=${usn}`
    })
    .then(response => response.json())
    .then(data => {
        if (data.status === 'success') {
            alert(`Hey ${usn}, successfully logged in.`);
        } else {
            alert(data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An unexpected error occurred. Please try again.');
    });
});
