#Make it look like a package
from glob import glob
from os import environ
from os.path import basename, dirname
from pdb import set_trace

#gather all the files here
modules = [basename(i.replace('.py','')) for i in glob('%s/[A-Za-z]*.py' % dirname(__file__))]
print ('\n\ndatastructures modules: ', modules)
__all__ = []
structure_list=[]
for module_name in modules:
    module = __import__(module_name, globals(), locals(), [module_name])
    print('\ndatastructures module: ', module)
    for model_name in [i for i in dir(module) if 'TrainData' in i]:
        
        #remove base class
        if 'TrainDataDeepJet' == model_name: continue
        if 'TrainDataDeepJetDelphes' == model_name: continue
        
        print('datastructures modelname: ', model_name)
        model = getattr(module, model_name)
        globals()[model_name] = model
        locals( )[model_name] = model

        if __all__ is not None:
            __all__.append(model_name)
        else:
            __all__ = [model_name]
        
        if structure_list is not None:
            structure_list.append(model_name)
        else:
            structure_list = [model_name]
