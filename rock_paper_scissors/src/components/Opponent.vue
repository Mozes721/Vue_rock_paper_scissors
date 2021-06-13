<template>
  <div class="container">
	<button class="button" @click="opponentCounter">Press Me!</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      counter: 0
    };
  },
  methods: {
    opponentCounter() {
      this.counter++;
      this.$emit('changeScore', this.counter)
    },
  }
};
</script>

<style scoped>

</style>