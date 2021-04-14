///
//  Generated code. Do not modify.
//  source: SiLAFramework.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const String$json = const {
  '1': 'String',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const Integer$json = const {
  '1': 'Integer',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

const Real$json = const {
  '1': 'Real',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
  ],
};

const Boolean$json = const {
  '1': 'Boolean',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

const SmallBinary$json = const {
  '1': 'SmallBinary',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

const Date$json = const {
  '1': 'Date',
  '2': const [
    const {'1': 'day', '3': 1, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    const {'1': 'year', '3': 3, '4': 1, '5': 13, '10': 'year'},
    const {
      '1': 'timezone',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Timezone',
      '10': 'timezone'
    },
  ],
};

const Time$json = const {
  '1': 'Time',
  '2': const [
    const {'1': 'second', '3': 1, '4': 1, '5': 13, '10': 'second'},
    const {'1': 'minute', '3': 2, '4': 1, '5': 13, '10': 'minute'},
    const {'1': 'hour', '3': 3, '4': 1, '5': 13, '10': 'hour'},
    const {
      '1': 'timezone',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Timezone',
      '10': 'timezone'
    },
  ],
};

const Timestamp$json = const {
  '1': 'Timestamp',
  '2': const [
    const {'1': 'second', '3': 1, '4': 1, '5': 13, '10': 'second'},
    const {'1': 'minute', '3': 2, '4': 1, '5': 13, '10': 'minute'},
    const {'1': 'hour', '3': 3, '4': 1, '5': 13, '10': 'hour'},
    const {'1': 'day', '3': 4, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'month', '3': 5, '4': 1, '5': 13, '10': 'month'},
    const {'1': 'year', '3': 6, '4': 1, '5': 13, '10': 'year'},
    const {
      '1': 'timezone',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Timezone',
      '10': 'timezone'
    },
  ],
};

const Timezone$json = const {
  '1': 'Timezone',
  '2': const [
    const {'1': 'hours', '3': 1, '4': 1, '5': 5, '10': 'hours'},
    const {'1': 'minutes', '3': 2, '4': 1, '5': 13, '10': 'minutes'},
  ],
};

const Duration$json = const {
  '1': 'Duration',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    const {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

const CommandExecutionUUID$json = const {
  '1': 'CommandExecutionUUID',
  '2': const [
    const {'1': 'commandId', '3': 1, '4': 1, '5': 9, '10': 'commandId'},
  ],
};

const CommandConfirmation$json = const {
  '1': 'CommandConfirmation',
  '2': const [
    const {
      '1': 'commandId',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.CommandExecutionUUID',
      '10': 'commandId'
    },
    const {
      '1': 'lifetimeOfExecution',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Duration',
      '10': 'lifetimeOfExecution'
    },
  ],
};

const ExecutionInfo$json = const {
  '1': 'ExecutionInfo',
  '2': const [
    const {
      '1': 'commandStatus',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.sila2.org.silastandard.ExecutionInfo.CommandStatus',
      '10': 'commandStatus'
    },
    const {
      '1': 'progressInfo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Real',
      '10': 'progressInfo'
    },
    const {
      '1': 'estimatedRemainingTime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Duration',
      '10': 'estimatedRemainingTime'
    },
    const {
      '1': 'updatedLifetimeOfExecution',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.Duration',
      '10': 'updatedLifetimeOfExecution'
    },
  ],
  '4': const [ExecutionInfo_CommandStatus$json],
};

const ExecutionInfo_CommandStatus$json = const {
  '1': 'CommandStatus',
  '2': const [
    const {'1': 'waiting', '2': 0},
    const {'1': 'running', '2': 1},
    const {'1': 'finishedSuccessfully', '2': 2},
    const {'1': 'finishedWithError', '2': 3},
  ],
};

const SiLAError$json = const {
  '1': 'SiLAError',
  '2': const [
    const {
      '1': 'validationError',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.ValidationError',
      '9': 0,
      '10': 'validationError'
    },
    const {
      '1': 'executionError',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.ExecutionError',
      '9': 0,
      '10': 'executionError'
    },
    const {
      '1': 'readError',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.ReadError',
      '9': 0,
      '10': 'readError'
    },
    const {
      '1': 'frameworkError',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.sila2.org.silastandard.FrameworkError',
      '9': 0,
      '10': 'frameworkError'
    },
  ],
  '8': const [
    const {'1': 'error'},
  ],
};

const ValidationError$json = const {
  '1': 'ValidationError',
  '2': const [
    const {'1': 'parameter', '3': 1, '4': 1, '5': 9, '10': 'parameter'},
    const {'1': 'cause', '3': 2, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'action', '3': 3, '4': 1, '5': 9, '10': 'action'},
  ],
};

const ExecutionError$json = const {
  '1': 'ExecutionError',
  '2': const [
    const {
      '1': 'errorIdentifier',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'errorIdentifier'
    },
    const {'1': 'cause', '3': 2, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'action', '3': 3, '4': 1, '5': 9, '10': 'action'},
  ],
};

const ReadError$json = const {
  '1': 'ReadError',
  '2': const [
    const {
      '1': 'errorIdentifier',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'errorIdentifier'
    },
    const {'1': 'cause', '3': 2, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'action', '3': 3, '4': 1, '5': 9, '10': 'action'},
  ],
};

const FrameworkError$json = const {
  '1': 'FrameworkError',
  '2': const [
    const {
      '1': 'errorType',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.sila2.org.silastandard.FrameworkError.ErrorType',
      '10': 'errorType'
    },
  ],
  '4': const [FrameworkError_ErrorType$json],
};

const FrameworkError_ErrorType$json = const {
  '1': 'ErrorType',
  '2': const [
    const {'1': 'COMMAND_EXECUTION_NOT_ACCEPTED', '2': 0},
    const {'1': 'INVALID_COMMAND_EXECUTION_UUID', '2': 1},
    const {'1': 'COMMAND_EXECUTION_NOT_FINISHED', '2': 2},
  ],
};
