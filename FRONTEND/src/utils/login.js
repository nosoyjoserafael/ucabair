document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('form-login').addEventListener('submit', (event) => {
        event.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        const url = 'http://localhost:3000/usuario';

        const data = {
            username: username,
            clave: password
        };

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            localStorage.setItem('token', data.token) ;        
            const payload = JSON.parse(atob(data.token.split('.')[1]));
            alert(`Inicio de sesión exitoso. \nBienvenido ${payload.username}`);  
            window.location.href = '../pages/crud-rol.html';
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    });
});