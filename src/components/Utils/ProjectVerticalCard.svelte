<!--<script>-->
<!--	let {link='', title='',description='',imglink=''}= $props();-->
<!--</script>-->

<!--<a class="project-container" href={link}>-->
<!--	<img src={imglink} alt={imglink}/>-->
<!--	<div class="description">-->
<!--		<h1>{title}</h1>-->
<!--		<h2>{description}</h2>-->
<!--		<p>-->
<!--			Click here to go website...-->
<!--		</p>-->
<!--	</div>-->
<!--</a>-->

<!--<style>-->
<!--	.project-container {-->
<!--			display: flex;-->
<!--			padding: 10px;-->
<!--			justify-self: center;-->
<!--			width: 90%;-->
<!--			height: 40vh;-->
<!--      background: var(&#45;&#45;card-bg);-->
<!--      box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);-->
<!--      backdrop-filter: blur(5px);-->
<!--      -webkit-backdrop-filter: blur(5px);-->
<!--      border: 1px solid rgba(191, 180, 180, 0.86);-->
<!--      transition: all .5s ease-in-out;-->
<!--			margin-top: 5rem;-->
<!--	}-->

<!--	.project-container img{-->
<!--			width: 65rem;-->
<!--			height: auto;-->
<!--			object-fit: contain;-->
<!--	}-->

<!--	.description {-->
<!--			width: 500%;-->
<!--			display: flex;-->
<!--			flex-direction: column;-->
<!--			justify-content: center;-->
<!--			padding-left: 20px;-->
<!--	}-->

<!--	.description p{-->
<!--			color: rgba(255, 255, 255, 0);-->
<!--      transition: all .5s ease-in-out;-->
<!--	}-->

<!--	a{-->
<!--			text-decoration: none;-->
<!--			color: white;-->
<!--	}-->

<!--	a:hover p{-->
<!--			color: white;-->
<!--	}-->
<!--</style>-->

<script>
	let { link = '', title = '', description = '', imglink = '' } = $props();
</script>

<a class="project-container" href={link} style={`--bg-img: url(${imglink})`}>
	<img src={imglink} alt={title} class="project-image" />
	<div class="description">
		<h1>{title}</h1>
		<h2>{description}</h2>
		<p>Click here to go website...</p>
	</div>
</a>

<style>
    .project-container {
        display: flex;
        flex-direction: row;
        width: 90%;
        height: 40vh;
        margin-top: 5rem;
        padding: 10px;
        background: var(--card-bg, rgba(255, 255, 255, 0.05));
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        border: 1px solid rgba(191, 180, 180, 0.86);
        transition: all 0.5s ease-in-out;
        text-decoration: none;
        color: white;
        position: relative;
        overflow: hidden;
    }

    .project-image {
        width: 65rem;
        height: auto;
        object-fit: contain;
    }

    .description {
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding-left: 2rem;
        z-index: 2;
    }

    h1 {
        font-size: clamp(1.5rem, 5vw, 3rem);
        margin: 0;
    }

    h2 {
        font-size: clamp(1rem, 3vw, 2rem);
        margin: 0.5rem 0;
    }

    p {
        font-size: clamp(0.9rem, 2vw, 1.2rem);
        color: rgba(255, 255, 255, 0);
        transition: color 0.5s ease-in-out;
    }

    a:hover p {
        color: white;
    }

    /* === Mobile Styles === */
    @media (max-width: 1095px) {
        .project-container {
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: auto;
            padding: 2rem;
            background-image: var(--bg-img); /* ← Use the CSS variable here */
            background-size: cover;
            background-position: center;
        }

        .project-image {
            display: none;
        }

        .description {
            padding: 1rem;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(2px);
            width: 100%;
            border-radius: 10px;
        }

        p {
            color: white !important;
        }
    }
</style>
