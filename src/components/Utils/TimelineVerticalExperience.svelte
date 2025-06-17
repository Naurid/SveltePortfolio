<script>
	let {date = "unknown", title="untitled experience", subtitle="unknown", icon = '', link = ''} = $props();
</script>

<div class="tvcard-container" >
	<div class="date-container"> {date}</div>
	<a class="tvcard" href={link}>
		<h1 class="h2">{title}</h1>
		<h2>{subtitle}</h2>
		<p>Click to go to website</p>
		<img src="{icon}" alt="yes"/>
	</a>
</div>


<style>
    .tvcard-container{
        display: flex;
        justify-content: space-between;
        width: 100%;
        &:hover .date-container {
            color: white;
        }
        &:hover img{
            opacity: 1;
        }
				&:hover .tvcard p{
						color: white;
        }

    }

    .date-container {
        width: 100%;
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        color: black;
        font-size: 2rem;
        transition: all .5s ease-in-out;
    }

    .tvcard {
        height: 30vh;
        width: 600%;
        justify-self: end;
        padding: 2rem;
        margin: 1rem 5rem 3rem 1rem;
        /* From https://css.glass */
        background: var(--card-bg);
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        border: 1px solid rgba(191, 180, 180, 0.86);
        transition: all .5s ease-in-out;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: start;
    }

    .tvcard img{
				position: absolute;
				height: 100%;
				right: 3rem;
				opacity: 0;
				transition: opacity .5s ease-in-out;
		}
		.tvcard p {
				color: rgba(255, 255, 255, 0);
				transition: all .5s ease-in-out;
		}

		a{
				text-decoration: none;
				color: white;
		}
</style>