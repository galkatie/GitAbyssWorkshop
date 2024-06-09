#!/bin/sh

cd ..

mkdir SubmodulesBundle
cd SubmodulesBundle

mkdir AbyssWorkshopOrigins
cd AbyssWorkshopOrigins

git clone --bare --branch submodules https://github.com/galkatie/GitAbyssWorkshop.git GitAbyss
git clone --bare https://github.com/rkstonex/GitAbyssWorkshop.git PartnerRepo

cd ..

git clone ./AbyssWorkshopOrigins/GitAbyss me
git clone ./AbyssWorkshopOrigins/GitAbyss coworker



