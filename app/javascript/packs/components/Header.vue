<template>
    <header id="header" class="row">
        <div id="logo" class="col">
            <p>TODO-APP</p>
        </div>
        <div id="menu" class="col">
            <p>header-menu</p>
        </div>
        <p>{{ message }}</p>
    </header>
</template>

<script>
export default {
    name: 'landing',
    data: function () {
        return {
            message: 'i am header.'
        }
    }
}
</script>

<style>
</style>

