
local default_on = false

local key_toggle_equalizer = 'ctrl+e'


-- EQ settings --
--
-- the following eq settings are for DT 770 pro 250 Ohm with worn pads
-- change these settings to match your headphones!!
local gain_reduction = -5.5

-- frequency, q value, dB change
local eq_settings = {
  {33,    1.73,   -1.9},
  {74,    4.47,    4.3},
  {121,   4.62,   -2.4},
  {213,   4.51,    2.8},
  {2430,  5.35,   -1.3},
  {3421,  3.19,    5.8},
  {5936,  1.57,    2.3},
  {6385,  5.06,   -5.3},
  {19109, 0.12,   -4.2},
  {19438, 0.5,    -6.4},
}


-- Script --
local eq_on = default_on

local function toggle_equalizer()
  apply_gain()
  apply_eq()
  display_status()
  eq_on = not eq_on
end

if default_on then
  toggle_equalizer()
end


mp.add_forced_key_binding(key_toggle_equalizer, toggle_equalizer)
