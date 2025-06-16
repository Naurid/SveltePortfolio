<script>
	let {link='', title='',description='',imglink=''}= $props();
</script>

<a class="project-container" href={link}>
	<img src={imglink} alt={imglink}/>
	<div class="description">
		<h1>{title}</h1>
		<h2>{description}</h2>
		<p>
			Click here to go website...
		</p>
	</div>
</a>

<style>
	.project-container {
			display: flex;
			padding: 10px;
			justify-self: center;
			width: 90%;
			height: 40vh;
      background: var(--card-bg);
      box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(5px);
      -webkit-backdrop-filter: blur(5px);
      border: 1px solid rgba(191, 180, 180, 0.86);
      transition: all .5s ease-in-out;
			margin-top: 5rem;
	}

	.project-container img{
			width: 50rem;
			height: auto;
	}

	.description {
			width: 500%;
			display: flex;
			flex-direction: column;
			justify-content: center;
			padding-left: 20px;
	}

	.description p{
			color: rgba(255, 255, 255, 0);
      transition: all .5s ease-in-out;
	}

	a{
			text-decoration: none;
			color: white;
	}

	a:hover p{
			color: white;
	}
</style>