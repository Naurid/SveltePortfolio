<script>
	import SectionContainer from './Utils/SectionContainer.svelte';
	import Timeline from './Utils/Timeline.svelte';
	import TimelineVerticalCard from './Utils/TimelineVerticalCard.svelte';
</script>

<SectionContainer>
	<h1	class="h1 centered" id="Education"> Education </h1>
	<Timeline/>
	<TimelineVerticalCard date="2010 - 2016" title="Athénée Royal Jules Destrée de Marcinelle" subtitle="Secondaires" skills={["CESS"]} />
	<TimelineVerticalCard date="2016 - 2017" title="UMons" subtitle="Premiere année de Médecine" skills={[]}/>
	<TimelineVerticalCard date="2017 - 2021" title="HEPH Condorcet" subtitle="Kinésithérapie" skills={[]}/>
	<TimelineVerticalCard date="2021 - 2022" title="HEPH Condorcet" subtitle="Ergothérapie" skills={[]}/>
	<TimelineVerticalCard date="02/2023" title="TechnofuturTIC" subtitle="Formation d'introduction IT" skills={["HTML","CSS","Javascript","Python","SQL"]}/>
	<TimelineVerticalCard date="2023" title="Technocité Mons" subtitle="Formation en Game Development en C# sur Unity" skills={["C#","Unity","Git"]}/>
	<TimelineVerticalCard date="2024 - 2025" title="TechnofuturTIC" subtitle="Formation DevSecOps en .Net" skills={["C#","ASP.Net","ADO","EntityFrameWork.Core","Docker","SQL","Azure","Blazor", "CICD"]}/>
</SectionContainer>