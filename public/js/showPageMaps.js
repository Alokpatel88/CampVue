mapboxgl.accessToken = mapToken; // Ensure this is your Mapbox access token

const map = new mapboxgl.Map({
    container: 'map', // The ID of the HTML element to hold the map
    style: 'mapbox://styles/mapbox/outdoors-v11', // Style URL for green nature theme
    center: campground.geometry.coordinates, // Initial map center [lng, lat]
    zoom: 10 // Initial zoom level
});

map.addControl(new mapboxgl.NavigationControl());

const marker = new mapboxgl.Marker()
    .setLngLat(campground.geometry.coordinates)
    .setPopup(
        new mapboxgl.Popup({ offset: 25 })
            .setHTML(
                `<h5>${campground.title}</h5><p>${campground.location}</p>`
            )
    ).addTo(map);
