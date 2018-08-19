<template>
  <div id="app">
      <navigationbar></navigationbar>
      <p>{{ message }}</p>
      <router-view></router-view>
      <material/>
  </div>
</template>

<script>
import Header from './components/Header.vue'
import Material from './components/MaterialSample.vue'

export default {
    data: function () {
        return {
            message: "Hello Vue!"
        }
    },
    components: {
        'navigationbar': Header,
        'material': Material
    }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
