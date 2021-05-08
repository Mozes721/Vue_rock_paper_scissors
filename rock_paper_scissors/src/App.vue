<template>
<div id="app">
      <div class="header-container">
        <h1>Rock Paper Scissors</h1>
      </div>
      <Scoreboard/>
      <Hands/>
  </div>
</template>

<script>
import Scoreboard from './components/Scoreboard.vue'
import Hands from './components/Hands.vue'
export default {
  name: 'App',
  components: {
    Scoreboard,
    Hands,
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
/* .header-container {
  height: 15vh;
  width: 100%;
  background-color: #fff;
} */



</style>
