<template>
  <md-table v-model="filteredData" md-sort="due" md-sort-order="asc">
      <md-table-toolbar>
          <h1 class="md-title">ToDos</h1>
      </md-table-toolbar>
      <md-table-row slot="md-table-row" slot-scope="{ item }">
          <md-table-cell md-label="is_done" md-sort-by="is_done">{{ item.is_done }}</md-table-cell>
          <md-table-cell md-label="name" md-sort-by="name">{{ item.name }}</md-table-cell>
          <md-table-cell md-label="due" md-sort-by="due">{{ item.due }}</md-table-cell>
      </md-table-row>
      <!--
      <md-table-row>
        <md-table-head v-for="key in columns"
          @click="sortBy(key)"
          :class="{ active: sortKey == key }">
          {{ key | capitalize }}
          <span class="arrow" :class="sortOrders[key] > 0 ? 'asc' : 'dsc'">
          </span>
        </md-table-head>
      </md-table-row>
      <md-table-row v-for="entry in filteredData">
        <md-table-cell v-for="key in columns">
          {{ entry[key] }}
        </md-table-cell>
      </md-table-row>
      -->
  </md-table>
</template>

<script>
export default {
  name: 'Grid',
  props: {
    data: Array,
	columns: Array,
	filterKey: String
  },
  data () {
    let sortOrders = {}
	this.columns.forEach(function(key) {
	  sortOrders[key] = 1
	})
    return {
	  sortKey: '',
	  sortOrders: sortOrders,
      todoArray: this.data
    }
  },
  computed: {
    filteredData: function () {
  	  let sortKey = this.sortKey;
  	  let filterKey = this.filterKey && this.filterKey.toLowerCase();
  	  let order = this.sortOrders[sortKey] || 1;
  	  let data = this.data;
  	  if (filterKey) {
        data = data.filter(function (row) {
            return Object.keys(row).some(function(key) {
                return String(row[key]).toLowerCase().indexOf(filterKey) > -1
            })
        })
      }
      if (sortKey) {
        data = data.slice().sort(function (a, b) {
          a = a[sortKey];
          b = b[sortKey];
          return (a === b ? 0 : a > b ? 1 : -1) * order
        })
      }
      return data
    }
  },
  filters: {
    capitalize: function (str) {
      return str.charAt(0).toUpperCase() + str.slice(1)
    }
  },
  methods: {
    sortBy: function (key) {
      this.sortKey = key
      this.sortOrders[key] = this.sortOrders[key] * -1
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
