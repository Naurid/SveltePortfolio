<div class="container">
<slot>
	<p> this element doesn't have anything in it...</p>
</slot>
</div>

<style>
	.container{
			width: 100%;
			height: fit-content;
			position: relative;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
	}
</style>