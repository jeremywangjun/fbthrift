#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from cpython.ref cimport PyObject
from libcpp.memory cimport shared_ptr
from thrift.py3.server cimport cServerInterface, cAsyncProcessorFactory
from folly cimport cFollyExecutor



cdef extern from "src/gen-cpp2/SimpleService.h" namespace "py3::simple":
    cdef cppclass cSimpleServiceSvAsyncIf "py3::simple::SimpleServiceSvAsyncIf":
      pass

    cdef cppclass cSimpleServiceSvIf "py3::simple::SimpleServiceSvIf"(
            cSimpleServiceSvAsyncIf,
            cServerInterface):
        pass

cdef extern from "src/gen-cpp2/DerivedService.h" namespace "py3::simple":
    cdef cppclass cDerivedServiceSvAsyncIf "py3::simple::DerivedServiceSvAsyncIf":
      pass

    cdef cppclass cDerivedServiceSvIf "py3::simple::DerivedServiceSvIf"(
            cDerivedServiceSvAsyncIf,
            cSimpleServiceSvIf,
            cServerInterface):
        pass

cdef extern from "src/gen-cpp2/RederivedService.h" namespace "py3::simple":
    cdef cppclass cRederivedServiceSvAsyncIf "py3::simple::RederivedServiceSvAsyncIf":
      pass

    cdef cppclass cRederivedServiceSvIf "py3::simple::RederivedServiceSvIf"(
            cRederivedServiceSvAsyncIf,
            cDerivedServiceSvIf,
            cServerInterface):
        pass



cdef extern from "src/gen-py3/module/services_wrapper.h" namespace "py3::simple":
    cdef cppclass cSimpleServiceWrapper "py3::simple::SimpleServiceWrapper"(
        cSimpleServiceSvIf
    ):
        pass

    shared_ptr[cAsyncProcessorFactory] cSimpleServiceInterface "py3::simple::SimpleServiceInterface"(PyObject *if_object, cFollyExecutor* Q)
    cdef cppclass cDerivedServiceWrapper "py3::simple::DerivedServiceWrapper"(
        cDerivedServiceSvIf,
        cSimpleServiceWrapper
    ):
        pass

    shared_ptr[cAsyncProcessorFactory] cDerivedServiceInterface "py3::simple::DerivedServiceInterface"(PyObject *if_object, cFollyExecutor* Q)
    cdef cppclass cRederivedServiceWrapper "py3::simple::RederivedServiceWrapper"(
        cRederivedServiceSvIf,
        cDerivedServiceWrapper
    ):
        pass

    shared_ptr[cAsyncProcessorFactory] cRederivedServiceInterface "py3::simple::RederivedServiceInterface"(PyObject *if_object, cFollyExecutor* Q)
