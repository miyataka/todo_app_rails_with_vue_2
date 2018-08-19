<template>
  <div id="app">
      <landing></landing>
  </div>
</template>

<script>
import Landing from './components/Landing.vue'

export default {
    data: function () {
        return {
            message: "Hello Vue!"
        }
    },
    components: {
        'landing': Landing,
    }
}
</script>

<style scoped>
</style>
