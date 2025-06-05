<nav>
	<div class="brand">
		<div class="link">
			<a>Gabor</a>
		</div>
	</div>
	<div class="links">
		<div class="link">
			<a>Home</a>
		</div>
		<div class="link">
			<a>Skills</a>
		</div>
		<div class="link">
			<a>Education</a>
		</div>
		<div class="link">
			<a>Experience</a>
		</div>
		<div class="link">
			<a>Projects</a>
		</div>
		<div class="link">
			<a>Contact</a>
		</div>
	</div>
</nav>

<style>

	nav{
      display: flex;
      justify-content: center;
      align-items: center;
			position: fixed;
			top: 0;
			width: 100vw;
			height: 5vh;
      background-color: #3d3c3c;
	}

	.brand,
	.brand a{
			width: 200%;
			font-size: 3rem;
			font-weight: 550;
			justify-self: start;
			padding: 25px;
			color : var(--hl-primary);
	}

	.links{
			width: 500%;
			display: flex;
			justify-content: end;
			align-items: center;
			padding: 25px;
			gap: 25px;
	}

	.links .link{
			font-size: 2rem;
	}

	nav a{
			transition: all .3s ease-in-out;
			&:hover{
					cursor: pointer;
					text-decoration: underline solid var(--hl-primary) 1px;
					text-underline-offset: 5px;
					color: var(--hl-primary);
      }
	}
</style>