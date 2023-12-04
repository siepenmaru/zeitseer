<script lang="ts">
	import { invoke } from "@tauri-apps/api/tauri";

	let name = ''
	let output = ''
	async function greet() {
		output = await invoke("greet", { name })
	}
</script>

<div class="items-center text-center">
	<h1>Hello</h1>
	<div class="items-center text-center">
		<input class="input" id="greet-input" type="text" placeholder="Enter a name..." bind:value="{name}" />
		<button class="btn variant-filled-primary" on:click|preventDefault={greet}>Greet</button>
		{#if output}
			<p>{output}</p>
		{/if}
	</div>
</div>