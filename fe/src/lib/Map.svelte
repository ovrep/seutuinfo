<script lang='ts'>
    import { onMount, onDestroy } from 'svelte';
    import 'leaflet/dist/leaflet.css';
    import type { Map } from 'leaflet';

    let mapElement: HTMLElement;
    let map: Map;

    onMount(async () => {
        const leaflet = await import('leaflet');

        map = leaflet.map(mapElement).setView([60.192059, 24.945831], 13);

        leaflet.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        leaflet.marker([60.192059, 24.945831]).addTo(map)
            .bindPopup('Pojuperjantai')
            .openPopup();
    });

    onDestroy(async () => {
        if(map) {
            console.log('Unloading Leaflet map.');
            map.remove();
        }
    });
</script>


<main>
    <div bind:this={mapElement}></div>
</main>

<style>
    @import 'leaflet/dist/leaflet.css';
    main div {
        height: 800px;
    }
</style>

