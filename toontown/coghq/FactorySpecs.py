from toontown.toonbase import ToontownGlobals
import SellbotLegFactorySpec
import SellbotLegFactoryCogs
import LawbotLegFactorySpec
import LawbotLegFactoryCogs

def getFactorySpecModule(factoryId):
    return FactorySpecModules[factoryId]


def getCogSpecModule(factoryId):
    return CogSpecModules[factoryId]


FactorySpecModules = {ToontownGlobals.SellbotFactoryInt: SellbotLegFactorySpec,
 ToontownGlobals.LawbotOfficeInt: LawbotLegFactorySpec}
CogSpecModules = {ToontownGlobals.SellbotFactoryInt: SellbotLegFactoryCogs,
 ToontownGlobals.LawbotOfficeInt: LawbotLegFactoryCogs}

if config.GetBool('want-brutal-factory', True):
	import SellbotBrutalLegFactorySpec
	import SellbotBrutalLegFactoryCogs
	import SellbotImpossibleLegFactorySpec
	import SellbotImpossibleLegFactoryCogs
	FactorySpecModules[ToontownGlobals.SellbotBrutalFactoryInt] = SellbotBrutalLegFactorySpec
	CogSpecModules[ToontownGlobals.SellbotBrutalFactoryInt] = SellbotBrutalLegFactoryCogs
	FactorySpecModules[ToontownGlobals.SellbotImpossibleFactoryInt] = SellbotImpossibleLegFactorySpec
	CogSpecModules[ToontownGlobals.SellbotImpossibleFactoryInt] = SellbotImpossibleLegFactoryCogs
 
if __dev__:
    import FactoryMockupSpec
    FactorySpecModules[ToontownGlobals.MockupFactoryId] = FactoryMockupSpec
    import FactoryMockupCogs
    CogSpecModules[ToontownGlobals.MockupFactoryId] = FactoryMockupCogs
