<template>
  <div class="table">
      <md-field class="md-layout-item">
          <label><md-icon>search</md-icon>search by taskname ...</label>
          <md-input name="query" v-model="searchQuery"></md-input>
          <md-button class="md-primary md-fab md-mini"><md-icon>search</md-icon></md-button>
      </md-field>
      <md-field class="md-layout-item" @submit="createTask()">
          <label><md-icon>edit</md-icon>Create Task ...</label>
          <md-input type="text" v-model="newTask"></md-input>
          <md-button type="submit" @click="createTask()" class="md-accent md-fab md-mini"><md-icon>add</md-icon></md-button>
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
import axios from 'axios';

export default {
  name: 'Table',
  data () {
    return {
	  searchQuery: '',
      newTask: '',
	  gridColumns: ['is_done', 'name', 'due'],
	  gridData: [
	    //{ name: 'Sample Task1', is_done: true,     due: "2018/08/19"},
	  ]
    }
  },
  components: { Grid },
  mounted: function () {
      this.fetchTasks();
      this.ready();
  },
  methods: {
    fetchTasks: function() {
        axios.get('/api/v1/tasks')
            .then((response) => {
                for(var i = 0; i < response.data.tasks.length; i++) {
                    this.gridData.push(response.data.tasks[i]);
                }
            }, (error) => {
                console.log(error);
            });
    },
    createTask: function() {
        if (!this.newTask) return;
        axios.post('/api/v1/tasks', { task: { name: this.newTask } })
            .then((response) => {
                this.gridData.unshift(response.data.task);
                this.newTask = '';
            }, (error) => {
                console.log(error)
            });
    },
    ready: function() {
        document.onkeyup = function(e) {
            if (e.ctrlKey && e.which == 13) {
                createTask;
            }
        }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>
