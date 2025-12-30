source "$HOME/.zsh_environment"

sdk install java 17.0.11-tem
sdk default java 17.0.11-tem
sdk use java 17.0.11-tem

sdkmanager --update
sdkmanager --licenses

sdkmanager \
  "platform-tools" \
  "build-tools;36.0.0"

sdkmanager \
  "platforms;android-36" \
  "sources;android-36"

sdkmanager \
  "ndk;29.0.14206865" \
  "cmake;4.1.2"
