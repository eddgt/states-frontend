<template>
    <div class="filter-box">
      <div class="input-group">
        <input type="text" class="form-control" v-model="filterText" @input="handleFilterChange" placeholder="Filter...">
        <div class="input-group-append">
          <span class="input-group-text"><i class="bi bi-search"></i></span>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'FilterBox',
    data() {
      return {
        filterText: ''
      };
    },
    methods: {
      handleFilterChange() {
        this.$emit('filter-change', this.filterText);
      }
    }
  };
  </script>
  
  <style scoped>
  /* Estilos personalizados */
  .filter-box {
    position: fixed;
    top: 20px; /* Ajusta la distancia desde la parte superior */
    right: 20px; /* Ajusta la distancia desde la derecha */
    z-index: 999; /* Asegura que la caja del filtro esté en la parte superior */
    width: 250px; /* Ancho personalizado de la caja de filtro */
  }
  
  /* Ajustes para la caja de búsqueda */
  .input-group {
    width: 100%;
  }
  
  /* Estilo del icono de búsqueda */
  .input-group-text {
    cursor: pointer;
  }
  </style>
  