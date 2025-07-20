<script>
	import Logo from './Logo.svelte';
	let isMenuOpen = false;
	let toggleEl;

	function toggleMenu() {
		isMenuOpen = !isMenuOpen;
	}

	function clickOutside(node) {
		const handleClick = event => {
			// Prevent closing when toggle is clicked
			if (node.contains(event.target) || toggleEl.contains(event.target)) return;

			isMenuOpen = false;
		};

		document.addEventListener('click', handleClick, true);

		return {
			destroy() {
				document.removeEventListener('click', handleClick, true);
			}
		};
	}
</script>

<nav>
	<div class="brand">
		<a href="#Profile">
<!--			<Logo color="#2AEB5EFF" height="1024px" width="1024px"/>-->
			<svg id="ePmANIG1QwW1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="5rem" height="5rem" viewBox="0 0 1024 1024" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" >
				<g transform="matrix(1.98594 0 0 1.973161-293.3893-230.684937)">
					<polygon points="107.499878,-199.062226 258.5,-199.062226 259,-0.562347 -5.253936,-0.562348 29,-59.562347 201.123537,-59.562348 201.123537,-137.062348 77.153546,-137.062349 107.499878,-199.062226" transform="translate(381.925696 533.602487)" fill="#2aeb5e" stroke-width="0"/>
					<polygon points="-519.34776,-321.711614 -393.752738,-169.939119 -82.000368,-255.926345 -252.726421,89.88738 -302.957099,29.187241 -201.739824,-156.839344 -412.510712,-95.357702 -567.11372,-282.184247 -519.34776,-321.711614" transform="matrix(-.637538 0.770419-.770419-.637538 66.778689 447.424437)" fill="#2aeb5e" stroke-width="0"/>
				</g>
			</svg>
		</a>
	</div>

	<div class="menu-toggle" bind:this={toggleEl} on:click={toggleMenu} aria-label="Toggle menu">
		<span class:is-open={isMenuOpen}></span>
		<span class:is-open={isMenuOpen}></span>
		<span class:is-open={isMenuOpen}></span>
	</div>

	<!-- Desktop Links -->
	<div class="links desktop-only">
		<a class="link" href="#Profile">Home</a>
		<a class="link" href="#Skills">Skills</a>
		<a class="link" href="#Education">Education</a>
		<a class="link" href="#Experience">Experience</a>
		<a class="link" href="#Projects">Projects</a>
		<a class="link" href="#Contact">Contact</a>
	</div>

	<!-- Slide Menu (Mobile) -->

</nav>

<div class="slide-menu" class:show={isMenuOpen} use:clickOutside>
	<a class="link" href="#Profile" on:click={() => isMenuOpen = false}>Home</a>
	<a class="link" href="#Skills" on:click={() => isMenuOpen = false}>Skills</a>
	<a class="link" href="#Education" on:click={() => isMenuOpen = false}>Education</a>
	<a class="link" href="#Experience" on:click={() => isMenuOpen = false}>Experience</a>
	<a class="link" href="#Projects" on:click={() => isMenuOpen = false}>Projects</a>
	<a class="link" href="#Contact" on:click={() => isMenuOpen = false}>Contact</a>
</div>

<style>

    nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        width: 100%;
        background: rgba(61, 60, 60, 0.82);
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(7.4px);
        -webkit-backdrop-filter: blur(7.4px);
        z-index: 999999;
    }

    .brand a {
        color: var(--hl-primary);
				padding-left: 2rem;
    }

	.brand{
			padding: -10rem
	}

    .links,
    .slide-menu {
        gap: 3rem;
				padding-right: 2rem;
    }

    .links.desktop-only {
        display: flex;
        gap: 3rem; /* increased from 2rem to 3rem */
        align-items: center;
    }

    .link {
        font-size: 1.5rem;
        color: white;
        text-decoration: none;
        transition: all 0.3s ease-in-out;
    }

    .link:hover {
        color: var(--hl-primary);
        cursor: pointer;
        text-underline-offset: 5px;
    }

    .menu-toggle {
        display: none;
        flex-direction: column;
        justify-content: space-between;
        width: 30px;
        height: 20px;
        cursor: pointer;
        z-index: 1000000;
				padding-right: 2rem;
    }

    .menu-toggle span {
        display: block;
        height: 3px;
        width: 100%;
        background-color: white;
        border-radius: 2px;
        transition: all 0.3s ease-in-out;
    }

    /* Animate to "X" */
    .menu-toggle span.is-open:nth-child(1) {
        transform: translateY(8px) rotate(45deg);
    }

    .menu-toggle span.is-open:nth-child(2) {
        opacity: 0;
    }

    .menu-toggle span.is-open:nth-child(3) {
        transform: translateY(-8px) rotate(-45deg);
    }

    .slide-menu {
        position: fixed;
        top: 3rem;
        right: -100%;
        height: fit-content;
        width: 20%;
        background-color: rgba(61, 60, 60, 0.95);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        display: flex;
        flex-direction: column;
        align-items: start;
        padding: 2rem 2rem;
        transition: right 0.3s ease-in-out;
    }

    .slide-menu.show {
        right: 0;
    }

    /* Responsive Behavior */
    @media (max-width: 1095px) {
        .desktop-only,
				.links.desktop-only{
            display: none;
        }

        .menu-toggle {
            display: flex;
        }
    }

    @media (min-width: 1095px) {
        .slide-menu {
            display: none;
        }
    }
</style>
