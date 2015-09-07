import json
from toontown.hood import ZoneUtil
from toontown.toon import Toon
from toontown.toon import NPCToons
from toontown.toon import ToonDNA
from toontown.nametag import NametagGlobals
from otp.ai.MagicWordGlobal import *


@magicWord(category = CATEGORY_MODERATOR, types[str, str, str, str])
def npc(command, npcId, name, gender):
	npcs = []
	if command == 'add':
		npcId = NPCToons.NPC_REGULAR
		name = name
		if gender.lower() == 'm' or gender.lower() == 'male':
			gender = 'm'
		elif gender.lower() == 'f' or gender.lower() == 'female':
			gender = 'f'
		return 'Invalid gender.'
	elif command == 'remove':
		npcs = []
		return 'NPCs cleared!'
	dna = ToonDNA.ToonDNA()
	dna.newToonRandom()
    npc.setDNAString(dna.makeNetString())
    npc.animFSM.request('neutral')
	npcs.append(createNPC(air, npcId, npcDesc, zoneId = 2000, posIndex=i))