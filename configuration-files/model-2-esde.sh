#!/bin/bash
source $HOME/.config/EmuDeck/backend/functions/all.sh

	if [[ $(grep -rnw "$es_systemsFile" -e 'model2') == "" ]]; then
		xmlstarlet ed -S --inplace --subnode '/systemList' --type elem --name 'system' \
		--var newSystem '$prev' \
		--subnode '$newSystem' --type elem --name 'name' -v 'model2' \
		--subnode '$newSystem' --type elem --name 'fullname' -v 'Sega Model 2' \
		--subnode '$newSystem' --type elem --name 'path' -v '%ROMPATH%/model2/roms' \
		--subnode '$newSystem' --type elem --name 'extension' -v '.zip .ZIP' \
		--subnode '$newSystem' --type elem --name 'commandP' -v "/usr/bin/bash ${toolsPath}/launchers/model-2.sh %BASENAME%" \
		--insert '$newSystem/commandP' --type attr --name 'label' --value "Model 2 Emulator (Proton)" \
		--subnode '$newSystem' --type elem --name 'platform' -v 'model2' \
		--subnode '$newSystem' --type elem --name 'theme' -v 'model2' \
		-r 'systemList/system/commandP' -v 'command' \
		"$es_systemsFile"

		#format doc to make it look nice
		xmlstarlet fo "$es_systemsFile" > "$es_systemsFile".tmp && mv "$es_systemsFile".tmp "$es_systemsFile"
		echo "Model 2 added to EmulationStation-DE custom_systems"
	fi
