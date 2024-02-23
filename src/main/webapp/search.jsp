<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <script>
        // Function to set a cookie
        function setCookie(name, value, days) {
            var expires = "";
            if (days) {
                var date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + value + expires + "; path=/";
        }

        // Function to get a cookie
        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) === ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }

        // Function to display grouped search history with first letter uppercase
        function displayHistory() {
            var historyContainer = document.getElementById('historyContainer');
            var history = getCookie('searchHistory');

            if (history) {
                var entries = history.split(';');
                for (var i = 0; i < entries.length; i++) {
                    var entry = entries[i].split(':');
                    var date = entry[0];
                    var terms = entry[1].split(',');

                    var div = document.createElement('div');
                    div.innerHTML = '<h6>' + date + '</h6>';

                    for (var j = 0; j < terms.length; j++) {
                        var p = document.createElement('p');
                        var words = terms[j].split(' ');
                        for (var k = 0; k < words.length; k++) {
                            var word = words[k];
                            var capitalizedWord = word.charAt(0).toUpperCase() + word.slice(1);
                            p.innerHTML += capitalizedWord + ' ';
                        }
                        div.appendChild(p);
                    }

                    historyContainer.appendChild(div);
                }
            }
        }

        // Function to add a search term to history
        function addToHistory(term) {
            var history = getCookie('searchHistory');
            var today = new Date().toISOString().slice(0, 10);

            if (history) {
                var entries = history.split(';');
                var lastEntry = entries[0];
                var lastDate = lastEntry.split(':')[0];

                if (lastDate === today) {
                    // If the last entry is from today, add the term to it
                    entries[0] = today + ':' + term + ',' + lastEntry.split(':')[1];
                } else {
                    // If the last entry is not from today, create a new entry for today
                    entries.unshift(today + ':' + term);
                }
            } else {
                // If there is no history, create a new entry for today
                entries = [today + ':' + term];
            }

            setCookie('searchHistory', entries.join(';'), 7); // Store the updated history for 7 days

            // Refresh the displayed history
            displayHistory();
        }

        // Function to add a search term from checkIngredient.jsp to history
        function addIngredientToHistory() {
            var userInput = document.getElementById('userInput').value;
            addToHistory(userInput);
        }

        // Example usage:
        window.onload = function () {
            displayHistory();
        };
    </script>
</head>
<body>
<div class="offcanvas offcanvas-start text-bg-dark" id="demo">
    <div class="offcanvas-header">
        <h1 class="offcanvas-title">History</h1>
        <button type="button" class="btn-close btn-close-white text-reset" data-bs-dismiss="offcanvas"></button>
    </div>
    <div class="offcanvas-body" id="historyContainer">
        <!-- Grouped search history with first letter uppercase will be displayed here -->
    </div>
</div>

<button class="btn bg-secondary fixed-bottom ms-auto m-4 btn-m custom-width fs-4 text-white"
        type="button" data-bs-toggle="offcanvas" data-bs-target="#demo">
    <strong>History</strong>
</button>

</body>
</html>
