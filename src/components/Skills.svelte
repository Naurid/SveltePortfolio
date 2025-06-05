<script>
import SectionContainer from './Utils/SectionContainer.svelte';
import CardContainer from './Utils/CardContainer.svelte';
import Card from './Utils/Card.svelte';
</script>

<SectionContainer>
	<h1 class="centered" id="Skills">Skills</h1>
	<h2 class="centered">Programming Languages</h2>
	<CardContainer>
		<Card accentColor="purple" cardTitle="C#" cardDescription="High proficiency both with Unity C# and Desktop Oriented solutions as well as web apis" iconUrl="https://www.jetbrains.com/guide/assets/csharp-logo-265a149e.svg" />
		<Card accentColor="yellow" cardTitle="Python" cardDescription="Basic knowledge" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/800px-Python.svg.png" />
		<Card accentColor="orange" cardTitle="HTML5" cardDescription="Average Level" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png" />
		<Card accentColor="blue" cardTitle="CSS3" cardDescription="Average Level" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1452px-CSS3_logo_and_wordmark.svg.png" />
		<Card accentColor="yellow" cardTitle="JavaScript" cardDescription="Average Level" iconUrl="https://www.conseil-webmaster.com/images/javascript.png" />
	</CardContainer>
	<h2 class="centered">Frameworks and Tools</h2>
	<CardContainer>
		<Card accentColor="orange" cardTitle="Svelte" cardDescription="Can build all kinds of websites" />
		<Card accentColor="blue" cardTitle="ASP .Net" cardDescription="Able to build RESTful APIs with security" iconUrl="https://www.ispirer.net/images/asp.net.logo.png" />
		<Card accentColor="purple" cardTitle="Blazor" cardDescription="Proficient mostly with WASM but knowledgeable about server-side rendering" iconUrl="https://upload.wikimedia.org/wikipedia/commons/d/d0/Blazor.png" />
		<Card accentColor="blue" cardTitle="Entity FrameWork Core" cardDescription="Proficient" iconUrl="https://www.tonycollett.com/content/images/wordpress/2023/07/entity-framework.png" />
	</CardContainer>
	<h2 class="centered">VideoGame Development</h2>
	<CardContainer>
		<Card accentColor="white" cardTitle="Unity" cardDescription="Capable of handling the development of a game from start to finish" iconUrl="https://zestedesavoir.com/media/galleries/24953/99eae788-f5e0-49bf-9c16-2057dbda069f.png"/>
		<Card accentColor="white" cardTitle="Unreal Engine" cardDescription="Beginner Level" iconUrl="https://cdn-content.qualisys.com/2020/09/unreal-engine-logo.png" />
		<Card accentColor="blue" cardTitle="Godot" cardDescription="Beginner level" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Godot_icon.svg/2048px-Godot_icon.svg.png" />
	</CardContainer>
	<h2 class="centered">Containerization</h2>
	<CardContainer>
		<Card accentColor="blue" cardTitle="Docker" cardDescription="Capable to deploy individual containers or networks" iconUrl="https://images.icon-icons.com/2415/PNG/512/docker_original_logo_icon_146556.png"/>
	</CardContainer>
	<h2 class="centered">Cloud Computing</h2>
	<CardContainer>
		<Card accentColor="blue" cardTitle="Azure" cardDescription="Able to develop and deploy apps using Azure" iconUrl="https://upload.wikimedia.org/wikipedia/fr/b/b6/Microsoft-Azure.png"/>
	</CardContainer>
	<h2 class="centered">CICD</h2>
	<CardContainer>
		<Card accentColor="blue" cardTitle="Azure" cardDescription="Able to setup pipelines using Azure" iconUrl="https://upload.wikimedia.org/wikipedia/fr/b/b6/Microsoft-Azure.png"/>
		<Card accentColor="orange" cardTitle="GitLab Pipelines" cardDescription="able to setup deployment pipelines with GitLab pipelines" iconUrl="https://gitlab.com/uploads/-/system/project/avatar/53062200/gitlab-ci-cd.png"/>
		<Card accentColor="white" cardTitle="GitHub Actions" cardDescription="able to setup deployment pipelines with Github Actions" iconUrl="https://static-00.iconduck.com/assets.00/githubactions-icon-512x512-jbpvj4ny.png"/>
	</CardContainer>
	<h2 class="centered">Version Control</h2>
	<CardContainer>
		<Card accentColor="orange" cardTitle="Git" cardDescription="Able to use git proficiently whether it is with commands in bash or with a visual interface" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/250px-Git_icon.svg.png"/>
		<Card accentColor="blue" cardTitle="Azure" cardDescription="" iconUrl="https://upload.wikimedia.org/wikipedia/fr/b/b6/Microsoft-Azure.png"/>
		<Card accentColor="orange" cardTitle="GitLab" cardDescription="" iconUrl="https://www.incredibuild.com/wp-content/uploads/2021/04/GitLab01.png"/>
		<Card accentColor="white" cardTitle="GitHub" cardDescription="" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/langfr-250px-GitHub_Invertocat_Logo.svg.png"/>
	</CardContainer>
	<h2 class="centered">Database</h2>
	<CardContainer>
		<Card accentColor="blue" cardTitle="MSSQL" cardDescription="Most experience" iconUrl="https://elest.io/images/softwares/70/logo.png"/>
		<Card accentColor="blue" cardTitle="MySQL" cardDescription="" iconUrl="https://www.ideematic.com/wp-content/uploads/2018/02/mysql.png"/>
		<Card accentColor="blue" cardTitle="PostgreSQL" cardDescription="" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/1200px-Postgresql_elephant.svg.png"/>
		<Card accentColor="green" cardTitle="MongoDB" cardDescription="" iconUrl="https://mongodb.gallerycdn.vsassets.io/extensions/mongodb/mongodb-vscode/1.13.2/1746638517643/Microsoft.VisualStudio.Services.Icons.Default"/>
	</CardContainer>
	<h2 class="centered">Audit & Monitoring</h2>
	<CardContainer>
		<Card accentColor="orange" cardTitle="Prometheus" cardDescription="" iconUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Prometheus_software_logo.svg/1200px-Prometheus_software_logo.svg.png"/>
		<Card accentColor="orange" cardTitle="Grafana" cardDescription="" iconUrl="https://cp.beget.com/shared/k7LP9iqQxx3SCGKlHuq6e08b-gVs1deK/logo_grafana.png"/>
	</CardContainer>
	<h2 class="centered">Languages</h2>
	<CardContainer>
		<Card accentColor="blue" cardTitle="French" cardDescription="Proficient (C2)" iconUrl="https://borney.com/2395-large_default/964.jpg"/>
		<Card accentColor="green" cardTitle="Hungarian" cardDescription="Proficient (C2)" iconUrl="https://media.magflags.net/media/catalog/product/cache/bbfe81b5dc693f3f88259968def067fa/H/U/HU-_-1x1.5_4.png"/>
		<Card accentColor="blue" cardTitle="English" cardDescription="Proficient (C1)" iconUrl="https://gabor-vilics.be/Assets/England_Flag.png" paddingTop="45"/>
		<Card accentColor="yellow" cardTitle="Flemish" cardDescription="Beginner (A1)" iconUrl="https://gabor-vilics.be/Assets/Flandre_Flag.png" paddingTop="45"/>
	</CardContainer>
</SectionContainer>