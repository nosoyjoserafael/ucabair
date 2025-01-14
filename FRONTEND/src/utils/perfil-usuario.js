document.addEventListener('DOMContentLoaded', () => {

    const storedToken = localStorage.getItem('token');

    const userDataSection = document.getElementById('user-profile');

    const userName = document.getElementById('user-name');
    const userCI = document.getElementById('user-ci');
    const userStartDate = document.getElementById('user-start-date');
    const userResidence = document.getElementById('user-residence');
    const userAddress = document.getElementById('user-address');

    const additionalsNames = ["Correo Electrónico","Teléfono"];
    const additionals = ["email","phone"];
    for (let i = 0; i < additionals.length; i++) {
        const container = document.createElement('div');
        container.classList.add('user-info');
        const label = document.createElement('label');
        label.textContent = `${additionalsNames[i]}:`;
        label.htmlFor = `user-${additionals[i]}`;
        const userAdditional = document.createElement(`span`);
        userAdditional.name = `user-${additionals[i]}`;
        container.appendChild(label);
        container.appendChild(userAdditional);
        userDataSection.appendChild(container);
    }


});