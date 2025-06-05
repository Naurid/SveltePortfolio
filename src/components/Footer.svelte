<nav>
	<div class="brand">
		<div class="link">
			<a>Gabor</a>
		</div>
	</div>

</nav>

<style>

    nav{
        display: flex;
        justify-content: center;
        align-items: center;
        position: fixed;
        bottom: 0;
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