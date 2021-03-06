# GoAppEngineの存在確認
goapp=`which goapp 2>&1`
if [[ ! "${?}" = "0" ]]; then
  echo "Need to install `goapp` to execute this script."
  exit 127
fi
GOAPPROOT="`dirname $goapp`/goroot"

export GOROOT="${GOAPPROOT}"   # GoAppEngineのGOROOTを設定する
export GOPATH="`pwd`"          # プロジェクトルートをGOPATHに設定する
export GOBIN="${GOPATH}/bin"
# export PATH=${GOBIN}:${PATH} # 必要ならばパスを通しておく