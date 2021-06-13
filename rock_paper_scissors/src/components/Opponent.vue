<template>
  <div class="container">
	<button id="child" class="button" v-on:click="randomChoice()">Random Choice</button>
  </div>
</template>

<script>
const choices = ["rock", "paper", "scissors"];
export default {
  data() {
    return {
      choice: ""
    };
  },
props: [ 'opponent_choice'],
  methods: {
    randomChoice() {
	const randomChoiceIndex = Math.floor(Math.random() * choices.length);
	this.choice = choices[randomChoiceIndex];
	this.$emit('getChoice', this.choice);
    },
  }
};
</script>

<style scoped>

</style>