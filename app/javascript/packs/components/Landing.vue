<template>
  <div class="page-container">
    <md-app>
      <md-app-toolbar class="md-primary" md-elevation="0">
        <md-button class="md-icon-button" @click="toggleMenu" v-if="!menuVisible">
          <md-icon>menu</md-icon>
        </md-button>
        <span class="md-title">ToDo App</span>
      </md-app-toolbar>

      <md-app-drawer :md-active.sync="menuVisible" md-persistent="mini">
        <md-toolbar class="md-transparent" md-elevation="0">
          <span>Task View</span>

          <div class="md-toolbar-section-end">
            <md-button class="md-icon-button md-dense" @click="toggleMenu">
              <md-icon>keyboard_arrow_left</md-icon>
            </md-button>
          </div>
        </md-toolbar>

        <md-list>
          <md-list-item to="#">
              <md-icon>inbox</md-icon>
              <span class="md-list-item-text">Inbox</span>
          </md-list-item>

          <md-list-item to="#">
            <md-icon>today</md-icon>
            <span class="md-list-item-text">Today</span>
          </md-list-item>

          <md-list-item to="#">
            <md-icon>date_range</md-icon>
            <span class="md-list-item-text">Next 7 days</span>
          </md-list-item>

          <md-list-item to="#">
            <md-icon>error</md-icon>
            <span class="md-list-item-text">Over Due</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>

      <md-app-content>
          <router-view></router-view>
      </md-app-content>
    </md-app>
  </div>
</template>

<script>
  export default {
    name: 'Landing',
    data: () => ({
      menuVisible: false
    }),
    methods: {
      toggleMenu () {
        this.menuVisible = !this.menuVisible
      }
    }
  }
</script>

<style lang="scss" scoped>
  .md-app {
      height: 100%;
      min-height: 350px;
  }
</style>
