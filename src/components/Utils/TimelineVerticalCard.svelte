<!--<script>-->
<!--	let {date = "unknown", title="untitled experience", subtitle="unknown", skills = ["yes", "no"]} = $props();-->
<!--</script>-->

<!--<div class="tvcard-container">-->
<!--	<div class="date-container"> {date}</div>-->
<!--	<div class="tvcard">-->
<!--		<h1 class="h3">{title}</h1>-->
<!--		<h2>{subtitle}</h2>-->
<!--		<div class="skills-container">-->
<!--			<ul>-->
<!--				{#each skills as skill, index (index)}-->
<!--				<li>{skill}</li>-->
<!--				{/each}-->
<!--			</ul>-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->


<!--<style>-->
<!--		.tvcard-container{-->
<!--				display: flex;-->
<!--				justify-content: space-between;-->
<!--				width: 100%;-->
<!--				&:hover .date-container {-->
<!--						color: white;-->
<!--				}-->
<!--				&:hover .skills-container li{-->
<!--						color: white;-->
<!--				}-->

<!--		}-->

<!--		.date-container {-->
<!--				width: 100%;-->
<!--				text-align: center;-->
<!--				display: flex;-->
<!--				justify-content: center;-->
<!--				align-items: center;-->
<!--				color: black;-->
<!--				font-size: 2rem;-->
<!--				transition: all .5s ease-in-out;-->
<!--		}-->

<!--		.tvcard {-->
<!--				height: 30vh;-->
<!--				width: 600%;-->
<!--				justify-self: end;-->
<!--				padding: 1rem;-->
<!--				margin: 1rem 5rem 3rem 1rem;-->
<!--				/* From https://css.glass */-->
<!--				background: var(&#45;&#45;card-bg);-->
<!--				box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);-->
<!--				backdrop-filter: blur(5px);-->
<!--				-webkit-backdrop-filter: blur(5px);-->
<!--				border: 1px solid rgba(191, 180, 180, 0.86);-->
<!--				transition: all .5s ease-in-out;-->
<!--				display: flex;-->
<!--				flex-direction: column;-->
<!--				justify-content: center;-->
<!--				align-items: start;-->
<!--		}-->

<!--    .skills-container {-->
<!--        width: auto;-->
<!--        margin-top: 0;-->
<!--    }-->

<!--    .skills-container ul {-->
<!--        /* 1. Make the ul a flex container */-->
<!--        display: flex;-->
<!--				justify-content: center;-->
<!--				align-items: center;-->
<!--				height: 100%;-->

<!--        /* 2. Allow items to wrap to the next line */-->
<!--        flex-wrap: wrap;-->

<!--        /* 3. (Recommended) Add a gap between the items */-->
<!--        gap: 5px; /* You can adjust the row and column gap */-->

<!--        /* -&#45;&#45; Optional styling -&#45;&#45; */-->
<!--        list-style: none; /* Removes the default bullet points */-->
<!--        padding: 15px;-->
<!--        margin: 0;-->
<!--    }-->
<!--    .skills-container ul {-->
<!--        display: flex;-->
<!--        flex-wrap: wrap;-->
<!--        gap: 0.75rem 1rem;-->
<!--        padding: 0;-->
<!--        margin: 0;-->
<!--        list-style: none;-->
<!--        justify-content: flex-start;-->
<!--    }-->

<!--    li {-->
<!--        font-size: 1.5rem;-->
<!--        padding-right: 0;-->
<!--        color: rgba(255, 255, 255, 0);-->
<!--        transition: all 0.5s ease-in-out;-->
<!--    }-->

<!--		/*ul{*/-->
<!--		/*		list-style: none;*/-->
<!--		/*}*/-->
<!--		/*li{*/-->
<!--		/*		font-size: 2rem;*/-->
<!--		/*		padding-right: 15px;*/-->
<!--		/*		color: rgba(255, 255, 255, 0);*/-->
<!--		/*		transition: all .5s ease-in-out;*/-->
<!--		/*}*/-->

<!--		.h3 {-->
<!--				font-size: 3rem;-->
<!--		}-->
<!--</style>-->
<script>
	export let date = "unknown";
	export let title = "untitled experience";
	export let subtitle = "unknown";
	export let skills = ["yes", "no"];
</script>

<div class="tvcard-container">
	<div class="date-container">{date}</div>
	<div class="tvcard">
		<h1 class="h3">{title}</h1>
		<h2 class="subtitle">{subtitle}</h2>
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
    .tvcard-container {
        display: flex;
        width: 97%;
				height: 15rem;
        gap: 1rem;

        &:hover .date-container {
            color: white;
        }

        &:hover .skills-container li {
            color: white;
        }
    }

    .tvcard {
        flex: 1 1 100%;
        min-width: 300px;
        padding: 1rem;
        margin: 1rem 0;
        background: var(--card-bg, rgba(255, 255, 255, 0.1));
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        border: 1px solid rgba(191, 180, 180, 0.86);
        transition: all 0.5s ease-in-out;

        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        position: relative;
    }

    .h3 {
        font-size: clamp(1.5rem, 4vw, 3rem);
        margin: 0;
    }

    .subtitle {
        font-size: clamp(1rem, 2.5vw, 1.5rem);
        margin: 0.5rem 0 2rem 0;
    }

    .skills-container {
        position: absolute;
        bottom: 1rem;
        left: 1rem;
        right: 1rem;
    }

    .skills-container ul {
        display: flex;
        flex-wrap: wrap;
        gap: 0.75rem 1rem;
        padding: 0;
        margin: 0;
        list-style: none;
        justify-content: flex-start;
    }

    li {
        font-size: clamp(0.9rem, 1.5vw, 1.2rem);
        color: rgba(255, 255, 255, 0);
        transition: all 0.5s ease-in-out;
    }

    .date-container {
        flex: 1 1 14%;
        display: flex;
        justify-content: center;
        align-items: center;
        color: black;
        font-size: clamp(1.2rem, 3vw, 2rem);
        text-align: center;
        transition: all 0.5s ease-in-out;
    }

    /* === Responsive Behavior === */
    @media (max-width: 1095px) {
        .tvcard-container {
            flex-direction: column;
						width: 90%;
						height: 23rem;
        }

        .tvcard {
            width: 90%;
        }

        .date-container {
            order: 1;
        }

        .skills-container {
            position: static;
            margin-top: auto;
        }
    }
</style>
