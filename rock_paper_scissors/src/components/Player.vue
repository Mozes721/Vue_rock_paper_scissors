<template>
  <div class="container">
  <img type="button" class="img" src="../assets/rock.jpeg" v-on:click="rockChosen()" />
  <img type="button" class="img" src="../assets/paper.jpeg" v-on:click="paperChosen()" />
  <img type="button" class="img" src="../assets/scissors.jpeg" v-on:click="scissorsChosen()" />
  </div>
</template>

<script>
export default {

  methods: {
    rockChosen() {
      this.$emit('getChoice', 'rock')
    },
    paperChosen() {
      this.$emit('getChoice', 'paper')
    },
    scissorsChosen() {
      this.$emit('getChoice', 'scissors')
    },
  }
};
</script>

<style scoped>
.container {
  display: grid;
  
}

.img {
  cursor:pointer;
  margin: 10px;
  height:100px;
  width: 70px;
  transform: rotate(90deg);
  border-radius: 10px
}
</style>
