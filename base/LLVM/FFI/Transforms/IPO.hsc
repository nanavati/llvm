{-# LANGUAGE ForeignFunctionInterface, EmptyDataDecls, CPP #-}

module LLVM.FFI.Transforms.IPO where

import LLVM.FFI.Core

foreign import ccall unsafe "LLVMAddArgumentPromotionPass" addArgumentPromotionPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddConstantMergePass" addConstantMergePass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddDeadArgEliminationPass" addDeadArgEliminationPass
    :: PassManagerRef -> IO ()
#if HS_LLVM_VERSION < 300
foreign import ccall unsafe "LLVMAddDeadTypeEliminationPass" addDeadTypeEliminationPass
    :: PassManagerRef -> IO ()
#endif
foreign import ccall unsafe "LLVMAddFunctionAttrsPass" addFunctionAttrsPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddFunctionInliningPass" addFunctionInliningPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddGlobalDCEPass" addGlobalDCEPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddGlobalOptimizerPass" addGlobalOptimizerPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddIPConstantPropagationPass" addIPConstantPropagationPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddPruneEHPass" addPruneEHPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddIPSCCPPass" addIPSCCPPass
    :: PassManagerRef -> IO ()
#if HS_LLVM_VERSION < 300
foreign import ccall unsafe "LLVMAddRaiseAllocationsPass" addRaiseAllocationsPass
    :: PassManagerRef -> IO ()
#endif
foreign import ccall unsafe "LLVMAddStripDeadPrototypesPass" addStripDeadPrototypesPass
    :: PassManagerRef -> IO ()
foreign import ccall unsafe "LLVMAddStripSymbolsPass" addStripSymbolsPass
    :: PassManagerRef -> IO ()
