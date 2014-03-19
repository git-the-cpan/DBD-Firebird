#
#   Copyright (c) 2005 Edwin Pratomo
#
#   You may distribute under the terms of either the GNU General Public
#   License or the Artistic License, as specified in the Perl README file

# The %type_info_all hash was automatically generated by
# DBI::DBD::Metadata::write_typeinfo_pm v1.05.

package DBD::Firebird::TypeInfo;

{
    require Exporter;
    require DynaLoader;
    @ISA = qw(Exporter DynaLoader);
    @EXPORT = qw(type_info_all);
    use DBI qw(:sql_types);

    $type_info_all = [
        {
            TYPE_NAME          =>  0,
            DATA_TYPE          =>  1,
            COLUMN_SIZE        =>  2,
            LITERAL_PREFIX     =>  3,
            LITERAL_SUFFIX     =>  4,
            CREATE_PARAMS      =>  5,
            NULLABLE           =>  6,
            CASE_SENSITIVE     =>  7,
            SEARCHABLE         =>  8,
            UNSIGNED_ATTRIBUTE =>  9,
            FIXED_PREC_SCALE   => 10,
            AUTO_UNIQUE_VALUE  => 11,
            LOCAL_TYPE_NAME    => 12,
            MINIMUM_SCALE      => 13,
            MAXIMUM_SCALE      => 14,
            SQL_DATA_TYPE      => 15,
            SQL_DATETIME_SUB   => 16,
            NUM_PREC_RADIX     => 17,
            INTERVAL_PRECISION => 18,
        },
        [ "BOOLEAN",           SQL_BIT,           1,         undef, undef,undef,            1,0,3,undef,0,0,    "BOOLEAN",  undef,undef,SQL_BIT,          undef,10,   undef, ],
        [ "BLOB",              SQL_LONGVARBINARY, 2147483647,"0x",  undef,undef,            1,1,1,undef,0,undef,"BLOB",     undef,undef,SQL_LONGVARBINARY,undef,undef,undef, ],
        [ "BLOB SUB_TYPE TEXT",SQL_LONGVARCHAR,   2147483647,"'",   "'",  undef,            1,1,1,undef,0,undef,"BLOB",     undef,undef,SQL_LONGVARCHAR,  undef,undef,undef, ],
        [ "CHARACTER",         SQL_CHAR,          32765,     "'",   "'",  "length",         1,1,3,undef,0,undef,"CHAR",     undef,undef,SQL_CHAR,         undef,undef,undef, ],
        [ "NUMERIC",           SQL_NUMERIC,       18,        undef, undef,"precision,scale",1,0,3,undef,0,undef,"NUMERIC",  undef,undef,SQL_NUMERIC,      undef,10,   undef, ],
        [ "DECIMAL",           SQL_DECIMAL,       18,        undef, undef,"precision,scale",1,0,3,undef,0,undef,"DECIMAL",  undef,undef,SQL_DECIMAL,      undef,10,   undef, ],
        [ "INTEGER",           SQL_INTEGER,       10,        undef, undef,undef,            1,0,3,undef,0,undef,"LONG",     undef,undef,SQL_INTEGER,      undef,10,   undef, ],
        [ "SMALLINT",          SQL_SMALLINT,      5,         undef, undef,undef,            1,0,3,undef,0,undef,"SHORT",    undef,undef,SQL_SMALLINT,     undef,10,   undef, ],
        [ "FLOAT",             SQL_FLOAT,         53,        undef, undef,undef,            1,0,3,undef,0,undef,"FLOAT",    undef,undef,SQL_FLOAT,        undef,2,    undef, ],
        [ "DOUBLE PRECISION",  SQL_DOUBLE,        53,        undef, undef,undef,            1,0,3,undef,0,undef,"DOUBLE",   undef,undef,SQL_DOUBLE,       undef,2,    undef, ],
        [ "CHARACTER VARYING", SQL_VARCHAR,       32765,     "'",   "'",  "length",         1,1,3,undef,0,undef,"VARYING",  undef,undef,SQL_VARCHAR,      undef,undef,undef, ],
        [ "DATE",              SQL_TYPE_DATE,     10,        "{d'", "'}", undef,            1,0,3,undef,0,undef,"DATE",     undef,undef,SQL_DATE,         1,    undef,undef, ],
        [ "TIME",              SQL_TYPE_TIME,     8,         "{t'", "'}", undef,            1,0,3,undef,0,undef,"TIME",     undef,undef,SQL_DATE,         2,    undef,undef, ],
        [ "TIMESTAMP",         SQL_TYPE_TIMESTAMP,24,        "{ts'","'}", undef,            1,0,3,undef,0,undef,"TIMESTAMP",undef,undef,SQL_DATE,         3,    undef,undef, ],
    ];

    1;
}

__END__
