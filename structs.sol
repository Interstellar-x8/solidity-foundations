// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// structs are types that used to represent a record in Solidity. 

contract learnStructs {
    struct Movie {
        string title;
        string director;
        uint movie_id; 
    }

    // Movie = Data Type, movie = variable
    Movie movie; 

    function setMovie() public {
        movie = Movie('Interstellar', 'Christopher Nolan', 1);
    
    }

    function getMovieId() public view returns(uint) {
        return movie.movie_id;
    }
    
}