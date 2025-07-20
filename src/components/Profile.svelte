<script>
	import Portrait from '$lib/Assets/PortraitMariage.jpg'
</script>

<div class="profile-container" id="Profile">
	<div class="img-container">
		<img src={Portrait} alt="very handsome man with a big smile"/>
	</div>
	<div class="text-container">
		<h1>Hey, it's <span>Gabor</span></h1>
		<h3 class="typing-text">I am a <span> </span></h3>
		<p>I’m a motivated and versatile professional with experience mostly in C# in Unity and the .Net environment.
			I bring strong skills in problem-solving, teamwork, and communication, and I’m always looking for ways to contribute and grow.
			I’m passionate about learning new things and taking on challenges.
			I’m excited to bring my adaptable mindset and drive to a new opportunity.
		</p>
	</div>
</div>

<style>
    .profile-container {
        display: flex;
				justify-content: center;
				align-items: center;
        width: 100%;
        min-height: 100vh;
        padding: 5rem;
        box-sizing: border-box;
    }

    .img-container {
        width: 100%;
        padding: 25px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .img-container img {
        width: 100%;
        max-width: 500px;
        height: auto;
        box-shadow: 25px 25px var(--hl-primary);
        object-fit: cover;
    }

    .text-container {
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        padding-left: 50px;
        gap: 15px;
    }

    h1 {
        font-size: 6rem;
    }

    span {
        color: var(--hl-primary);
    }

    .typing-text {
        font-size: 34px;
        font-weight: 600;
        min-width: 280px;
    }

    .typing-text span {
        position: relative;
    }

    .typing-text span::before {
        content: "Game Developer";
        color: var(--hl-primary);
        animation: words 20s infinite;
    }

    .typing-text span::after {
        content: "";
        background-color: black;
        position: relative;
        width: calc(100% + 8px);
        height: 100%;
        border-left: 3px solid black;
        right: -8px;
        animation: cursor 0.6s infinite;
    }

    p {
        font-size: 1.8rem;
    }

    @keyframes cursor {
        to {
            border-left: 3px solid var(--hl-primary);
        }
    }

    @keyframes words {
        0%, 16% {
            content: "Unity Developer";
        }
        17%, 33% {
            content: "C# Programmer";
        }
        34%, 49% {
            content: "Web Developer";
        }
        50%, 66% {
            content: "DevSecOps in .NET";
        }
        67%, 83% {
            content: "Blazor Dev";
        }
        84%, 100% {
            content: "Video Game Enthusiast";
        }
    }

    /* 🔽 Responsive Styling */
    @media (max-width: 1095px) {
        .profile-container {
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .text-container {
            padding-left: 0;
            align-items: center;
        }

        .img-container img {
            width: 100%;
            height: auto;
            box-shadow: 25px 25px var(--hl-primary);
            object-fit: cover;
        }

        h1 {
            font-size: 3.5rem;
        }

        .typing-text {
            font-size: 24px;
        }

        p {
            font-size: 1.4rem;
        }
    }
</style>
