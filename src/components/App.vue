<template>
  <div>
    <button @click="amount++">Click me</button>
    <p>the amount of click are {{ amount }}</p>
    <Gif></Gif>
    <button @click="getOne">Get Joke</button>
     <p>{{joke}}</p>
  </div>
</template>
<script>


import Gif from "./Gif.vue"


export default {
  components:{
    Gif
  },
  data() {
    return {
      amount: 0,
      passion: process.env.SECRET_PASSION,
      solution1: process.env.SOLUTION_1,
      solution2: process.env.SRC,
      url:process.env.URL,
      joke:""
    };
  },
  methods: {
   async getOne() {
      try {
        const res = await fetch(this.url);
        const data = await res.json();
        console.log("fetch data", data.value.joke);
        return (this.joke = data.value.joke);
      } catch (error) {
        console.log(error);
      }
      // fetch(this.url)
      //   .then((res) => res.json())
      //   .then((data) => {
      //     console.log(data);
      //   });
    },
  },
};
</script>

<style>
button{
  padding: 1rem;
  border-radius: .3rem;
}
</style>
