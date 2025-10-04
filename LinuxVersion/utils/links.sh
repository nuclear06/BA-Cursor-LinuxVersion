#!/usr/bin/env bash

# pointer / default arrow
ln -s millennium_base left_ptr
ln -s millennium_base default
ln -s millennium_base arrow
ln -s millennium_base mouse

# link / clickable
ln -s millennium_link pointer
ln -s millennium_link link
ln -s millennium_link fleur

# text input
ln -s millennium_text text
ln -s millennium_text xterm

# busy
ln -s cat busy
ln -s cat wait

# working in background / progress
ln -s millennium_background_aris left_ptr_watch
ln -s millennium_background_aris progress
ln -s millennium_background_aris half-busy

# vertical resize
ln -s millennium_NS ns-resize
ln -s millennium_NS row-resize
ln -s millennium_NS sb_v_double_arrow
ln -s millennium_NS n-resize
ln -s millennium_NS s-resize

# horizontal resize
ln -s millennium_EW ew-resize
ln -s millennium_EW col-resize
ln -s millennium_EW sb_h_double_arrow
ln -s millennium_EW e-resize
ln -s millennium_EW w-resize

# diagonal resize 1
ln -s millennium_diag1 nwse-resize
ln -s millennium_diag1 nw-resize
ln -s millennium_diag1 se-resize
ln -s millennium_diag1 fdiag

# diagonal resize 2
ln -s millennium_diag2 nesw-resize
ln -s millennium_diag2 ne-resize
ln -s millennium_diag2 sw-resize
ln -s millennium_diag2 bdiag

# move 
ln -s millennium_move move
ln -s millennium_move all-scroll
ln -s millennium_move dnd-move

# help
ln -s millennium_help_rio help

# cross / area select
ln -s millennium_areaselect cross
ln -s millennium_areaselect crosshair

# hand / pen
ln -s millennium_pen hand2
ln -s millennium_alternative hand1 # Since alternative is rarely used, it's also used here

# grab
ln -s millennium_pen grabbing
ln -s millennium_alternative grab

# unavailable / forbidden
ln -s millennium_block not-allowed
ln -s millennium_block no-drop

ln -s millennium_alternative alternate

# other aliases
ln -s millennium_link alias
ln -s millennium_areaselect cell
ln -s millennium_move closedhand
ln -s millennium_pen color-picker
ln -s millennium_areaselect cross_reverse
ln -s millennium_areaselect diamond_cross
ln -s millennium_move dnd-none
ln -s millennium_pen draft
ln -s millennium_base draft_large
ln -s millennium_base draft_small
ln -s millennium_link openhand
ln -s millennium_base pirate
ln -s millennium_link pointing_hand
ln -s millennium_move size_all
ln -s millennium_diag2 size_bdiag
ln -s millennium_diag1 size_fdiag
ln -s millennium_EW size-hor
ln -s millennium_NS size-ver
ln -s millennium_EW split_h
ln -s millennium_NS split_v
ln -s millennium_areaselect target
ln -s millennium_base top_left_arrow
ln -s millennium_NS up-arrow
ln -s millennium_help_rio whats_this
ln -s millennium_base x-cursor
