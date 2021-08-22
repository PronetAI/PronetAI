URL="$1"
if [[ ! "$URL" =~ ^https?:// ]]; then
    echo "$0: invalid url '$URL'" >&2
    exit 1
fi
while ! curl -s --max-time 5 --head "$URL" >/dev/null; do
    sleep 0.5
done
