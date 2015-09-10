from toontown.hood import ZoneUtil
from toontown.toon import Toon
from toontown.toon import NPCToons
from toontown.toon import ToonDNA
from toontown.nametag import NametagGlobals
from otp.ai.MagicWordGlobal import *


@magicWord(category = CATEGORY_MODERATOR, types = [str, str, str])
def spawnNPC(command, npcId, name):
    invoker = spellbook.getTarget()
    if command == 'add':
        if npcId == 'regular':
            npcId = NPC_REGULAR
        if npcId == 'clerk':
            npcId = NPC_CLERK
        npc = Toon.Toon()
        npc.setName('Generic')
        npc.setPickable(1)
        npc.setHp(15)
        npc.setMaxHp(15)
        npc.setPlayerType(NametagGlobals.CCBotPlayer)
        dna = ToonDNA.ToonDNA()
        dna.newToonRandom(random.choice([99998, 99999]), random.choice(['m', 'f']), 1)
        dna.head = random.choice(ToonDNA.toonHeadTypes)
        npc.setDNAString(dna.makeNetString())
        npc.animFSM.request('neutral'))
        npc.setPos(random.nextint(0, 250), random.nextint(0, 100), 8)
        npc.setHpr(0, 0, 0)
    else:
        return 'Invalid or not implemented yet!'