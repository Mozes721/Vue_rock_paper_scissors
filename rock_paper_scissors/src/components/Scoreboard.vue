<template>
  <div class="scoreboard">
    <div class="scorecontainer">
      <h2 class="score_text">ScoreBoard</h2>
      <div class="float-child">
        <div class="player">
          <h3>You</h3>
          <h3 class="score">0</h3>
        </div>
      </div>
      <div class="float-child">
        <div class="oponent">
          <h3>Opponent</h3>
          <h3 class="score">0</h3>
        </div>
      </div>
    </div>
   
  </div>
</template>


<style scoped>
.scoreboard {
    display: flex;
    align-items: center;
    justify-content: center;
    
}

.scorecontainer {
  margin-top: 20px;
  padding: 20px;
  width: 25%;
  height: 200px;
  background-color:aliceblue;
  border: 3px solid rgb(68, 59, 151);
  border-radius: 10px;
}
.score_text {
  background-color: aliceblue;
  text-align: center;
  font-family: 'Roboto Condensed', sans-serif;
  border-bottom: 2px solid #000;
  width:100%;
}

.float-child {
  background-color: aliceblue;
  width: 50%;
  float: left;
  padding: 20px;
  
}
h3 {
  background-color: aliceblue;
  text-align: center;
  font-family: 'Do Hyeon', sans-serif;
  font-family: 'Roboto Condensed', sans-serif;
  font-family: 'Source Code Pro', monospace;
}
.score {
  padding: 1rem;
  font-size: 40px;
}


</style> 
