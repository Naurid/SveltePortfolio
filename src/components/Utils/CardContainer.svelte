<div class="card-container">
	<slot>
		<p>No cards yet in this container</p>
	</slot>
</div>

<style>

	.card-container {
			display: flex;
			justify-content: center;
			align-items: center;
			padding: 50px;
			gap: 4rem;
			flex-wrap: wrap;
	}
</style>