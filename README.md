# Slowhand

A minimal blues metronome for slow practice. Single HTML file, no build step.

Runs a kick/snare/hihat pattern via [Strudel](https://strudel.cc) (loaded from CDN) at tempos tuned for blues — 20 to 80 BPM. Pick a preset, nudge the tempo, hit play. The code box is a live Strudel editor — edit the pattern directly before or during playback.

## Usage

| Input | Action |
|---|---|
| `1` – `8` | Jump to preset: 10, 20, 30 … 80 BPM |
| `−` / `+` buttons | Nudge BPM by selected step |
| `±1` `±2` `±5` `±10` | Select nudge step size |
| `Space` or `Enter` | Play / Stop |
| Code editor | Edit the Strudel pattern live — changes take effect on next play |
| `COPY` | Copy current pattern code to clipboard |

On first play, samples load from the network — there may be a brief delay.

## Run locally

```sh
./serve.sh
```

Starts a local HTTP server on port 8080 and opens the browser.

## Deploy

Drop `index.html` on [Netlify Drop](https://app.netlify.com/drop).
