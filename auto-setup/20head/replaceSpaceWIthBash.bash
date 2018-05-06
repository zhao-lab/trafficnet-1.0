for f in *\ *; do mv "$f" "${f// /_}"; done
for f in *-*; do mv "$f" "${f//-/_}"; done