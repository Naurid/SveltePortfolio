<!--<script>-->
<!--	let {date = "unknown", title="untitled experience", subtitle="unknown", icon = '', link = ''} = $props();-->
<!--</script>-->

<!--<div class="tvcard-container" >-->
<!--	<div class="date-container"> {date}</div>-->
<!--	<a class="tvcard" href={link}>-->
<!--		<h1 class="h2">{title}</h1>-->
<!--		<h2>{subtitle}</h2>-->
<!--		<p>Click to go to website</p>-->
<!--		<img src="{icon}" alt="yes"/>-->
<!--	</a>-->
<!--</div>-->


<!--<style>-->
<!--    .tvcard-container{-->
<!--        display: flex;-->
<!--        justify-content: space-between;-->
<!--        width: 100%;-->
<!--        &:hover .date-container {-->
<!--            color: white;-->
<!--        }-->
<!--        &:hover img{-->
<!--            opacity: 1;-->
<!--        }-->
<!--				&:hover .tvcard p{-->
<!--						color: white;-->
<!--        }-->

<!--    }-->

<!--    .date-container {-->
<!--        width: 100%;-->
<!--        text-align: center;-->
<!--        display: flex;-->
<!--        justify-content: center;-->
<!--        align-items: center;-->
<!--        color: black;-->
<!--        font-size: 2rem;-->
<!--        transition: all .5s ease-in-out;-->
<!--    }-->

<!--    .tvcard {-->
<!--        height: 30vh;-->
<!--        width: 600%;-->
<!--        justify-self: end;-->
<!--        padding: 2rem;-->
<!--        margin: 1rem 5rem 3rem 1rem;-->
<!--        /* From https://css.glass */-->
<!--        background: var(&#45;&#45;card-bg);-->
<!--        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);-->
<!--        backdrop-filter: blur(5px);-->
<!--        -webkit-backdrop-filter: blur(5px);-->
<!--        border: 1px solid rgba(191, 180, 180, 0.86);-->
<!--        transition: all .5s ease-in-out;-->
<!--        display: flex;-->
<!--        flex-direction: column;-->
<!--        justify-content: center;-->
<!--        align-items: start;-->
<!--    }-->

<!--    .tvcard img{-->
<!--				position: absolute;-->
<!--				height: 100%;-->
<!--				right: 3rem;-->
<!--				opacity: 0;-->
<!--				transition: opacity .5s ease-in-out;-->
<!--		}-->
<!--		.tvcard p {-->
<!--				color: rgba(255, 255, 255, 0);-->
<!--				transition: all .5s ease-in-out;-->
<!--		}-->

<!--		a{-->
<!--				text-decoration: none;-->
<!--				color: white;-->
<!--		}-->
<!--</style>-->

<script>
	export let date = "unknown";
	export let title = "untitled experience";
	export let subtitle = "unknown";
	export let icon = '';
	export let link = '';
</script>

<div class="tvcard-container">
	<div class="date-container">{date}</div>
	<a class="tvcard" href={link} target="_blank" rel="noopener noreferrer">
		<h1 class="h2">{title}</h1>
		<h2 class="subtitle">{subtitle}</h2>
		<p class="cta-text">Click to go to website</p>
		<img src="{icon}" alt="icon" class="icon" />
	</a>

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

        /* Show icon + link text only on hover for desktop */
        &:hover .icon {
            opacity: 1;
        }

        &:hover .cta-text {
            color: white;
        }
    }

    .tvcard {
        flex: 1 1 100%;
        min-width: 300px;
        padding: 2rem;
        margin: 1rem 0;
        background: var(--card-bg, rgba(255, 255, 255, 0.1));
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        border: 1px solid rgba(191, 180, 180, 0.86);
        transition: all 0.5s ease-in-out;

        display: flex;
        flex-direction: column;
        justify-content: center;
        position: relative;
        text-decoration: none;
        color: white;
    }

    .h2 {
        font-size: clamp(1.5rem, 4vw, 3rem);
        margin: 0;
    }

    .subtitle {
        font-size: clamp(1rem, 2.5vw, 1.5rem);
        margin: 0.5rem 0 1rem 0;
    }

    .cta-text {
        font-size: clamp(0.9rem, 2vw, 1.2rem);
        color: rgba(255, 255, 255, 0);
        transition: color 0.5s ease-in-out;
    }

    .icon {
        position: absolute;
        height: 100%;
        right: 2rem;
        opacity: 0;
        transition: opacity 0.5s ease-in-out;
        object-fit: contain;
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

    /* === Responsive (Mobile) Adjustments === */
    @media (max-width: 1095px) {
        .tvcard-container {
            flex-direction: column;
            width: 90%;
            height: 30rem;
        }

        .tvcard {
            width: 90%;
        }

        .date-container {
            order: 1;
            margin-top: 1rem;
        }

        /* Always show link and icon on mobile */
        .cta-text {
            color: white !important;
        }

        .icon {
            position: static;
            opacity: 1 !important;
            width: 100px;
            height: auto;
        }
    }
</style>
