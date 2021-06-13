<template>
  <div class="container">
	<button v-on:click="rockChosen()">rock</button>
  <button v-on:click="paperChosen()">paper</button>
  <button v-on:click="scissorsChosen()">scissors</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      choice: ""
    };
  },
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

</style>