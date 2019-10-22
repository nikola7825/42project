$(document).ready(function(){
    showmovies();
    // alert("usao");
});


function showmovies() {
    $.ajax({
        url: "data/movies.json",
        method: "GET",
        success: function(movies){
           // console.log(movies);
            printmovies(movies);
            printRecommendedMovies(movies);
           // printselect(movies);
        }
    });
}
function printmovies(movies){
    let html = "";
    if(movies.length > 0){
        for(let movie of movies){
           // console.log(movie.imdbRating);
           // console.log(movie.imdbRating > 7);
         html+= printSinglemovie(movie);
        }
    } else {
        html += "<h3 class='block-4 text-center'>No movies.</h3>";
    }
    $("#movie").html(html);  
}
function printRecommendedMovies(movies){
    let html = "";
    if(movies.length > 0){
        for(let movie of movies){
          if(movie.imdbRating >= 7)
         html+= printSinglemovie(movie);
        }
    } else {
        html += "<h3 class='block-4 text-center'>No movies.</h3>";
    }
    $("#moviee").html(html);  
}

function printSinglemovie(movie)
{
    return `
    
    <div class="col-sm-4"  >
    <div class="card">
    
      <div class="card-image">
        <img src="${movie.posterurl}">
        <span class="card-title">asdas</span>
      </div>
      <div class="card-content">
        <p class="description">${movie.title}</p> 
        
        <p>Actors:</p>
        <p>
        
         ${movie.actors}
        </p>
      </div>
      <div class="card-action">
      ${movie.imdbRating}

    
    
      </div>
      
    </div>
  </div> 


`;
}

// function printselect(movies){
//     let html ="echo<select>";
//     for(let movie of movies)
//     {
//         html+=`echo"<option value='${movie.title}'>${movie.title}</option>"`;
//     }
//     html+="echo'</select>'";
//     $("#gradovi").html(html);
// }