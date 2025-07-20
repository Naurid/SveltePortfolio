<!--<script>-->
<!--	let {lineColor = "#2aeb5e"} = $props();-->
<!--</script>-->

<!--<div class="line" style="background-color: {lineColor};"></div>-->

<!--<style>-->
<!--	.line{-->
<!--			width: 7px;-->
<!--			border-radius: 15px;-->
<!--			position: absolute;-->
<!--			left: 20rem;-->
<!--			height: 95%-->
<!--	}-->
<!--</style>-->

<script>
	export let lineColor = "#2aeb5e";
</script>

<div class="line" style="background-color: {lineColor};"></div>

<style>
    .line {
        width: .5vw; /* Responsive width relative to viewport width */
        border-radius: 15px;
        position: absolute;
        left: 12%; /* Position relative to parent/container */
        height: 95%; /* Height relative to viewport height */
    }

    /* Optional: Make sure the container is relative positioned */
    :global(body) {
        margin: 0;
        position: relative;
        height: 100vh;
    }

    @media (max-width: 1095px) {
				.line {
						visibility: hidden;
				}
		}

</style>