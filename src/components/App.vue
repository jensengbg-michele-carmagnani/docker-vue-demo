<template>
  <div>
    <button @click="amount++">Click me</button>
    <p>the amount of click are {{amount}}</p>
  <p>{{passsion}}</p>
  </div>
</template>
<script>
    console.log('process.env.PASSWORD', process.env.SECRET_PASSION )
    console.log('process.env.PASSWORD', process.env )
export default {
  data() {
    return {
      amount : 0,
      passsion: process.env.SECRET_PASSION
    }
  },
  methods:{

  }

}
</script>

<style>

</style>