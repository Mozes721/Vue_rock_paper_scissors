<template>
<div id="app">
      <!-- Header -->
      <div class="header-container">
        <h1>Rock Paper Scissors</h1>
      </div>
      <!-- ScoreBoard -->
      <div class="scoreboard">
    <div class="scorecontainer">
      <h2 class="score_text">ScoreBoard</h2>
      <div class="float-child">
        <div class="player">
          <h3>You</h3>
          <h3 class="score">{{player_score}}</h3>
        </div>
      </div>
      <div class="float-child">
        <div class="oponent">
          <h3>Opponent</h3>
          <h3 class="score">{{opponent_score}}</h3>
        </div>
      </div>
    </div>
  </div>
      <!-- Game -->
    <div class="float-child2">
      <Player v-on:changeScore="updatePlayerScore($event)" />
    </div>
    <div class="float-child2">
      <Opponent v-on:changeScore="updateOpponentScore($event)" />
    </div>
  </div>
  
</template>

<script>
import Player from './components/Player.vue'
import Opponent from './components/Opponent.vue'
export default {
  name: 'App',
  data() {
    return {
      title: "Counter",
      player_score: 0,
      opponent_score: 0,
    };
  },

  components: {
    Player,
    Opponent,
  },
  methods: {
    updatePlayerScore(score){
      this.player_score=score
  },
  updateOpponentScore(score){
      this.opponent_score=score
  },
}
}
</script>

<style>

*, .body {
    background-color: #292c34;
}
* {
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: Asap, sans-serif;
    font-weight: 700;
}

.header-container {
    background: #fff;
    padding: 25px;
    text-align: center;
}

.header-container>h1 {
  background-color: #fff;
  color: #292c34;
  text-align: center;
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

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
  background-color:aliceblue;
  width: 50%;
  float: left;
  padding: 20px;
  
}

.float-child2 {
  background-color:#292c34;
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

.hands {
  padding: 20px;
}

</style>
