<script>
	let {date = "unknown", title="untitled experience", subtitle="unknown", skills = ["yes", "no"]} = $props();
</script>

<div class="tvcard-container">
	<div class="date-container"> {date}</div>
	<div class="tvcard">
		<h1 class="h2">{title}</h1>
		<h2>{subtitle}</h2>
		<div class="skills-container">
			<ul>
				{#each skills as skill, index (index)}
				<li>{skill}</li>
				{/each}
			</ul>
		</div>
	</div>
</div>


<style>
		.tvcard-container{
				display: flex;
				justify-content: space-between;
				width: 100vw;
				&:hover .date-container {
						color: white;
				}
				&:hover .skills-container li{
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

		.skills-container {
				position: absolute;
				right: 5rem;
				height: 100%;
		}

    .skills-container ul {
        /* 1. Make the ul a flex container */
        display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				height: 100%;

        /* 2. Allow items to wrap to the next line */
        flex-wrap: wrap;

        /* 3. (Recommended) Add a gap between the items */
        gap: 5px; /* You can adjust the row and column gap */

        /* --- Optional styling --- */
        list-style: none; /* Removes the default bullet points */
        padding: 15px;
        margin: 0;
    }

		ul{
				list-style: none;
		}
		li{
				font-size: 2rem;
				padding-right: 15px;
				color: rgba(255, 255, 255, 0);
				transition: all .5s ease-in-out;
		}
</style>