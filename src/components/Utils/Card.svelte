<script>
	let {
		accentColor = 'green',
		iconUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Svelte_Logo.svg/1200px-Svelte_Logo.svg.png',
		cardTitle = 'card title',
		cardDescription = 'this is a placeholder description for the card element',
		paddingTop = 0}
		= $props();
</script>

<div class="card {accentColor}">
	<img style="padding-top: {paddingTop}px" src="{iconUrl}" alt=""/>
	<div class="card-text">
		<h4 class="{accentColor}">{cardTitle}</h4>
		<p>{cardDescription}</p>
	</div>
</div>

<style>
	.card{
			height: 30rem;
			width: 20rem;
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 30px 25px;
      /* From https://css.glass */
      background: var(--card-bg);
      box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(5px);
      -webkit-backdrop-filter: blur(5px);
      border: 1px solid rgba(191, 180, 180, 0.86);
			transition: all .5s ease-in-out;
			&.green:hover {
					box-shadow: 20px 20px 20px var(--hl-primary);
      }
      &.white:hover {
          box-shadow: 20px 20px 20px #fff;
      }
      &.orange:hover {
          box-shadow: 20px 20px 20px #e77110;
      }
      &.yellow:hover {
          box-shadow: 20px 20px 20px #ebcb2a;
      }
      &.blue:hover {
          box-shadow: 20px 20px 20px #2858ea;
      }
      &.purple:hover {
          box-shadow: 20px 20px 20px #512bd4;
      }
			&:hover .card-text{
					opacity: 1;
			}
	}

	img{
			width: 95%;
			height: auto;
	}

	.card-text{
			height: 35%;
			overflow: hidden;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			position: absolute;
			bottom: 0;
			padding: 15px;
			opacity: 0;
      transition: all 0.5s ease-in-out;
	}

	.card-text h4{
			font-size: 1.5rem;
      &.green{
					color: var(--hl-primary);
			}
      &.white {
					color: white;
      }
      &.orange {
					color: #e77110;
      }
      &.yellow {
					color: #ebcb2a;
      }
      &.blue{
					color: #879ef3;
			}
      &.purple{
					color: #7865d3;
			}
	}

	.card-text p{
			text-align: center;
	}
	
	@media(max-width: 1095px) {
			.card{
          &.green {
              box-shadow: 20px 20px 20px var(--hl-primary);
          }
          &.white {
              box-shadow: 20px 20px 20px #fff;
          }
          &.orange {
              box-shadow: 20px 20px 20px #e77110;
          }
          &.yellow {
              box-shadow: 20px 20px 20px #ebcb2a;
          }
          &.blue {
              box-shadow: 20px 20px 20px #2858ea;
          }
          &.purple {
              box-shadow: 20px 20px 20px #512bd4;
          }
          & .card-text{
              opacity: 1;
          }
			}
	}
</style>