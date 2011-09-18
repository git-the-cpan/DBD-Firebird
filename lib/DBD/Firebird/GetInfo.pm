#   $Id: GetInfo.pm 351 2005-09-10 16:57:17Z edpratomo $
#
#   Copyright (c) 2002-2005 Edwin Pratomo
#
#   You may distribute under the terms of either the GNU General Public
#   License or the Artistic License, as specified in the Perl README file.

# The %info hash was automatically generated by
# DBI::DBD::Metadata::write_getinfo_pm v1.05.

package DBD::Firebird::GetInfo;

use strict;
use DBD::Firebird;

# Beware: not officially documented interfaces...
# use DBI::Const::GetInfoType qw(%GetInfoType);
# use DBI::Const::GetInfoReturn qw(%GetInfoReturnTypes %GetInfoReturnValues);

my $sql_driver = 'Firebird';
my $sql_ver_fmt = '%02d.%02d.%04d';   # ODBC version string: ##.##.#####
my $sql_driver_ver;
{
    no warnings 'uninitialized';
    $sql_driver_ver = sprintf $sql_ver_fmt, split (/\./, $DBD::Firebird::VERSION);
}


# no longer keywords in firebird 2.5 (still listed below):
# BASE_NAME CHECK_POINT_LENGTH DEBUG LOG_BUFFER_SIZE MESSAGE NUM_LOG_BUFFERS

my @Keywords = qw(

ACTIVE
ADMIN
AFTER
ASC
ASCENDING
AUTO
AUTONOMOUS
BASE_NAME
BEFORE
BIN_NOT
BLOB
CACHE
CALLER
CHAR_TO_UUID
CHECK_POINT_LENGTH
COLLATION
COMMITTED
COMMON
COMPUTED
CONDITIONAL
CONTAINING
CSTRING
DATA
DATABASE
DEBUG
DELETE
DESC
DESCENDING
DESCRIPTOR
DO
DOMAIN
ENTRY_POINT
EXCEPTION
EXIT
EXTERNAL
FILE
FILTER
FIRSTNAME
FREE_IT
FUNCTION
GDSCODE
GENERATOR
GEN_ID
GRANTED
GROUP_COMMIT_WAIT_TIME
IF
INACTIVE
INPUT_TYPE
ISOLATION
KEY
LASTNAME
LENGTH
LEVEL
LOGFILE
LOG_BUFFER_SIZE
LONG
MANUAL
MAPPING
MAX
MAXIMUM_SEGMENT
MERGE
MESSAGE
MIDDLENAME
MODULE_NAME
NAMES
NUM_LOG_BUFFERS
OPTION
OS_NAME
OUTPUT_TYPE
OVERFLOW
PAGE
PAGES
PAGE_SIZE
PARAMETER
PASSWORD
PLAN
POST_EVENT
PRIVILEGES
PROTECTED
RAW_PARTITIONS
RDB$DB_KEY
READ
RECORD_VERSION
RESERV
RESERVING
RETAIN
RETURNING_VALUES
RETURNS
ROLE
SCHEMA
SEGMENT
SHADOW
SHARED
SIMILAR
SINGULAR
SIZE
SNAPSHOT
SORT
SOURCE
STABILITY
STARTING
STARTS
STATEMENT
STATISTICS
SUB_TYPE
SUSPEND
TRANSACTION
TRIGGER
TWO_PHASE
TYPE
UNCOMMITTED
UUID_TO_CHAR
VARIABLE
WAIT
WEEKDAY
WHILE
WORK
WRITE
YEARDA
);


sub sql_keywords {

    return join ',', @Keywords;

}



sub sql_data_source_name {
    my $dbh = shift;
    return "dbi:$sql_driver:" . $dbh->{Name};
}

sub sql_user_name {
    my $dbh = shift;
    # CURRENT_USER is a non-standard attribute, probably undef
    # Username is a standard DBI attribute
    return $dbh->{CURRENT_USER} || $dbh->{Username};
}


our %info = (
     20 => 'Y',                           # SQL_ACCESSIBLE_PROCEDURES
     19 => 'Y',                           # SQL_ACCESSIBLE_TABLES
      0 => 0,                             # SQL_ACTIVE_CONNECTIONS
    116 => 0,                             # SQL_ACTIVE_ENVIRONMENTS
      1 => 0,                             # SQL_ACTIVE_STATEMENTS
    169 => 127,                           # SQL_AGGREGATE_FUNCTIONS
    117 => 0,                             # SQL_ALTER_DOMAIN
     86 => 134763,                        # SQL_ALTER_TABLE
  10021 => 0,                             # SQL_ASYNC_MODE
    120 => 0,                             # SQL_BATCH_ROW_COUNT
    121 => 0,                             # SQL_BATCH_SUPPORT
     82 => 0,                             # SQL_BOOKMARK_PERSISTENCE
    114 => 1,                             # SQL_CATALOG_LOCATION
  10003 => 'N',                           # SQL_CATALOG_NAME
     41 => '',                            # SQL_CATALOG_NAME_SEPARATOR
     42 => '',                            # SQL_CATALOG_TERM
     92 => 0,                             # SQL_CATALOG_USAGE
  10004 => 'ISO 8859-1',                  # SQL_COLLATING_SEQUENCE
  10004 => 'ISO 8859-1',                  # SQL_COLLATION_SEQ
     87 => 'Y',                           # SQL_COLUMN_ALIAS
     22 => 0,                             # SQL_CONCAT_NULL_BEHAVIOR
     53 => 0,                             # SQL_CONVERT_BIGINT
     54 => 0,                             # SQL_CONVERT_BINARY
     55 => 0,                             # SQL_CONVERT_BIT
     56 => 0,                             # SQL_CONVERT_CHAR
     57 => 0,                             # SQL_CONVERT_DATE
     58 => 0,                             # SQL_CONVERT_DECIMAL
     59 => 0,                             # SQL_CONVERT_DOUBLE
     60 => 0,                             # SQL_CONVERT_FLOAT
     48 => 2,                             # SQL_CONVERT_FUNCTIONS
#   173 => undef,                         # SQL_CONVERT_GUID
     61 => 0,                             # SQL_CONVERT_INTEGER
    123 => 0,                             # SQL_CONVERT_INTERVAL_DAY_TIME
    124 => 0,                             # SQL_CONVERT_INTERVAL_YEAR_MONTH
     71 => 0,                             # SQL_CONVERT_LONGVARBINARY
     62 => 0,                             # SQL_CONVERT_LONGVARCHAR
     63 => 0,                             # SQL_CONVERT_NUMERIC
     64 => 0,                             # SQL_CONVERT_REAL
     65 => 0,                             # SQL_CONVERT_SMALLINT
     66 => 0,                             # SQL_CONVERT_TIME
     67 => 0,                             # SQL_CONVERT_TIMESTAMP
     68 => 0,                             # SQL_CONVERT_TINYINT
     69 => 0,                             # SQL_CONVERT_VARBINARY
     70 => 0,                             # SQL_CONVERT_VARCHAR
    122 => 0,                             # SQL_CONVERT_WCHAR
    125 => 0,                             # SQL_CONVERT_WLONGVARCHAR
    126 => 0,                             # SQL_CONVERT_WVARCHAR
     74 => 2,                             # SQL_CORRELATION_NAME
    127 => 0,                             # SQL_CREATE_ASSERTION
    128 => 0,                             # SQL_CREATE_CHARACTER_SET
    129 => 0,                             # SQL_CREATE_COLLATION
    130 => 0,                             # SQL_CREATE_DOMAIN
    131 => 0,                             # SQL_CREATE_SCHEMA
    132 => 4609,                          # SQL_CREATE_TABLE
    133 => 0,                             # SQL_CREATE_TRANSLATION
    134 => 1,                             # SQL_CREATE_VIEW
     23 => 2,                             # SQL_CURSOR_COMMIT_BEHAVIOR
     24 => 2,                             # SQL_CURSOR_ROLLBACK_BEHAVIOR
  10001 => 0,                             # SQL_CURSOR_SENSITIVITY
     16 => '',                            # SQL_DATABASE_NAME
      2 => \&sql_data_source_name,        # SQL_DATA_SOURCE_NAME
     25 => 'N',                           # SQL_DATA_SOURCE_READ_ONLY
    119 => 7,                             # SQL_DATETIME_LITERALS
     17 => 'Firebird',                    # SQL_DBMS_NAME
     18 => '01.00.0000',                  # SQL_DBMS_VER
     18 => '01.00.0000',                  # SQL_DBMS_VERSION
    170 => 3,                             # SQL_DDL_INDEX
     26 => 2,                             # SQL_DEFAULT_TRANSACTION_ISOLATION
     26 => 2,                             # SQL_DEFAULT_TXN_ISOLATION
  10002 => 'Y',                           # SQL_DESCRIBE_PARAMETER
    171 => '03.52.0002.0002',             # SQL_DM_VER
      3 => 136450848,                     # SQL_DRIVER_HDBC
#   135 => undef,                         # SQL_DRIVER_HDESC
      4 => 136446256,                     # SQL_DRIVER_HENV
#    76 => undef,                         # SQL_DRIVER_HLIB
#     5 => undef,                         # SQL_DRIVER_HSTMT
      6 => "DBD::Firebird",              # SQL_DRIVER_NAME
     77 => '03.52',                       # SQL_DRIVER_ODBC_VER
      7 => $sql_driver_ver,               # SQL_DRIVER_VER
    136 => 0,                             # SQL_DROP_ASSERTION
    137 => 0,                             # SQL_DROP_CHARACTER_SET
    138 => 0,                             # SQL_DROP_COLLATION
    139 => 0,                             # SQL_DROP_DOMAIN
    140 => 0,                             # SQL_DROP_SCHEMA
    141 => 7,                             # SQL_DROP_TABLE
    142 => 0,                             # SQL_DROP_TRANSLATION
    143 => 1,                             # SQL_DROP_VIEW
    144 => 0,                             # SQL_DYNAMIC_CURSOR_ATTRIBUTES1
    145 => 0,                             # SQL_DYNAMIC_CURSOR_ATTRIBUTES2
     27 => 'N',                           # SQL_EXPRESSIONS_IN_ORDERBY
      8 => 1,                             # SQL_FETCH_DIRECTION
     84 => 0,                             # SQL_FILE_USAGE
    146 => 57345,                         # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES1
    147 => 3,                             # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES2
     81 => 11,                            # SQL_GETDATA_EXTENSIONS
     88 => 3,                             # SQL_GROUP_BY
     28 => 1,                             # SQL_IDENTIFIER_CASE
     29 => '"',                           # SQL_IDENTIFIER_QUOTE_CHAR
    148 => 3,                             # SQL_INDEX_KEYWORDS
    149 => 0,                             # SQL_INFO_SCHEMA_VIEWS
    172 => 7,                             # SQL_INSERT_STATEMENT
     73 => 'Y',                           # SQL_INTEGRITY
    150 => 0,                             # SQL_KEYSET_CURSOR_ATTRIBUTES1
    151 => 0,                             # SQL_KEYSET_CURSOR_ATTRIBUTES2
     89 => \&sql_keywords,                # SQL_KEYWORDS
    113 => 'Y',                           # SQL_LIKE_ESCAPE_CLAUSE
     78 => 0,                             # SQL_LOCK_TYPES
     34 => 0,                             # SQL_MAXIMUM_CATALOG_NAME_LENGTH
     97 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_GROUP_BY
     98 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_INDEX
     99 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_ORDER_BY
    100 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_SELECT
    101 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_TABLE
     30 => 32,                            # SQL_MAXIMUM_COLUMN_NAME_LENGTH
      1 => 0,                             # SQL_MAXIMUM_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAXIMUM_CURSOR_NAME_LENGTH
      0 => 0,                             # SQL_MAXIMUM_DRIVER_CONNECTIONS
  10005 => 32,                            # SQL_MAXIMUM_IDENTIFIER_LENGTH
    102 => 0,                             # SQL_MAXIMUM_INDEX_SIZE
    104 => 0,                             # SQL_MAXIMUM_ROW_SIZE
     32 => 0,                             # SQL_MAXIMUM_SCHEMA_NAME_LENGTH
    105 => 0,                             # SQL_MAXIMUM_STATEMENT_LENGTH
# 20000 => undef,                         # SQL_MAXIMUM_STMT_OCTETS
# 20001 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_DATA
# 20002 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_SCHEMA
    106 => 0,                             # SQL_MAXIMUM_TABLES_IN_SELECT
     35 => 32,                            # SQL_MAXIMUM_TABLE_NAME_LENGTH
    107 => 128,                           # SQL_MAXIMUM_USER_NAME_LENGTH
  10022 => 0,                             # SQL_MAX_ASYNC_CONCURRENT_STATEMENTS
    112 => 0,                             # SQL_MAX_BINARY_LITERAL_LEN
     34 => 0,                             # SQL_MAX_CATALOG_NAME_LEN
    108 => 0,                             # SQL_MAX_CHAR_LITERAL_LEN
     97 => 0,                             # SQL_MAX_COLUMNS_IN_GROUP_BY
     98 => 0,                             # SQL_MAX_COLUMNS_IN_INDEX
     99 => 0,                             # SQL_MAX_COLUMNS_IN_ORDER_BY
    100 => 0,                             # SQL_MAX_COLUMNS_IN_SELECT
    101 => 0,                             # SQL_MAX_COLUMNS_IN_TABLE
     30 => 32,                            # SQL_MAX_COLUMN_NAME_LEN
      1 => 0,                             # SQL_MAX_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAX_CURSOR_NAME_LEN
      0 => 0,                             # SQL_MAX_DRIVER_CONNECTIONS
  10005 => 32,                            # SQL_MAX_IDENTIFIER_LEN
    102 => 0,                             # SQL_MAX_INDEX_SIZE
     32 => 0,                             # SQL_MAX_OWNER_NAME_LEN
     33 => 32,                            # SQL_MAX_PROCEDURE_NAME_LEN
     34 => 0,                             # SQL_MAX_QUALIFIER_NAME_LEN
    104 => 0,                             # SQL_MAX_ROW_SIZE
    103 => 'N',                           # SQL_MAX_ROW_SIZE_INCLUDES_LONG
     32 => 0,                             # SQL_MAX_SCHEMA_NAME_LEN
    105 => 0,                             # SQL_MAX_STATEMENT_LEN
    106 => 0,                             # SQL_MAX_TABLES_IN_SELECT
     35 => 32,                            # SQL_MAX_TABLE_NAME_LEN
    107 => 128,                           # SQL_MAX_USER_NAME_LEN
     37 => 'N',                           # SQL_MULTIPLE_ACTIVE_TXN
     36 => 'N',                           # SQL_MULT_RESULT_SETS
    111 => 'N',                           # SQL_NEED_LONG_DATA_LEN
     75 => 1,                             # SQL_NON_NULLABLE_COLUMNS
     85 => 0,                             # SQL_NULL_COLLATION
     49 => 0,                             # SQL_NUMERIC_FUNCTIONS
      9 => 2,                             # SQL_ODBC_API_CONFORMANCE
    152 => 3,                             # SQL_ODBC_INTERFACE_CONFORMANCE
     12 => 1,                             # SQL_ODBC_SAG_CLI_CONFORMANCE
     15 => 2,                             # SQL_ODBC_SQL_CONFORMANCE
     73 => 'Y',                           # SQL_ODBC_SQL_OPT_IEF
     10 => '03.52',                       # SQL_ODBC_VER
    115 => 127,                           # SQL_OJ_CAPABILITIES
     90 => 'N',                           # SQL_ORDER_BY_COLUMNS_IN_SELECT
     38 => 'Y',                           # SQL_OUTER_JOINS
    115 => 127,                           # SQL_OUTER_JOIN_CAPABILITIES
     39 => '',                            # SQL_OWNER_TERM
     91 => 0,                             # SQL_OWNER_USAGE
    153 => 2,                             # SQL_PARAM_ARRAY_ROW_COUNTS
    154 => 2,                             # SQL_PARAM_ARRAY_SELECTS
     80 => 7,                             # SQL_POSITIONED_STATEMENTS
     79 => 0,                             # SQL_POS_OPERATIONS
     21 => 'Y',                           # SQL_PROCEDURES
     40 => 'PROCEDURE',                   # SQL_PROCEDURE_TERM
    114 => 1,                             # SQL_QUALIFIER_LOCATION
     41 => '',                            # SQL_QUALIFIER_NAME_SEPARATOR
     42 => '',                            # SQL_QUALIFIER_TERM
     92 => 0,                             # SQL_QUALIFIER_USAGE
     93 => 3,                             # SQL_QUOTED_IDENTIFIER_CASE
     11 => 'N',                           # SQL_ROW_UPDATES
     39 => '',                            # SQL_SCHEMA_TERM
     91 => 0,                             # SQL_SCHEMA_USAGE
     43 => 10,                            # SQL_SCROLL_CONCURRENCY
     44 => 1,                             # SQL_SCROLL_OPTIONS
     14 => '\\',                          # SQL_SEARCH_PATTERN_ESCAPE
     13 => 'FIREBIRD',                    # SQL_SERVER_NAME
     94 => ' $',                          # SQL_SPECIAL_CHARACTERS
    155 => 7,                             # SQL_SQL92_DATETIME_FUNCTIONS
    156 => 15,                            # SQL_SQL92_FOREIGN_KEY_DELETE_RULE
    157 => 15,                            # SQL_SQL92_FOREIGN_KEY_UPDATE_RULE
    158 => 8176,                          # SQL_SQL92_GRANT
    159 => 0,                             # SQL_SQL92_NUMERIC_VALUE_FUNCTIONS
    160 => 16007,                         # SQL_SQL92_PREDICATES
    161 => 984,                           # SQL_SQL92_RELATIONAL_JOIN_OPERATORS
    162 => 32160,                         # SQL_SQL92_REVOKE
    163 => 15,                            # SQL_SQL92_ROW_VALUE_CONSTRUCTOR
    164 => 233,                           # SQL_SQL92_STRING_FUNCTIONS
    165 => 2,                             # SQL_SQL92_VALUE_EXPRESSIONS
    118 => 1,                             # SQL_SQL_CONFORMANCE
    166 => 3,                             # SQL_STANDARD_CLI_CONFORMANCE
    167 => 1,                             # SQL_STATIC_CURSOR_ATTRIBUTES1
    168 => 0,                             # SQL_STATIC_CURSOR_ATTRIBUTES2
     83 => 0,                             # SQL_STATIC_SENSITIVITY
     50 => 0,                             # SQL_STRING_FUNCTIONS
     95 => 31,                            # SQL_SUBQUERIES
     51 => 7,                             # SQL_SYSTEM_FUNCTIONS
     45 => 'TABLE',                       # SQL_TABLE_TERM
    109 => 511,                           # SQL_TIMEDATE_ADD_INTERVALS
    110 => 511,                           # SQL_TIMEDATE_DIFF_INTERVALS
     52 => 0,                             # SQL_TIMEDATE_FUNCTIONS
     46 => 2,                             # SQL_TRANSACTION_CAPABLE
     72 => 14,                            # SQL_TRANSACTION_ISOLATION_OPTION
     46 => 2,                             # SQL_TXN_CAPABLE
     72 => 14,                            # SQL_TXN_ISOLATION_OPTION
     96 => 3,                             # SQL_UNION
     96 => 3,                             # SQL_UNION_STATEMENT
     47 => \&sql_user_name,               # SQL_USER_NAME
  10000 => 1994,                          # SQL_XOPEN_CLI_YEAR
);

1;

__END__
