from toontown.coghq.DistributedFactory import DistributedFactory


class DistributedImpossibleFactory(DistributedFactory):
    notify = directNotify.newCategory('DistributedImpossibleFactory')
    
    def getFloorOuchLevel(self):
        return 12
