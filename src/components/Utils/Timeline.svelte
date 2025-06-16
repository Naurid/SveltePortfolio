<script>
	let {lineColor = "#2aeb5e"} = $props();
</script>

<div class="line" style="background-color: {lineColor};"></div>

<style>
	.line{
			width: 7px;
			border-radius: 15px;
			position: absolute;
			left: 20rem;
			height: 95%
	}
</style>