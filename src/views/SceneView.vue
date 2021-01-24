<template>
    <div id="viewDiv"></div>
</template>

<script>
import { loadModules } from 'esri-loader'
import options from '../APIVersion'

export default {
  name: 'SceneView',
  methods: {
    createScene () {
      loadModules([
        'esri/Map',
        'esri/views/SceneView'
      ], {
        options
      }).then(([Map, SceneView]) => {
        const map = new Map({
          basemap: 'satellite',
          ground: 'world-elevation'
        })
        const sceneView = new SceneView({
          container: 'viewDiv',
          map
        })

        console.log('sceneView', sceneView)
      })
    }
  },
  mounted () {
    this.createScene()
  }

}
</script>

<style>

#viewDiv {
  height: 800px;
  width: 100%;
}
</style>
