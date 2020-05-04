[[ $ZSH_EVAL_CONTEXT =~ :file$ ]] && sourced=1 || sourced=0
if [ "$sourced" = "0" ]; then
    echo "devset.sh is a subshell, aborting..."
    exit 1
fi
echo "devset.sh is being sourced..."

export CEF_BUILD_VERSION=3770
if [ -z "$1" ]; then
    echo "Building default config method"
    export build_config=RelWithDebInfo
else
    echo "Buiding XCode method"
    export build_config=Debug
    export xcode_flags="-G Xcode"
fi
echo "CEF_BUILD_VERSION=${CEF_BUILD_VERSION}"
echo "build_config=${build_config}"
echo "xcode_flags=${xcode_flags}"
