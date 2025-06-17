<script>
	import SectionContainer from './Utils/SectionContainer.svelte';
	import ProjectVerticalCard from './Utils/ProjectVerticalCard.svelte';
	import portfolio_front from '$lib/Assets/portfolio_front.png';
	import receptek_front from '$lib/Assets/receptek_front.png';
</script>

<SectionContainer>
	<h1 class="centered h1" id="Projects">Projects</h1>
	<ProjectVerticalCard link="https://sqrl.itch.io/nowhere-express" imglink="https://img.itch.zone/aW1nLzEzNjg4OTgxLnBuZw==/original/DQcMdv.png" title="Nowhere Express" description="In this 3rd person  psychological horror game, play as the young graduate Jen and embark aboard a most peculiar train for a one way trip where absurdity, loss of direction and introspection are law."/>
	<ProjectVerticalCard link="/" imglink="{portfolio_front}" title="Portfolio" description="A Portfolio made with svelte"/>
	<ProjectVerticalCard link="" imglink="{receptek_front}" title="Receptek" description="Receptek is a website intended to be a hub for recipes"/>
</SectionContainer>