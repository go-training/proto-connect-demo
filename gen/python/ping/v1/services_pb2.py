# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ping/v1/services.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import builder as _builder
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from ping.v1 import messages_pb2 as ping_dot_v1_dot_messages__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x16ping/v1/services.proto\x12\x07ping.v1\x1a\x16ping/v1/messages.proto2B\n\x0bPingService\x12\x33\n\x04Ping\x12\x14.ping.v1.PingRequest\x1a\x15.ping.v1.PingResponseB?Z=github.com/go-training/proto-connect-demo/gen/go/ping/v1;pingb\x06proto3')

_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, globals())
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'ping.v1.services_pb2', globals())
if _descriptor._USE_C_DESCRIPTORS == False:

  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'Z=github.com/go-training/proto-connect-demo/gen/go/ping/v1;ping'
  _PINGSERVICE._serialized_start=59
  _PINGSERVICE._serialized_end=125
# @@protoc_insertion_point(module_scope)
