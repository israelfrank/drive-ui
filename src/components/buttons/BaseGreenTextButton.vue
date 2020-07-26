<template>
  <v-btn text small @click="$emit('click')">
    <p id="back-button">{{label}}</p>
  </v-btn>
</template>

<script>
export default {
  name: "BaseClickHereButton",
  props: ["label"]
};
</script>

<style scoped>
#back-button {
  font-size: 20px;
  color: #88bcd9;
  text-decoration: underline;
}
</style>