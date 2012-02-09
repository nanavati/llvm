{-# LANGUAGE ForeignFunctionInterface, CPP #-}
module LLVM.Target.PIC16(initializeTarget) where

initializeTarget :: IO ()
#if HS_LLVM_VERSION < 300
initializeTarget = do
    initializePIC16TargetInfo
    initializePIC16Target

foreign import ccall unsafe "LLVMInitializePIC16TargetInfo" initializePIC16TargetInfo :: IO ()
foreign import ccall unsafe "LLVMInitializePIC16Target" initializePIC16Target :: IO ()
#else
initializeTarget = return ()
#endif