<template>
  <div class="gif" v-if="environment == 'dev'">
    {{ url }}
  </div>
  <div v-else>
    <img src="https://placekitten.com/100/100" alt="katten" />
  </div>
</template>

<script>
export default {
  name: "Gif",
  data() {
    return {
      environment: process.env.NODE_ENV,
      url: process.env.SOLUTION_1,
    };
  },
};
</script>

<style>
.img {
  padding: 1rem;
  margin: 1rem;
  border: 1px solid black;
}
</style>
