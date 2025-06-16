<script>
	import NavBar from '../components/NavBar.svelte';
	import Profile from '../components/Profile.svelte';
	import Footer from '../components/Footer.svelte';
	import Education from '../components/Education.svelte';
	import Skills from '../components/Skills.svelte';
	import Experience from '../components/Experience.svelte';
	import Projects from '../components/Projects.svelte';
	import ContactForm from '../components/ContactForm.svelte';
	import Separator from '../components/Utils/Separator.svelte';
</script>

<NavBar/>
<Profile/>
<Separator height=50 />
<Skills/>
<Separator height=50 />
<Education/>
<Separator height=50 />
<Experience/>
<Separator height=50 />
<Projects/>
<Separator height=50 />
<ContactForm/>
<Separator height=50 />
<Footer/>