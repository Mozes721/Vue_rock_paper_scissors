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
  <div class="instructions">
    <h3 >Press on your chosen image and then press PLAYGAME!</h3>
  </div>
      <!-- Game -->
    <div class="float-child1">
      <Player v-on:getChoice="updatePlayerChoice($event)" v-bind:choice="player_choice" />
      <h2 style="color:white">You chose: {{player_choice}}</h2>
    </div>
    <div class="float-child2">
      <Opponent @click="play" v-on:getChoice="updateOpponentScore($event)" v-bind:choice="opponent_choice"/>
      
      <img type="button" v-if="!opponent_choice" src="./assets/vue_question.jpeg" /> 
      <img class="opponent_img" type="button" v-if="!!opponent_choice" :src="require('./assets/'+ImgSrc())" />
      
      <h2 style="color:white">Opponents choice: {{opponent_choice}}</h2>
    </div>
    <h1 class="winner" v-if="winner">
      {{ winner }}
    </h1>
  </div>
   
</template>
<script>
import Player from './components/Player.vue'
import Opponent from './components/Opponent.vue'

const choices = ["rock", "paper", "scissors"];
export default {
  name: 'App',
  components: {
    Player,
    Opponent,
  },
  data() {
    return {
      player_choice: "",
      opponent_choice: "",
      player_score: 0,
      opponent_score: 0,
      winner: ""
    };
  },
  methods: {
    updatePlayerChoice(choice) {
        this.player_choice = choice;
      },
    updateOpponentScore(choice) {
        this.opponent_choice = choice;
      }, 
    ImgSrc() {
      if (this.opponent_choice == "rock") {
        return "rock.jpeg"
      }
      else if (this.opponent_choice == "paper") {
        return "paper.jpeg"
      }
      else  {
        return "scissors.jpeg"
      }
    },
    play() {
      const {player_choice, opponent_choice } = this;
    
    if (player_choice === opponent_choice) {
      this.winner = "It is a tie!";
    } else if (
        (opponent_choice === "scissors" && player_choice === "paper") ||
         (opponent_choice === "paper" && player_choice === "rock") ||
         (opponent_choice === "rock" && player_choice === "scissors")
      ) {
          this.opponent_score++;
          this.winner = "Opponent won :(";
    } else if (player_choice === "") {
      alert("You have to select your choise!")
    }
    else {
      this.player_score++;
      this.winner = "You won!";
        }
      }
    }
}
</script>

<style>
*, .body {
    background-color: #292c34;
    overflow: hidden;
}
* {
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: Asap, sans-serif;
    font-weight: 700;
}
.instructions {
  padding: 10px;
  margin-left: 200px;
  width: 70%;
}
.instructions h3 {
  text-align: center;
  border: 2px solid gold;
}
.header-container {
    background: #fff;
    padding: 20px;
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
  height: 150px;
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
.float-child1 {
  background-color:#292c34;
  width: 50%;
  float: left;
  padding: 20px;
  margin-left:200px;
}
.float-child2 {
  margin-top:100px;
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
.opponent_img {
  transform: rotate(-90deg);
  height:150px;
  width: 140px;
  padding-left: 20px;
  border-radius: 10px;
}
.winner {
  width: 320px;
  padding: 10px;
  border: 5px solid gray;
  margin: 0;
  background-color: coral;
  color:#fff;
}
</style>
