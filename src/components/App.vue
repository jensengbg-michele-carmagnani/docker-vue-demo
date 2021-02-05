<template>
  <div>
    <button @click="amount++">Click me</button>
    <p>the amount of click are {{amount}}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      amount : 0
    }
  },
  methods:{

  }

}
</script>

<style>

</style>