<body>
    <h1>Resultado de pesquisa</h1>
    <p id="json">
        <?php
        echo '<p>' . $filme['Title'] . '</p>';
        echo '<p>' . $filme['Year'] . '</p>';
        echo '<p>' . $filme['Rated'] . '</p>';
        echo '<p>' . $filme['Released'] . '</p>';
        echo '<p>' . $filme['Director'] . '</p>';
        echo '<p>' . $filme['Writer'] . '</p>';
        echo '<p>' . $filme['Actors'] . '</p>';
        echo '<p>' . $filme['Plot'] . '</p>';
        echo '<p>' . $filme['Language'] . '</p>';
        echo '<p>' . $filme['Country'] . '</p>';
        echo '<p>' . $filme['Awards'] . '</p>';
        echo '<p>' . $filme['Poster'] . '</p>';

        ?>
    </p>
</body>

</html>
<!----
{
    "Title": "Avatar",
    "Year": "2009",
    "Rated": "PG-13",
    "Released": "18 Dec 2009",
    "Runtime": "162 min",
    "Genre": "Action, Adventure, Fantasy",
    "Director": "James Cameron",
    "Writer": "James Cameron",
    "Actors": "Sam Worthington, Zoe Saldana, Sigourney Weaver",
    "Plot": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
    "Language": "English, Spanish",
    "Country": "United States",
    "Awards": "Won 3 Oscars. 89 wins & 131 nominations total",
    "Poster": "https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg",
    "Ratings": [
        {
            "Source": "Internet Movie Database",
            "Value": "7.9/10"
        },
        {
            "Source": "Rotten Tomatoes",
            "Value": "82%"
        },
        {
            "Source": "Metacritic",
            "Value": "83/100"
        }
    ],
    "Metascore": "83",
    "imdbRating": "7.9",
    "imdbVotes": "1,313,610",
    "imdbID": "tt0499549",
    "Type": "movie",
    "DVD": "22 Apr 2010",
    "BoxOffice": "$785,221,649",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}



->