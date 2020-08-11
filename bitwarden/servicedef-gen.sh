. ./source.sh
out=defs
if [ -d $out ]; then
  rm -r $out
fi
mkdir -p $out

docker-compose -f dc.main.yaml -f dc.prod.yaml config > $out/dc.bitwarden.yaml
