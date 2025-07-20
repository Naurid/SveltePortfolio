<nav>
	<div class="brand">
		<div class="link">
			<a href="#Profile">G</a>
		</div>
	</div>
	<div class="links">
		<div class="link">
			<a href="#Profile">Home</a>
		</div>
		<div class="link">
			<a href="#Skills">Skills</a>
		</div>
		<div class="link">
			<a href="#Education">Education</a>
		</div>
		<div class="link">
			<a href="#Experience">Experience</a>
		</div>
		<div class="link">
			<a href="#Projects">Projects</a>
		</div>
		<div class="link">
			<a href="#Contact">Contact</a>
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
      background: rgba(61, 60, 60, 0.82);
      box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(7.4px);
      -webkit-backdrop-filter: blur(7.4px);
			z-index: 999999999;
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
			color: white;
			text-decoration: none;
			transition: all .3s ease-in-out;
			&:hover{
					cursor: pointer;
					text-underline-offset: 5px;
					color: var(--hl-primary);
      }
	}
</style>