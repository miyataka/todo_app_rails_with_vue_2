<template>
  <div id="app">
      <navigationbar></navigationbar>
      <p>{{ message }}</p>
      <router-view></router-view>
  </div>
</template>

<script>
import Header from './components/Header.vue'

export default {
    data: function () {
        return {
            message: "Hello Vue!"
        }
    },
    components: {
        'navigationbar': Header
    }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
