# blue-kali

a kali docker container with basic investigative and web tooling
for *relative* speedy deployment.

kali is **huge**. 
kali's libraries are bigger. 

to save container pull down speed, hand selected a few tools to auto install.
do not allow build container to exceed 1GB

creates a versions file with tool version and size of each installed binary
to swap out unused/ large binaries.

