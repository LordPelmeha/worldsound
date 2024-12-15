// app/assets/javascripts/application.js
//= require snow
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
    function createSnowflake() {
        const snowflake = document.createElement('div');
        snowflake.classList.add('snowflake');

        snowflake.style.left = Math.random() * window.innerWidth + 'px';
        snowflake.style.animationDuration = Math.random() * 3 + 2 + 's';

        document.querySelector('.snow-container').appendChild(snowflake);

        snowflake.addEventListener('animationend', () => {
            snowflake.remove();
        });
    }

    setInterval(createSnowflake, 100);
});
