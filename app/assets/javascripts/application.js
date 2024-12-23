// app/assets/javascripts/application.js
//= require_tree .

document.addEventListener('DOMContentLoaded', function () {
    const snowContainer = document.querySelector('.snow-container');

    function createSnowflakes() {
        for (let i = 0; i < 100; i++) {
            let snowflake = document.createElement('div');
            snowflake.classList.add('snowflake');
            snowflake.style.left = Math.random() * window.innerWidth + 'px';
            snowflake.style.animationDuration = Math.random() * 3 + 2 + 's';
            snowflake.style.animationDelay = Math.random() * 3 + 's';
            snowContainer.appendChild(snowflake);
        }
    }

    createSnowflakes();
});

document.addEventListener('DOMContentLoaded', function () {
    const logo = document.getElementById('logo-image');
    if (logo) {
        logo.addEventListener('click', function () {
            window.location.href = '/';
        });
    }
});



document.addEventListener("DOMContentLoaded", () => {
    const flashMessage = document.querySelector(".flash-message");
    if (flashMessage) {
        setTimeout(() => {
            flashMessage.style.display = "none";
        }, 3000);
    }
});
