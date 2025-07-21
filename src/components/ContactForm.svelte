<script>
	import SectionContainer from './Utils/SectionContainer.svelte';
	import { quintOut } from 'svelte/easing';
	import { fly } from 'svelte/transition';

	// Form field variables, initialized as empty strings
	let name = '';
	let email = '';
	let subject = '';
	let message = '';

	// State variables for form submission
	let isLoading = false;
	let submissionSuccess = false;
	let submissionError = false;
	let errorMessage = '';

	// Function to reset form and messages
	function resetForm() {
		name = '';
		email = '';
		subject = '';
		message = '';
		submissionSuccess = false;
		submissionError = false;
		errorMessage = '';
	}

	// Function to handle form submission
	async function handleSubmit() {
		// Reset previous messages
		submissionSuccess = false;
		submissionError = false;
		errorMessage = '';

		// Basic validation
		if (!name || !email || !subject || !message) {
			submissionError = true;
			errorMessage = 'Please fill in all fields.';
			return; // Stop execution if validation fails
		}

		// Simple email format validation (more robust regex for production)
		const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		if (!emailRegex.test(email)) {
			submissionError = true;
			errorMessage = 'Please enter a valid email address.';
			return;
		}

		isLoading = true; // Set loading state

		try {
			const response = await fetch('https://api.web3forms.com/submit', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
					'Accept': 'application/json' // Important for Web3Forms to return JSON
				},
				body: JSON.stringify({
					access_key: '5f1be06b-aef3-4866-827c-9268b807e432', // Your Web3Forms access key
					name: name,
					email: email,
					subject: subject,
					message: message,
					// You can add more fields here if needed, e.g., 'from_name': 'Portfolio Contact Form'
					// Check Web3Forms documentation for all available fields
				})
			});

			const result = await response.json(); // Web3Forms always returns JSON

			if (result.success) {
				submissionSuccess = true;
				resetForm(); // Clear form on success
			} else {
				// Web3Forms provides a 'message' field for errors
				throw new Error(result.message || 'An unknown error occurred during submission.');
			}

		} catch (error) {
			submissionError = true;
			errorMessage = error.message;
			console.error('Contact form submission error:', error);
		} finally {
			isLoading = false; // Reset loading state
		}
	}

</script>

<SectionContainer>
	<h1 class="centered h1" id="Contact">Contact Me</h1>

	{#if submissionSuccess}
		<p class="success-message" in:fly="{{ y: -20, duration: 500, easing: quintOut }}">
			Thank you for your message! We'll get back to you soon.
		</p>
	{:else if submissionError}
		<p class="error-message" in:fly="{{ y: -20, duration: 500, easing: quintOut }}">
			Error: {errorMessage}
		</p>
	{/if}

	<form on:submit|preventDefault={handleSubmit}>
		<div class="form-group">
			<label for="name">Name:</label>
			<input
				type="text"
				id="name"
				bind:value={name}
				required
				aria-required="true"
				disabled={isLoading}
			/>
		</div>

		<div class="form-group">
			<label for="email">Email:</label>
			<input
				type="email"
				id="email"
				bind:value={email}
				required
				aria-required="true"
				disabled={isLoading}
			/>
		</div>

		<div class="form-group">
			<label for="subject">Subject:</label>
			<input
				type="text"
				id="subject"
				bind:value={subject}
				required
				aria-required="true"
				disabled={isLoading}
			/>
		</div>

		<div class="form-group">
			<label for="message">Message:</label>
			<textarea
				id="message"
				bind:value={message}
				required
				aria-required="true"
				rows="5"
				disabled={isLoading}
			></textarea>
		</div>

		<button type="submit" disabled={isLoading}>
			{#if isLoading}
				Sending...
			{:else}
				Send Message
			{/if}
		</button>
	</form>
</SectionContainer>

<style>
		form{
				width: 50%;
		}
    .form-group {
        margin-bottom: 20px;
				width: 100%;
				justify-self: center;
    }

    label {
        display: block;
        margin-bottom: 8px;
				font-size: 1.5rem;
        font-weight: bold;
        color: white;
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: calc(100% - 20px); /* Account for padding */
        padding: 12px 10px;
        border: 1px solid #ccc;
        font-size: 1em;
        box-sizing: border-box; /* Include padding and border in the element's total width and height */
    }

    input:focus,
    textarea:focus {
        border-color: var(--hl-primary);
        outline: none;
        box-shadow: 0 0 0 3px rgba(42, 235, 94, 0.25);
    }

    textarea {
        resize: vertical; /* Allow vertical resizing only */
        min-height: 100px;
    }

    button {
        display: block;
        width: 50%;
				justify-self: center;
        padding: 12px 20px;
        background-color: var(--hl-primary);
        color: black;
        border: none;
        font-size: 1.1em;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover:not(:disabled) {
        background-color: rgba(42, 235, 94, 0.25);
				color: white;
    }

    button:disabled {
        background-color: #cccccc;
        cursor: not-allowed;
    }

    .success-message {
        background-color: #d4edda;
        color: #155724;
        border: 1px solid #c3e6cb;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        text-align: center;
				justify-self: center;
				width: 45%;
    }

    .error-message {
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        text-align: center;
        justify-self: center;
        width: 45%;
    }
</style>