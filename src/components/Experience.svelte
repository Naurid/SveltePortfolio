<script>
	import SectionContainer from './Utils/SectionContainer.svelte';
	import Timeline from './Utils/Timeline.svelte';
	import TimelineVerticalExperience from './Utils/TimelineVerticalExperience.svelte';
</script>

<SectionContainer>
	<h1 class="centered h1">Experience</h1>
	<Timeline/>
	<TimelineVerticalExperience date="2024" title="Clever Trickster Studio" subtitle="Junior Dev Intern" icon="https://clevertrickster.com/wp-content/uploads/2023/09/clever-trickster_logo_v7.png" link="https://clevertrickster.com"/>
	<TimelineVerticalExperience date="2024 - Now" title="Fiverr" subtitle="Freelance GameDev" icon="https://img.icons8.com/ios_filled/512/40C057/fiverr--v2.png" link="https://www.fiverr.com/s/385awaa"/>
</SectionContainer>