CRYPTOGRAPHY_VERSION="$(/usr/bin/awk -F '==' '{ print $2 }' requirements.txt)"
/usr/bin/git clone --branch "${CRYPTOGRAPHY_VERSION}" --depth 1 https://github.com/pyca/cryptography.git
cd cryptography || exit
/usr/local/bin/python setup.py bdist_wheel
