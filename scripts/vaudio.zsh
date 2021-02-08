# Activate Virtual Audio
function activate_virtual_audio() {
  pactl load-module module-null-sink sink_name=VSpeaker sink_properties=device.description=VSpeaker
  pactl load-module module-remap-source source_name=RemapVSpeaker master=VSpeaker.monitor
}