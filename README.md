# Sandbox-Hello-World
Music Player Project
  - Buttons and Their Functions

AppEngine.pde and Pause_Button.pde have subprograms
    - AppEngine.pde subprograms
      - MusicPlayer232.pde
      - OperatingSystem.pde
    - Pause_Button.pde subprograms
      - Music_Player_Buttons.pde
     
# Buttons and Their Functions - Music Player
- Play-Pause:
  - keybind = P, p
  - The Play-Pause button will play the track when paused
  - The play-Pause button will pause the track when playing
  - If the track is 90% completed the Play-Pause button will function as a rewind button
- Stop:
  - keybind = S, s
  - The button stops the track from playing
- Fast-Forward:
  - keybind = F, f
  - The button permits the user to go forward in the tracks positon by 3 seconds per click.
  - If the track is at 75% completion the track no longer skips.
- Reverse:
  - keybind = R, r
  - The button allows the user to litsen to previous parts of the track by skipping back 3 seconds in the track per click.
  - If the track position is at 0 when the reverse button is clicked, the previous audio track will be selected and paused.
- Single-Loop:
  - keybind = 1
  - when the audio track has finished playing the track, the user may loop the track on click
  - The track will loop once on click
- Infinite-Loop:
  - keybind = 2, 3, 4, 5, 6, 7, 8, 9
  - When the audio track has finished playing the track, the user may loop the track on click
  - The track will continously playing until another track is selected
- Next Track:
  -keybinds = G, g
  - The button allows the user to skip to the next track of the playlist durring the current track playing
  - if the at the end of the playlist button will reselect the first track in the playlist.
  - if the track is not playing the button will function as a Single-Loop button
- Previous Track:
  - keybinds = H, h
  - The button allows the user to replay previous tracks in the playlist
  - if the button is pressed at the end of the playlist the previous Track button will select the final song in the playlist
  - if the track is not playing the button will function as a Single-Loop button
- Mute:
  - keybinds = M, m
  - The button allows the user to mute the audio until clicked again
- Auto-Play:
  - keybind = A, a
  - The button when clicked will continuously play songs within the playlist one after another until pressed again
---
