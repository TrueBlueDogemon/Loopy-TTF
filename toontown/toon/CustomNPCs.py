import json
from toontown.hood import ZoneUtil
from toontown.toon import Toon
from toontown.toon import NPCToons
from toontown.toon import ToonDNA
from toontown.nametag import NametagGlobals
from otp.ai.MagicWordGlobal import *


@magicWord(category = CATEGORY_MODERATOR, types = [str, str, str])
def spawnNPC(command, npcId, name):
    if command == 'add':
        if npcId == 'regular':
            npcId = NPC_REGULAR
        if npcId == 'clerk':
            npcId = NPC_CLERK
        npcs = []
        npc = Toon.Toon()
        npc.setName(name)
        npc.setHp(15)
        npc.setMaxHp(15)
        npc.setPickable(1)
        npc.setPlayerType(NametagGlobals.CCBotPlayer)
        npc.generateWithRequired(zoneId)
        dna = ToonDNA.ToonDNA()
        dna.newToonRandom(self, seed = None, gender = random.choice(['m', 'f']), npc = 1)
        npc.setDNAString(dna.makeNetString())
        npc.animFSM.request('neutral')
        npcs.append(createNPC(air, npcId, npcDesc, zoneId = ZoneUtil.getTrueZoneId(zoneId), posIndex=Point3(75, 75, 75)))
    elif command.lower == 'remove':
        npcs = []
        return 'NPCs cleared!'