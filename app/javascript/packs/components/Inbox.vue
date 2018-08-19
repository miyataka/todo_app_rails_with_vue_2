<template>
  <div class="table">
      <md-field class="md-layout-item">
          <label><md-icon>search</md-icon>search by taskname ...</label>
          <md-input name="query" v-model="searchQuery"></md-input>
          <md-button class="md-primary md-fab md-mini"><md-icon>search</md-icon></md-button>
      </md-field>
      <md-field class="md-layout-item">
          <label><md-icon>edit</md-icon>Create Task ...</label>
          <md-input v-model="newTask"></md-input>
          <md-button class="md-accent md-fab md-mini"><md-icon>add</md-icon></md-button>
      </md-field>
    <grid
      :data="gridData"
      :columns="gridColumns"
      :filter-key="searchQuery">
    </grid>
  </div>
</template>

<script>
import Grid from './Grid';

export default {
  name: 'Table',
  data () {
    return {
	  searchQuery: '',
      newTask: '',
	  gridColumns: ['is_done', 'name', 'due'],
	  gridData: [
	    { name: 'Sample Task1', is_done: true,     due: "2018/08/19"},
	    { name: 'Sample Task2', is_done: true,     due: "2018/08/18"},
	    { name: 'Sample Task3', is_done: true,     due: "2018/08/17"},
	    { name: 'Sample Task4', is_done: true,     due: "2018/08/17"},
	    { name: 'Sample Task5', is_done: true,     due: "2018/08/17"},
	    { name: 'Sample Task6', is_done: true,     due: "2018/08/17"},
	    { name: 'Sample Task7', is_done: true,     due: "2018/08/17"},
	    { name: 'Sample Task8', is_done: true,     due: "2018/08/17"},
	    { name: 'Chuck Norris', is_done: false,    due: null },
	    { name: 'Bruce Lee',    is_done: false,    due: null },
	    { name: 'Jackie Chan',  is_done: false,    due: null },
	    { name: 'Jet Li',       is_done: false,    due: null },
	  ]
    }
  },
  components: { Grid },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>
