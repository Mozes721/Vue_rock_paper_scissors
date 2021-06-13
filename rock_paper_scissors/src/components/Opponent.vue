<template>
  <div class="container">
	<button class="button" v-on:click="randomChoice()">Random Choice</button>
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