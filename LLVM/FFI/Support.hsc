{-# LANGUAGE ForeignFunctionInterface #-}

module LLVM.FFI.Support
    (
      createStandardModulePasses
    , createStandardFunctionPasses
    , addEmitObjectPass
    ) where

import Foreign.C.Types (CInt, CUInt)
import Foreign.C.String (CString)
import LLVM.FFI.Core (PassManagerRef, ModuleRef)

foreign import ccall unsafe "LLVMCreateStandardFunctionPasses" createStandardFunctionPasses
    :: PassManagerRef -> CUInt -> IO ()

foreign import ccall unsafe "LLVMCreateStandardModulePasses" createStandardModulePasses
    :: PassManagerRef -> CUInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

foreign import ccall unsafe "LLVMAddEmitObjectPass" addEmitObjectPass
    :: ModuleRef -> CString -> IO CUInt