.class public abstract Lcom/fasterxml/jackson/databind/SerializerProvider;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

.field public static final DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;


# instance fields
.field public transient _attributes:Lkotlin/ExceptionsKt;

.field public final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field public _dateFormat:Ljava/text/DateFormat;

.field public final _knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

.field public final _nullKeySerializer:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

.field public final _nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field public final _serializerCache:Lcoil3/svg/internal/AndroidSvg;

.field public final _serializerFactory:Lkotlin/UnsignedKt;

.field public final _stdNullValueSerializer:Z

.field public final _unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 9
    .line 10
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x6

    .line 14
    const-class v3, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(IILjava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 104
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 105
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 107
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerFactory:Lkotlin/UnsignedKt;

    .line 108
    new-instance v1, Lcoil3/svg/internal/AndroidSvg;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lcoil3/svg/internal/AndroidSvg;-><init>(I)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 109
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 110
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_attributes:Lkotlin/ExceptionsKt;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_stdNullValueSerializer:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lkotlin/UnsignedKt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 7
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 11
    .line 12
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerFactory:Lkotlin/UnsignedKt;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 19
    .line 20
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    .line 35
    .line 36
    if-ne v1, v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_stdNullValueSerializer:Z

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lkotlin/ExceptionsKt;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_attributes:Lkotlin/ExceptionsKt;

    .line 49
    .line 50
    iget-object p1, p3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    monitor-enter p3

    .line 64
    :try_start_0
    iget-object p1, p3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p3, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Ljava/util/HashMap;

    .line 79
    .line 80
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 81
    .line 82
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Ljava/util/HashMap;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    move-object p1, p2

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_1
    monitor-exit p3

    .line 97
    :goto_2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 98
    .line 99
    return-void

    .line 100
    :goto_3
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0
.end method


# virtual methods
.method public final _createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 83
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    iget-object v2, v1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    new-instance v3, Lcom/fasterxml/jackson/databind/util/TypeKey;

    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, v1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    instance-of p1, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    if-eqz p1, :cond_1

    .line 88
    move-object p1, v0

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 89
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 91
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 92
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 93
    new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v1, p0, v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    throw v1
.end method

.method public final _createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_1
    iget-object v4, v3, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v5, Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/databind/util/TypeKey;-><init>(Ljava/lang/Class;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v4, v3, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v5, Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 36
    .line 37
    invoke-direct {v5, v0}, Lcom/fasterxml/jackson/databind/util/TypeKey;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    :cond_0
    iget-object p1, v3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    instance-of p1, v2, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    move-object p1, v2

    .line 60
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    monitor-exit v3

    .line 69
    return-object v2

    .line 70
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_3
    return-object v2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadDefinition(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public final _createUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerFactory:Lkotlin/UnsignedKt;

    .line 6
    .line 7
    check-cast v2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v6, v1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 13
    .line 14
    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 19
    .line 20
    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    return-object v5

    .line 27
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v7, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v5, v6, v4, v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 33
    .line 34
    .line 35
    move-result-object v9
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    if-ne v9, v0, :cond_1

    .line 37
    .line 38
    move-object v11, v3

    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasRawClass(Ljava/lang/Class;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_2
    move-object v11, v3

    .line 54
    const/4 v0, 0x1

    .line 55
    :goto_0
    iget-object v12, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 56
    .line 57
    iget-object v3, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v3, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    check-cast v3, Ljava/lang/Class;

    .line 72
    .line 73
    const-class v5, Lcom/fasterxml/jackson/databind/util/BeanUtil;

    .line 74
    .line 75
    if-eq v3, v5, :cond_8

    .line 76
    .line 77
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    const-class v5, Lcom/fasterxml/jackson/databind/util/Converter;

    .line 85
    .line 86
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_7

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 107
    .line 108
    .line 109
    return-object v7

    .line 110
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "; expected Class<Converter>"

    .line 115
    .line 116
    const-string v2, "AnnotationIntrospector returned Class "

    .line 117
    .line 118
    invoke-static {v0, v1, v2}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v7

    .line 122
    :cond_8
    :goto_1
    iget-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 123
    .line 124
    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_propCollector:Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    .line 125
    .line 126
    sget-object v15, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 127
    .line 128
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iget-object v4, v9, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 133
    .line 134
    const-class v7, Ljava/lang/Enum;

    .line 135
    .line 136
    const-class v5, Ljava/util/Map;

    .line 137
    .line 138
    if-eqz v3, :cond_33

    .line 139
    .line 140
    if-nez v0, :cond_9

    .line 141
    .line 142
    invoke-static {v6, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :cond_9
    if-nez v0, :cond_b

    .line 147
    .line 148
    iget-boolean v3, v9, Lcom/fasterxml/jackson/databind/type/TypeBase;->_asStatic:Z

    .line 149
    .line 150
    if-eqz v3, :cond_b

    .line 151
    .line 152
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_a

    .line 157
    .line 158
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isJavaLangObject()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_b

    .line 167
    .line 168
    :cond_a
    const/4 v3, 0x1

    .line 169
    goto :goto_2

    .line 170
    :cond_b
    move v3, v0

    .line 171
    :goto_2
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v2, v6, v8}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 176
    .line 177
    .line 178
    move-result-object v23

    .line 179
    if-eqz v23, :cond_c

    .line 180
    .line 181
    const/16 v22, 0x0

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_c
    move/from16 v22, v3

    .line 185
    .line 186
    :goto_3
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-eqz v3, :cond_d

    .line 195
    .line 196
    invoke-virtual {v1, v12, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    move-object/from16 v24, v3

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_d
    const/16 v24, 0x0

    .line 204
    .line 205
    :goto_4
    instance-of v3, v9, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 206
    .line 207
    if-eqz v3, :cond_20

    .line 208
    .line 209
    move-object v3, v9

    .line 210
    check-cast v3, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v8, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    if-eqz v8, :cond_e

    .line 221
    .line 222
    invoke-virtual {v1, v12, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    move-object/from16 v25, v24

    .line 227
    .line 228
    move-object/from16 v24, v8

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_e
    move-object/from16 v25, v24

    .line 232
    .line 233
    const/16 v24, 0x0

    .line 234
    .line 235
    :goto_5
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    iget-object v8, v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 240
    .line 241
    sget-object v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 242
    .line 243
    if-ne v8, v10, :cond_f

    .line 244
    .line 245
    move/from16 v26, v0

    .line 246
    .line 247
    move-object/from16 v28, v5

    .line 248
    .line 249
    const/4 v10, 0x0

    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    goto/16 :goto_e

    .line 253
    .line 254
    :cond_f
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-nez v10, :cond_1f

    .line 263
    .line 264
    invoke-virtual {v2, v1, v3, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-nez v8, :cond_1e

    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v8, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v26

    .line 278
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v8, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    sget-object v10, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 287
    .line 288
    if-nez v8, :cond_10

    .line 289
    .line 290
    const/4 v8, 0x0

    .line 291
    :cond_10
    if-nez v8, :cond_11

    .line 292
    .line 293
    const/16 v19, 0x0

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_11
    iget-boolean v10, v8, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    .line 297
    .line 298
    if-eqz v10, :cond_12

    .line 299
    .line 300
    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_12
    iget-object v8, v8, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 304
    .line 305
    :goto_6
    move-object/from16 v19, v8

    .line 306
    .line 307
    :goto_7
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v8, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    iget-object v8, v8, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    .line 316
    .line 317
    move-object/from16 v21, v3

    .line 318
    .line 319
    move-object/from16 v20, v8

    .line 320
    .line 321
    invoke-static/range {v19 .. v26}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iget-object v8, v3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 326
    .line 327
    invoke-static {v1, v11, v8, v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    if-nez v10, :cond_13

    .line 332
    .line 333
    sget-object v19, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 334
    .line 335
    move/from16 v26, v0

    .line 336
    .line 337
    move-object/from16 v0, v19

    .line 338
    .line 339
    :goto_8
    move-object/from16 v28, v5

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_13
    move/from16 v26, v0

    .line 343
    .line 344
    iget-object v0, v10, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :goto_9
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 348
    .line 349
    if-eq v0, v5, :cond_1d

    .line 350
    .line 351
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 352
    .line 353
    if-ne v0, v5, :cond_14

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :cond_14
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    aget v0, v5, v0

    .line 363
    .line 364
    const/4 v5, 0x1

    .line 365
    if-eq v0, v5, :cond_1b

    .line 366
    .line 367
    const/4 v5, 0x2

    .line 368
    if-eq v0, v5, :cond_1a

    .line 369
    .line 370
    const/4 v5, 0x3

    .line 371
    if-eq v0, v5, :cond_19

    .line 372
    .line 373
    const/4 v5, 0x4

    .line 374
    if-eq v0, v5, :cond_17

    .line 375
    .line 376
    :cond_15
    const/4 v0, 0x0

    .line 377
    :cond_16
    :goto_a
    const/4 v5, 0x1

    .line 378
    goto :goto_b

    .line 379
    :cond_17
    iget-object v0, v10, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 380
    .line 381
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    if-nez v0, :cond_18

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_18
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    goto :goto_b

    .line 393
    :cond_19
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_1a
    invoke-virtual {v8}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_15

    .line 401
    .line 402
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_1b
    invoke-static {v8}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_16

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_16

    .line 420
    .line 421
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getArrayComparator(Ljava/lang/Object;)Lokhttp3/internal/http/StatusLine;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    goto :goto_a

    .line 426
    :goto_b
    invoke-virtual {v3, v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    :cond_1c
    const/4 v10, 0x0

    .line 431
    goto :goto_d

    .line 432
    :cond_1d
    :goto_c
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 433
    .line 434
    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_1c

    .line 439
    .line 440
    const/4 v5, 0x1

    .line 441
    const/4 v10, 0x0

    .line 442
    invoke-virtual {v3, v10, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    :goto_d
    move-object/from16 v17, v3

    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_1e
    move/from16 v26, v0

    .line 450
    .line 451
    move-object/from16 v28, v5

    .line 452
    .line 453
    const/4 v10, 0x0

    .line 454
    move-object/from16 v17, v8

    .line 455
    .line 456
    :goto_e
    move-object/from16 v19, v15

    .line 457
    .line 458
    move-object/from16 v8, v17

    .line 459
    .line 460
    goto/16 :goto_14

    .line 461
    .line 462
    :cond_1f
    const/4 v10, 0x0

    .line 463
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 471
    .line 472
    .line 473
    return-object v10

    .line 474
    :cond_20
    move/from16 v26, v0

    .line 475
    .line 476
    move-object/from16 v28, v5

    .line 477
    .line 478
    move-object/from16 v25, v24

    .line 479
    .line 480
    instance-of v0, v9, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 481
    .line 482
    if-eqz v0, :cond_2b

    .line 483
    .line 484
    move-object v0, v9

    .line 485
    check-cast v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 486
    .line 487
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    if-nez v5, :cond_2a

    .line 496
    .line 497
    invoke-virtual {v2, v1, v0, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 502
    .line 503
    if-nez v3, :cond_28

    .line 504
    .line 505
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    iget-object v8, v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 510
    .line 511
    sget-object v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 512
    .line 513
    if-ne v8, v10, :cond_21

    .line 514
    .line 515
    const/16 v19, 0x0

    .line 516
    .line 517
    goto/16 :goto_11

    .line 518
    .line 519
    :cond_21
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 520
    .line 521
    const-class v10, Ljava/util/EnumSet;

    .line 522
    .line 523
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 524
    .line 525
    .line 526
    move-result v19

    .line 527
    if-eqz v19, :cond_23

    .line 528
    .line 529
    iget-object v0, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 530
    .line 531
    sget-object v3, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 532
    .line 533
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    if-eqz v3, :cond_22

    .line 538
    .line 539
    if-eq v0, v7, :cond_22

    .line 540
    .line 541
    move-object/from16 v31, v5

    .line 542
    .line 543
    goto :goto_f

    .line 544
    :cond_22
    const/16 v31, 0x0

    .line 545
    .line 546
    :goto_f
    new-instance v29, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    .line 547
    .line 548
    const/16 v34, 0x0

    .line 549
    .line 550
    const/16 v35, 0x0

    .line 551
    .line 552
    const/16 v32, 0x1

    .line 553
    .line 554
    const/16 v33, 0x0

    .line 555
    .line 556
    move-object/from16 v30, v10

    .line 557
    .line 558
    invoke-direct/range {v29 .. v35}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;I)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v19, v29

    .line 562
    .line 563
    goto :goto_11

    .line 564
    :cond_23
    iget-object v10, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 565
    .line 566
    move-object/from16 v19, v3

    .line 567
    .line 568
    const-class v3, Ljava/util/RandomAccess;

    .line 569
    .line 570
    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    const-class v8, Ljava/lang/String;

    .line 575
    .line 576
    if-eqz v3, :cond_26

    .line 577
    .line 578
    if-ne v10, v8, :cond_25

    .line 579
    .line 580
    invoke-static/range {v25 .. v25}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_24

    .line 585
    .line 586
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance$1:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    .line 587
    .line 588
    move-object/from16 v19, v3

    .line 589
    .line 590
    :cond_24
    move/from16 v3, v22

    .line 591
    .line 592
    move-object/from16 v0, v23

    .line 593
    .line 594
    move-object/from16 v24, v25

    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_25
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 598
    .line 599
    new-instance v19, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    .line 600
    .line 601
    const-class v20, Ljava/util/List;

    .line 602
    .line 603
    move-object/from16 v24, v25

    .line 604
    .line 605
    const/16 v25, 0x1

    .line 606
    .line 607
    move-object/from16 v21, v0

    .line 608
    .line 609
    invoke-direct/range {v19 .. v25}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;I)V

    .line 610
    .line 611
    .line 612
    move/from16 v3, v22

    .line 613
    .line 614
    move-object/from16 v0, v23

    .line 615
    .line 616
    goto :goto_10

    .line 617
    :cond_26
    move/from16 v3, v22

    .line 618
    .line 619
    move-object/from16 v0, v23

    .line 620
    .line 621
    move-object/from16 v24, v25

    .line 622
    .line 623
    if-ne v10, v8, :cond_27

    .line 624
    .line 625
    invoke-static/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    .line 626
    .line 627
    .line 628
    move-result v8

    .line 629
    if-eqz v8, :cond_27

    .line 630
    .line 631
    sget-object v8, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    .line 632
    .line 633
    move-object/from16 v19, v8

    .line 634
    .line 635
    :cond_27
    :goto_10
    if-nez v19, :cond_29

    .line 636
    .line 637
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    .line 638
    .line 639
    move-object/from16 v10, v24

    .line 640
    .line 641
    invoke-direct {v8, v5, v3, v0, v10}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 642
    .line 643
    .line 644
    move-object/from16 v19, v8

    .line 645
    .line 646
    goto :goto_11

    .line 647
    :cond_28
    move-object/from16 v19, v3

    .line 648
    .line 649
    :cond_29
    :goto_11
    move-object/from16 v8, v19

    .line 650
    .line 651
    move-object/from16 v19, v15

    .line 652
    .line 653
    goto :goto_14

    .line 654
    :cond_2a
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 662
    .line 663
    .line 664
    const/16 v17, 0x0

    .line 665
    .line 666
    return-object v17

    .line 667
    :cond_2b
    move/from16 v3, v22

    .line 668
    .line 669
    move-object/from16 v0, v23

    .line 670
    .line 671
    move-object/from16 v10, v25

    .line 672
    .line 673
    instance-of v5, v9, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 674
    .line 675
    if-eqz v5, :cond_30

    .line 676
    .line 677
    move-object v5, v9

    .line 678
    check-cast v5, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 679
    .line 680
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 681
    .line 682
    .line 683
    move-result-object v8

    .line 684
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->hasNext()Z

    .line 685
    .line 686
    .line 687
    move-result v19

    .line 688
    if-nez v19, :cond_2f

    .line 689
    .line 690
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 691
    .line 692
    if-eqz v10, :cond_2c

    .line 693
    .line 694
    invoke-static {v10}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    .line 695
    .line 696
    .line 697
    move-result v19

    .line 698
    if-eqz v19, :cond_2d

    .line 699
    .line 700
    :cond_2c
    move-object/from16 v19, v15

    .line 701
    .line 702
    goto :goto_12

    .line 703
    :cond_2d
    move-object/from16 v19, v15

    .line 704
    .line 705
    const/4 v8, 0x0

    .line 706
    goto :goto_13

    .line 707
    :goto_12
    const-class v15, [Ljava/lang/String;

    .line 708
    .line 709
    if-ne v15, v8, :cond_2e

    .line 710
    .line 711
    sget-object v8, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;

    .line 712
    .line 713
    goto :goto_13

    .line 714
    :cond_2e
    sget-object v15, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;

    .line 715
    .line 716
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    check-cast v8, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 725
    .line 726
    :goto_13
    if-nez v8, :cond_31

    .line 727
    .line 728
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    .line 729
    .line 730
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 731
    .line 732
    invoke-direct {v8, v5, v3, v0, v10}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 733
    .line 734
    .line 735
    goto :goto_14

    .line 736
    :cond_2f
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->next()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 744
    .line 745
    .line 746
    const/16 v17, 0x0

    .line 747
    .line 748
    return-object v17

    .line 749
    :cond_30
    move-object/from16 v19, v15

    .line 750
    .line 751
    const/4 v8, 0x0

    .line 752
    :cond_31
    :goto_14
    if-eqz v8, :cond_32

    .line 753
    .line 754
    return-object v8

    .line 755
    :cond_32
    move/from16 v32, v26

    .line 756
    .line 757
    goto/16 :goto_1d

    .line 758
    .line 759
    :cond_33
    move-object/from16 v28, v5

    .line 760
    .line 761
    move-object/from16 v19, v15

    .line 762
    .line 763
    invoke-virtual {v9}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    if-eqz v3, :cond_41

    .line 768
    .line 769
    move-object v3, v9

    .line 770
    check-cast v3, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    .line 771
    .line 772
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 773
    .line 774
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_typeHandler:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v8, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 777
    .line 778
    if-nez v8, :cond_34

    .line 779
    .line 780
    invoke-virtual {v2, v6, v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    :cond_34
    iget-object v10, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_valueHandler:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast v10, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 787
    .line 788
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 789
    .line 790
    .line 791
    move-result-object v15

    .line 792
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->hasNext()Z

    .line 793
    .line 794
    .line 795
    move-result v20

    .line 796
    if-nez v20, :cond_40

    .line 797
    .line 798
    const-class v15, Ljava/util/concurrent/atomic/AtomicReference;

    .line 799
    .line 800
    invoke-virtual {v3, v15}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    .line 801
    .line 802
    .line 803
    move-result v20

    .line 804
    if-eqz v20, :cond_3f

    .line 805
    .line 806
    invoke-static {v1, v11, v5, v15}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 807
    .line 808
    .line 809
    move-result-object v15

    .line 810
    if-nez v15, :cond_35

    .line 811
    .line 812
    sget-object v20, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 813
    .line 814
    move-object/from16 v21, v20

    .line 815
    .line 816
    move/from16 v20, v0

    .line 817
    .line 818
    move-object/from16 v0, v21

    .line 819
    .line 820
    :goto_15
    move-object/from16 v21, v5

    .line 821
    .line 822
    goto :goto_16

    .line 823
    :cond_35
    move/from16 v20, v0

    .line 824
    .line 825
    iget-object v0, v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 826
    .line 827
    goto :goto_15

    .line 828
    :goto_16
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 829
    .line 830
    if-eq v0, v5, :cond_3e

    .line 831
    .line 832
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 833
    .line 834
    if-ne v0, v5, :cond_36

    .line 835
    .line 836
    goto :goto_19

    .line 837
    :cond_36
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    aget v0, v5, v0

    .line 844
    .line 845
    const/4 v5, 0x1

    .line 846
    if-eq v0, v5, :cond_3d

    .line 847
    .line 848
    const/4 v5, 0x2

    .line 849
    if-eq v0, v5, :cond_3b

    .line 850
    .line 851
    const/4 v5, 0x3

    .line 852
    if-eq v0, v5, :cond_3a

    .line 853
    .line 854
    const/4 v5, 0x4

    .line 855
    if-eq v0, v5, :cond_37

    .line 856
    .line 857
    const/16 v35, 0x0

    .line 858
    .line 859
    :goto_17
    const/16 v36, 0x1

    .line 860
    .line 861
    goto :goto_1a

    .line 862
    :cond_37
    iget-object v0, v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 863
    .line 864
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    if-nez v0, :cond_39

    .line 869
    .line 870
    :cond_38
    :goto_18
    move-object/from16 v35, v0

    .line 871
    .line 872
    goto :goto_17

    .line 873
    :cond_39
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v5

    .line 877
    move-object/from16 v35, v0

    .line 878
    .line 879
    move/from16 v36, v5

    .line 880
    .line 881
    goto :goto_1a

    .line 882
    :cond_3a
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 883
    .line 884
    goto :goto_18

    .line 885
    :cond_3b
    invoke-virtual/range {v21 .. v21}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-eqz v0, :cond_3c

    .line 890
    .line 891
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 892
    .line 893
    goto :goto_18

    .line 894
    :cond_3c
    const/4 v0, 0x0

    .line 895
    goto :goto_18

    .line 896
    :cond_3d
    invoke-static/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    if-eqz v0, :cond_38

    .line 901
    .line 902
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 903
    .line 904
    .line 905
    move-result-object v5

    .line 906
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 907
    .line 908
    .line 909
    move-result v5

    .line 910
    if-eqz v5, :cond_38

    .line 911
    .line 912
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getArrayComparator(Ljava/lang/Object;)Lokhttp3/internal/http/StatusLine;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    goto :goto_18

    .line 917
    :cond_3e
    :goto_19
    const/16 v35, 0x0

    .line 918
    .line 919
    const/16 v36, 0x0

    .line 920
    .line 921
    :goto_1a
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    .line 922
    .line 923
    invoke-direct {v0, v3, v8, v10}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 924
    .line 925
    .line 926
    new-instance v29, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    .line 927
    .line 928
    const/16 v31, 0x0

    .line 929
    .line 930
    const/16 v34, 0x0

    .line 931
    .line 932
    move-object/from16 v30, v0

    .line 933
    .line 934
    move-object/from16 v32, v8

    .line 935
    .line 936
    move-object/from16 v33, v10

    .line 937
    .line 938
    invoke-direct/range {v29 .. v36}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V

    .line 939
    .line 940
    .line 941
    goto :goto_1c

    .line 942
    :cond_3f
    move/from16 v20, v0

    .line 943
    .line 944
    goto :goto_1b

    .line 945
    :cond_40
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->next()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 953
    .line 954
    .line 955
    const/16 v17, 0x0

    .line 956
    .line 957
    return-object v17

    .line 958
    :cond_41
    move/from16 v20, v0

    .line 959
    .line 960
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->hasNext()Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-nez v3, :cond_c6

    .line 969
    .line 970
    :goto_1b
    const/16 v29, 0x0

    .line 971
    .line 972
    :goto_1c
    if-nez v29, :cond_42

    .line 973
    .line 974
    invoke-virtual {v2, v1, v9, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    .line 975
    .line 976
    .line 977
    move-result-object v8

    .line 978
    move/from16 v32, v20

    .line 979
    .line 980
    goto :goto_1d

    .line 981
    :cond_42
    move/from16 v32, v20

    .line 982
    .line 983
    move-object/from16 v8, v29

    .line 984
    .line 985
    :goto_1d
    if-nez v8, :cond_c5

    .line 986
    .line 987
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    .line 992
    .line 993
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    check-cast v3, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 998
    .line 999
    if-nez v3, :cond_43

    .line 1000
    .line 1001
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    .line 1002
    .line 1003
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    check-cast v0, Ljava/lang/Class;

    .line 1008
    .line 1009
    if-eqz v0, :cond_43

    .line 1010
    .line 1011
    const/4 v5, 0x0

    .line 1012
    invoke-static {v0, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    move-object v3, v0

    .line 1017
    check-cast v3, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1018
    .line 1019
    :cond_43
    if-nez v3, :cond_c4

    .line 1020
    .line 1021
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 1022
    .line 1023
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    const-class v3, Ljava/lang/Object;

    .line 1028
    .line 1029
    if-eqz v0, :cond_49

    .line 1030
    .line 1031
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    iget-object v5, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 1036
    .line 1037
    sget-object v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 1038
    .line 1039
    if-ne v5, v8, :cond_48

    .line 1040
    .line 1041
    iget-object v0, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 1042
    .line 1043
    if-nez v0, :cond_45

    .line 1044
    .line 1045
    iget-boolean v0, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 1046
    .line 1047
    if-nez v0, :cond_44

    .line 1048
    .line 1049
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 1050
    .line 1051
    .line 1052
    :cond_44
    iget-object v0, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 1053
    .line 1054
    new-instance v5, Ljava/util/ArrayList;

    .line 1055
    .line 1056
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1061
    .line 1062
    .line 1063
    iput-object v5, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 1064
    .line 1065
    move-object v0, v5

    .line 1066
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1071
    .line 1072
    .line 1073
    move-result v5

    .line 1074
    if-eqz v5, :cond_47

    .line 1075
    .line 1076
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v5

    .line 1080
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 1081
    .line 1082
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v5

    .line 1086
    const-string v8, "declaringClass"

    .line 1087
    .line 1088
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v5

    .line 1092
    if-eqz v5, :cond_46

    .line 1093
    .line 1094
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1095
    .line 1096
    .line 1097
    :cond_47
    :goto_1e
    const/4 v0, 0x0

    .line 1098
    :goto_1f
    const/4 v5, 0x3

    .line 1099
    goto/16 :goto_2b

    .line 1100
    .line 1101
    :cond_48
    invoke-static {v6, v4}, Lkotlin/UnsafeLazyImpl;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lkotlin/UnsafeLazyImpl;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    const/4 v8, 0x1

    .line 1106
    const/4 v10, 0x0

    .line 1107
    invoke-static {v4, v0, v8, v10}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_isShapeWrittenUsingIndex(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    .line 1112
    .line 1113
    invoke-direct {v8, v5, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lkotlin/UnsafeLazyImpl;Ljava/lang/Boolean;)V

    .line 1114
    .line 1115
    .line 1116
    move-object v0, v8

    .line 1117
    goto :goto_1f

    .line 1118
    :cond_49
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    .line 1119
    .line 1120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    .line 1122
    .line 1123
    sget-object v5, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    .line 1124
    .line 1125
    if-eqz v5, :cond_4a

    .line 1126
    .line 1127
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v5

    .line 1131
    if-eqz v5, :cond_4a

    .line 1132
    .line 1133
    const-string v0, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    .line 1134
    .line 1135
    invoke-static {v9, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/String;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1140
    .line 1141
    goto :goto_23

    .line 1142
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v5

    .line 1146
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_sqlSerializers:Ljava/util/HashMap;

    .line 1147
    .line 1148
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    if-eqz v0, :cond_4c

    .line 1153
    .line 1154
    instance-of v5, v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1155
    .line 1156
    if-eqz v5, :cond_4b

    .line 1157
    .line 1158
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1159
    .line 1160
    goto :goto_23

    .line 1161
    :cond_4b
    check-cast v0, Ljava/lang/String;

    .line 1162
    .line 1163
    invoke-static {v9, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/String;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1168
    .line 1169
    goto :goto_23

    .line 1170
    :cond_4c
    const-string v0, "javax.xml."

    .line 1171
    .line 1172
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1173
    .line 1174
    .line 1175
    move-result v5

    .line 1176
    if-nez v5, :cond_4f

    .line 1177
    .line 1178
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v5

    .line 1182
    :goto_20
    if-eqz v5, :cond_50

    .line 1183
    .line 1184
    if-ne v5, v3, :cond_4d

    .line 1185
    .line 1186
    goto :goto_22

    .line 1187
    :cond_4d
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v8

    .line 1191
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v8

    .line 1195
    if-eqz v8, :cond_4e

    .line 1196
    .line 1197
    goto :goto_21

    .line 1198
    :cond_4e
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v5

    .line 1202
    goto :goto_20

    .line 1203
    :cond_4f
    :goto_21
    const-string v0, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    .line 1204
    .line 1205
    invoke-static {v9, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/String;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    if-nez v0, :cond_c3

    .line 1210
    .line 1211
    :cond_50
    :goto_22
    const/4 v0, 0x0

    .line 1212
    :goto_23
    if-eqz v0, :cond_51

    .line 1213
    .line 1214
    goto :goto_1f

    .line 1215
    :cond_51
    const-class v0, Ljava/util/Calendar;

    .line 1216
    .line 1217
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    if-eqz v0, :cond_52

    .line 1222
    .line 1223
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    .line 1224
    .line 1225
    goto :goto_1f

    .line 1226
    :cond_52
    const-class v0, Ljava/util/Date;

    .line 1227
    .line 1228
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_53

    .line 1233
    .line 1234
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    .line 1235
    .line 1236
    goto/16 :goto_1f

    .line 1237
    .line 1238
    :cond_53
    const-class v0, Ljava/util/Map$Entry;

    .line 1239
    .line 1240
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v5

    .line 1244
    if-eqz v5, :cond_63

    .line 1245
    .line 1246
    invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v5

    .line 1250
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 1251
    .line 1252
    const/4 v10, 0x0

    .line 1253
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v8

    .line 1257
    if-nez v8, :cond_54

    .line 1258
    .line 1259
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v8

    .line 1263
    :cond_54
    move-object/from16 v31, v8

    .line 1264
    .line 1265
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 1266
    .line 1267
    const/4 v8, 0x1

    .line 1268
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v5

    .line 1272
    if-nez v5, :cond_55

    .line 1273
    .line 1274
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v5

    .line 1278
    :cond_55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1279
    .line 1280
    .line 1281
    sget-object v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 1282
    .line 1283
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v10

    .line 1287
    if-nez v10, :cond_56

    .line 1288
    .line 1289
    goto :goto_24

    .line 1290
    :cond_56
    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v8

    .line 1294
    :goto_24
    iget-object v8, v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 1295
    .line 1296
    sget-object v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 1297
    .line 1298
    if-ne v8, v10, :cond_57

    .line 1299
    .line 1300
    goto/16 :goto_1e

    .line 1301
    .line 1302
    :cond_57
    new-instance v29, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    .line 1303
    .line 1304
    invoke-virtual {v2, v6, v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v34

    .line 1308
    const/16 v35, 0x0

    .line 1309
    .line 1310
    move/from16 v33, v32

    .line 1311
    .line 1312
    move-object/from16 v32, v5

    .line 1313
    .line 1314
    move-object/from16 v30, v5

    .line 1315
    .line 1316
    invoke-direct/range {v29 .. v35}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 1317
    .line 1318
    .line 1319
    move-object/from16 v8, v29

    .line 1320
    .line 1321
    move/from16 v32, v33

    .line 1322
    .line 1323
    invoke-static {v1, v11, v5, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    if-nez v0, :cond_58

    .line 1328
    .line 1329
    sget-object v10, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1330
    .line 1331
    goto :goto_25

    .line 1332
    :cond_58
    iget-object v10, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1333
    .line 1334
    :goto_25
    sget-object v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1335
    .line 1336
    if-eq v10, v15, :cond_59

    .line 1337
    .line 1338
    sget-object v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1339
    .line 1340
    if-ne v10, v15, :cond_5a

    .line 1341
    .line 1342
    :cond_59
    :goto_26
    move-object/from16 v29, v8

    .line 1343
    .line 1344
    goto/16 :goto_2a

    .line 1345
    .line 1346
    :cond_5a
    sget-object v15, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    .line 1347
    .line 1348
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 1349
    .line 1350
    .line 1351
    move-result v10

    .line 1352
    aget v10, v15, v10

    .line 1353
    .line 1354
    const/4 v15, 0x1

    .line 1355
    if-eq v10, v15, :cond_61

    .line 1356
    .line 1357
    const/4 v15, 0x2

    .line 1358
    if-eq v10, v15, :cond_5f

    .line 1359
    .line 1360
    const/4 v15, 0x3

    .line 1361
    if-eq v10, v15, :cond_5e

    .line 1362
    .line 1363
    const/4 v5, 0x4

    .line 1364
    if-eq v10, v5, :cond_5b

    .line 1365
    .line 1366
    const/16 v24, 0x0

    .line 1367
    .line 1368
    :goto_27
    const/16 v25, 0x1

    .line 1369
    .line 1370
    goto :goto_29

    .line 1371
    :cond_5b
    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 1372
    .line 1373
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    if-nez v0, :cond_5d

    .line 1378
    .line 1379
    :cond_5c
    :goto_28
    move-object/from16 v24, v0

    .line 1380
    .line 1381
    goto :goto_27

    .line 1382
    :cond_5d
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    move-object/from16 v24, v0

    .line 1387
    .line 1388
    move/from16 v25, v5

    .line 1389
    .line 1390
    goto :goto_29

    .line 1391
    :cond_5e
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1392
    .line 1393
    goto :goto_28

    .line 1394
    :cond_5f
    invoke-virtual {v5}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    if-eqz v0, :cond_60

    .line 1399
    .line 1400
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 1401
    .line 1402
    goto :goto_28

    .line 1403
    :cond_60
    const/4 v0, 0x0

    .line 1404
    goto :goto_28

    .line 1405
    :cond_61
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    if-eqz v0, :cond_5c

    .line 1410
    .line 1411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v5

    .line 1415
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 1416
    .line 1417
    .line 1418
    move-result v5

    .line 1419
    if-eqz v5, :cond_5c

    .line 1420
    .line 1421
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getArrayComparator(Ljava/lang/Object;)Lokhttp3/internal/http/StatusLine;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    goto :goto_28

    .line 1426
    :goto_29
    if-nez v24, :cond_62

    .line 1427
    .line 1428
    if-nez v25, :cond_62

    .line 1429
    .line 1430
    goto :goto_26

    .line 1431
    :cond_62
    new-instance v20, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    .line 1432
    .line 1433
    iget-object v0, v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1434
    .line 1435
    iget-object v5, v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1436
    .line 1437
    move-object/from16 v22, v0

    .line 1438
    .line 1439
    move-object/from16 v23, v5

    .line 1440
    .line 1441
    move-object/from16 v21, v8

    .line 1442
    .line 1443
    invoke-direct/range {v20 .. v25}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V

    .line 1444
    .line 1445
    .line 1446
    move-object/from16 v0, v20

    .line 1447
    .line 1448
    goto/16 :goto_1f

    .line 1449
    .line 1450
    :goto_2a
    move-object/from16 v0, v29

    .line 1451
    .line 1452
    goto/16 :goto_1f

    .line 1453
    .line 1454
    :cond_63
    const-class v0, Ljava/nio/ByteBuffer;

    .line 1455
    .line 1456
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    if-eqz v0, :cond_64

    .line 1461
    .line 1462
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    .line 1463
    .line 1464
    const/4 v5, 0x1

    .line 1465
    invoke-direct {v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>(I)V

    .line 1466
    .line 1467
    .line 1468
    goto/16 :goto_1f

    .line 1469
    .line 1470
    :cond_64
    const-class v0, Ljava/net/InetAddress;

    .line 1471
    .line 1472
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v0

    .line 1476
    if-eqz v0, :cond_65

    .line 1477
    .line 1478
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    .line 1479
    .line 1480
    const/4 v5, 0x2

    .line 1481
    const/4 v10, 0x0

    .line 1482
    invoke-direct {v0, v5, v10}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(IZ)V

    .line 1483
    .line 1484
    .line 1485
    goto/16 :goto_1f

    .line 1486
    .line 1487
    :cond_65
    const/4 v5, 0x2

    .line 1488
    const-class v0, Ljava/net/InetSocketAddress;

    .line 1489
    .line 1490
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v0

    .line 1494
    if-eqz v0, :cond_66

    .line 1495
    .line 1496
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    .line 1497
    .line 1498
    invoke-direct {v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>(I)V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_1f

    .line 1502
    .line 1503
    :cond_66
    const-class v0, Ljava/util/TimeZone;

    .line 1504
    .line 1505
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1506
    .line 1507
    .line 1508
    move-result v0

    .line 1509
    if-eqz v0, :cond_67

    .line 1510
    .line 1511
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    .line 1512
    .line 1513
    const/4 v5, 0x3

    .line 1514
    invoke-direct {v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>(I)V

    .line 1515
    .line 1516
    .line 1517
    goto :goto_2b

    .line 1518
    :cond_67
    const-class v0, Ljava/nio/charset/Charset;

    .line 1519
    .line 1520
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1521
    .line 1522
    .line 1523
    move-result v0

    .line 1524
    if-eqz v0, :cond_68

    .line 1525
    .line 1526
    move-object/from16 v0, v19

    .line 1527
    .line 1528
    goto/16 :goto_1f

    .line 1529
    .line 1530
    :cond_68
    const-class v0, Ljava/lang/Number;

    .line 1531
    .line 1532
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v0

    .line 1536
    if-eqz v0, :cond_6c

    .line 1537
    .line 1538
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    .line 1543
    .line 1544
    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 1545
    .line 1546
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    aget v0, v5, v0

    .line 1551
    .line 1552
    const/4 v5, 0x1

    .line 1553
    if-eq v0, v5, :cond_6b

    .line 1554
    .line 1555
    const/4 v5, 0x2

    .line 1556
    if-eq v0, v5, :cond_69

    .line 1557
    .line 1558
    const/4 v5, 0x3

    .line 1559
    if-eq v0, v5, :cond_6a

    .line 1560
    .line 1561
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    .line 1562
    .line 1563
    goto :goto_2b

    .line 1564
    :cond_69
    const/4 v5, 0x3

    .line 1565
    :cond_6a
    const/4 v0, 0x0

    .line 1566
    goto :goto_2b

    .line 1567
    :cond_6b
    const/4 v5, 0x3

    .line 1568
    move-object/from16 v0, v19

    .line 1569
    .line 1570
    goto :goto_2b

    .line 1571
    :cond_6c
    const/4 v5, 0x3

    .line 1572
    const-class v0, Ljava/lang/ClassLoader;

    .line 1573
    .line 1574
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    if-eqz v0, :cond_6a

    .line 1579
    .line 1580
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 1581
    .line 1582
    invoke-direct {v0, v9}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 1583
    .line 1584
    .line 1585
    :goto_2b
    if-nez v0, :cond_c2

    .line 1586
    .line 1587
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 1588
    .line 1589
    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    .line 1590
    .line 1591
    .line 1592
    move-result v0

    .line 1593
    if-eqz v0, :cond_6d

    .line 1594
    .line 1595
    const-string v0, "annotation"

    .line 1596
    .line 1597
    goto :goto_2c

    .line 1598
    :cond_6d
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 1599
    .line 1600
    .line 1601
    move-result v0

    .line 1602
    if-eqz v0, :cond_6e

    .line 1603
    .line 1604
    const-string v0, "array"

    .line 1605
    .line 1606
    goto :goto_2c

    .line 1607
    :cond_6e
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    if-eqz v0, :cond_6f

    .line 1612
    .line 1613
    const-string v0, "enum"

    .line 1614
    .line 1615
    goto :goto_2c

    .line 1616
    :cond_6f
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    .line 1617
    .line 1618
    .line 1619
    move-result v0

    .line 1620
    if-eqz v0, :cond_70

    .line 1621
    .line 1622
    const-string v0, "primitive"

    .line 1623
    .line 1624
    goto :goto_2c

    .line 1625
    :cond_70
    const/4 v0, 0x0

    .line 1626
    :goto_2c
    if-nez v0, :cond_71

    .line 1627
    .line 1628
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v0

    .line 1632
    const-string v8, "net.sf.cglib.proxy."

    .line 1633
    .line 1634
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v8

    .line 1638
    if-nez v8, :cond_71

    .line 1639
    .line 1640
    const-string v8, "org.hibernate.proxy."

    .line 1641
    .line 1642
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v0

    .line 1646
    if-eqz v0, :cond_72

    .line 1647
    .line 1648
    :cond_71
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-nez v0, :cond_72

    .line 1653
    .line 1654
    move-object/from16 v20, v13

    .line 1655
    .line 1656
    const/4 v7, 0x0

    .line 1657
    goto/16 :goto_58

    .line 1658
    .line 1659
    :cond_72
    iget-object v0, v13, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 1660
    .line 1661
    if-ne v0, v3, :cond_73

    .line 1662
    .line 1663
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v7

    .line 1667
    :goto_2d
    move-object/from16 v20, v13

    .line 1668
    .line 1669
    goto/16 :goto_58

    .line 1670
    .line 1671
    :cond_73
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    const-string v3, "java.time."

    .line 1676
    .line 1677
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v3

    .line 1681
    if-eqz v3, :cond_76

    .line 1682
    .line 1683
    const/16 v3, 0x2e

    .line 1684
    .line 1685
    const/16 v7, 0xa

    .line 1686
    .line 1687
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    .line 1688
    .line 1689
    .line 1690
    move-result v0

    .line 1691
    if-ltz v0, :cond_75

    .line 1692
    .line 1693
    :cond_74
    const/4 v0, 0x0

    .line 1694
    goto :goto_2f

    .line 1695
    :cond_75
    const-string v0, "Java 8 date/time"

    .line 1696
    .line 1697
    const-string v3, "com.fasterxml.jackson.datatype:jackson-datatype-jsr310"

    .line 1698
    .line 1699
    goto :goto_2e

    .line 1700
    :cond_76
    const-string v3, "org.joda.time."

    .line 1701
    .line 1702
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v0

    .line 1706
    if-eqz v0, :cond_74

    .line 1707
    .line 1708
    const-string v0, "Joda date/time"

    .line 1709
    .line 1710
    const-string v3, "com.fasterxml.jackson.datatype:jackson-datatype-joda"

    .line 1711
    .line 1712
    :goto_2e
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/String;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v7

    .line 1716
    const-string v8, " type "

    .line 1717
    .line 1718
    const-string v10, " not supported by default: add Module \""

    .line 1719
    .line 1720
    invoke-static {v0, v8, v7, v10, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    const-string v3, "\" to enable handling"

    .line 1725
    .line 1726
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    .line 1728
    .line 1729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v0

    .line 1733
    :goto_2f
    if-eqz v0, :cond_77

    .line 1734
    .line 1735
    iget-object v3, v6, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 1736
    .line 1737
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;

    .line 1738
    .line 1739
    invoke-direct {v3, v9, v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/String;)V

    .line 1740
    .line 1741
    .line 1742
    goto :goto_30

    .line 1743
    :cond_77
    const/4 v3, 0x0

    .line 1744
    :goto_30
    if-eqz v3, :cond_78

    .line 1745
    .line 1746
    move-object v7, v3

    .line 1747
    goto :goto_2d

    .line 1748
    :cond_78
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1749
    .line 1750
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v0

    .line 1754
    if-nez v0, :cond_79

    .line 1755
    .line 1756
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 1757
    .line 1758
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1759
    .line 1760
    .line 1761
    move-result v0

    .line 1762
    if-nez v0, :cond_79

    .line 1763
    .line 1764
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 1765
    .line 1766
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v0

    .line 1770
    if-nez v0, :cond_79

    .line 1771
    .line 1772
    const-class v0, Lcom/fasterxml/jackson/databind/SerializerProvider;

    .line 1773
    .line 1774
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1775
    .line 1776
    .line 1777
    move-result v0

    .line 1778
    if-nez v0, :cond_79

    .line 1779
    .line 1780
    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    .line 1781
    .line 1782
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v0

    .line 1786
    if-nez v0, :cond_79

    .line 1787
    .line 1788
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser;

    .line 1789
    .line 1790
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    if-nez v0, :cond_79

    .line 1795
    .line 1796
    const-class v0, Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1797
    .line 1798
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v0

    .line 1802
    if-eqz v0, :cond_7a

    .line 1803
    .line 1804
    :cond_79
    move-object v15, v9

    .line 1805
    move-object/from16 v20, v13

    .line 1806
    .line 1807
    goto/16 :goto_57

    .line 1808
    .line 1809
    :cond_7a
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    .line 1810
    .line 1811
    invoke-direct {v7, v11}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)V

    .line 1812
    .line 1813
    .line 1814
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 1815
    .line 1816
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 1817
    .line 1818
    iput-object v6, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1819
    .line 1820
    iget-object v0, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 1821
    .line 1822
    if-nez v0, :cond_7c

    .line 1823
    .line 1824
    iget-boolean v0, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 1825
    .line 1826
    if-nez v0, :cond_7b

    .line 1827
    .line 1828
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 1829
    .line 1830
    .line 1831
    :cond_7b
    iget-object v0, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 1832
    .line 1833
    new-instance v3, Ljava/util/ArrayList;

    .line 1834
    .line 1835
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v0

    .line 1839
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1840
    .line 1841
    .line 1842
    iput-object v3, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    .line 1843
    .line 1844
    move-object v0, v3

    .line 1845
    :cond_7c
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v3

    .line 1849
    iget-object v10, v6, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 1850
    .line 1851
    move-object/from16 v18, v8

    .line 1852
    .line 1853
    move-object v15, v9

    .line 1854
    iget-wide v8, v6, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 1855
    .line 1856
    new-instance v5, Ljava/util/HashMap;

    .line 1857
    .line 1858
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1859
    .line 1860
    .line 1861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v20

    .line 1865
    :goto_31
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 1866
    .line 1867
    .line 1868
    move-result v21

    .line 1869
    if-eqz v21, :cond_82

    .line 1870
    .line 1871
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v21

    .line 1875
    check-cast v21, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 1876
    .line 1877
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v22

    .line 1881
    if-nez v22, :cond_7d

    .line 1882
    .line 1883
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    .line 1884
    .line 1885
    .line 1886
    goto :goto_31

    .line 1887
    :cond_7d
    move-object/from16 v22, v0

    .line 1888
    .line 1889
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getRawPrimaryType()Ljava/lang/Class;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v0

    .line 1893
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v21

    .line 1897
    check-cast v21, Ljava/lang/Boolean;

    .line 1898
    .line 1899
    if-nez v21, :cond_80

    .line 1900
    .line 1901
    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v1

    .line 1905
    move-object/from16 v23, v2

    .line 1906
    .line 1907
    iget-object v2, v10, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1908
    .line 1909
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    .line 1910
    .line 1911
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1912
    .line 1913
    .line 1914
    invoke-static {v6, v1}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v2

    .line 1918
    if-nez v2, :cond_7e

    .line 1919
    .line 1920
    invoke-static {v6, v1, v6}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v2

    .line 1924
    invoke-static {v6, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    :cond_7e
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 1929
    .line 1930
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v1

    .line 1934
    if-nez v1, :cond_7f

    .line 1935
    .line 1936
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1937
    .line 1938
    :cond_7f
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    move-object/from16 v21, v1

    .line 1942
    .line 1943
    goto :goto_32

    .line 1944
    :cond_80
    move-object/from16 v23, v2

    .line 1945
    .line 1946
    :goto_32
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1947
    .line 1948
    .line 1949
    move-result v0

    .line 1950
    if-eqz v0, :cond_81

    .line 1951
    .line 1952
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    .line 1953
    .line 1954
    .line 1955
    :cond_81
    move-object/from16 v1, p0

    .line 1956
    .line 1957
    move-object/from16 v0, v22

    .line 1958
    .line 1959
    move-object/from16 v2, v23

    .line 1960
    .line 1961
    goto :goto_31

    .line 1962
    :cond_82
    move-object/from16 v22, v0

    .line 1963
    .line 1964
    move-object/from16 v23, v2

    .line 1965
    .line 1966
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1967
    .line 1968
    invoke-virtual {v0, v8, v9}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 1969
    .line 1970
    .line 1971
    move-result v0

    .line 1972
    if-eqz v0, :cond_84

    .line 1973
    .line 1974
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    :cond_83
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v1

    .line 1982
    if-eqz v1, :cond_84

    .line 1983
    .line 1984
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v1

    .line 1988
    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 1989
    .line 1990
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldDeserialize()Z

    .line 1991
    .line 1992
    .line 1993
    move-result v2

    .line 1994
    if-nez v2, :cond_83

    .line 1995
    .line 1996
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v1

    .line 2000
    if-nez v1, :cond_83

    .line 2001
    .line 2002
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2003
    .line 2004
    .line 2005
    goto :goto_33

    .line 2006
    :cond_84
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    .line 2007
    .line 2008
    .line 2009
    move-result v0

    .line 2010
    if-eqz v0, :cond_85

    .line 2011
    .line 2012
    move-object/from16 v24, v4

    .line 2013
    .line 2014
    move-object/from16 p1, v15

    .line 2015
    .line 2016
    const/4 v15, 0x0

    .line 2017
    move-object/from16 v1, p0

    .line 2018
    .line 2019
    move-wide/from16 v21, v8

    .line 2020
    .line 2021
    move-object/from16 v0, v23

    .line 2022
    .line 2023
    move-object/from16 v8, v28

    .line 2024
    .line 2025
    goto/16 :goto_36

    .line 2026
    .line 2027
    :cond_85
    move-object v0, v4

    .line 2028
    invoke-static {v6, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Z

    .line 2029
    .line 2030
    .line 2031
    move-result v4

    .line 2032
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 2033
    .line 2034
    invoke-direct {v3, v6, v11}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)V

    .line 2035
    .line 2036
    .line 2037
    new-instance v1, Ljava/util/ArrayList;

    .line 2038
    .line 2039
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    .line 2040
    .line 2041
    .line 2042
    move-result v2

    .line 2043
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2044
    .line 2045
    .line 2046
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v20

    .line 2050
    :cond_86
    :goto_34
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 2051
    .line 2052
    .line 2053
    move-result v2

    .line 2054
    if-eqz v2, :cond_8c

    .line 2055
    .line 2056
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v2

    .line 2060
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 2061
    .line 2062
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v5

    .line 2066
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isTypeId()Z

    .line 2067
    .line 2068
    .line 2069
    move-result v21

    .line 2070
    if-eqz v21, :cond_88

    .line 2071
    .line 2072
    if-eqz v5, :cond_86

    .line 2073
    .line 2074
    iget-object v2, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2075
    .line 2076
    if-nez v2, :cond_87

    .line 2077
    .line 2078
    iput-object v5, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2079
    .line 2080
    goto :goto_34

    .line 2081
    :cond_87
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2082
    .line 2083
    const-string v1, " and "

    .line 2084
    .line 2085
    const-string v2, "Multiple type ids specified with "

    .line 2086
    .line 2087
    invoke-static {v2, v0, v1, v5}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2088
    .line 2089
    .line 2090
    const/16 v17, 0x0

    .line 2091
    .line 2092
    return-object v17

    .line 2093
    :cond_88
    move-object/from16 v21, v0

    .line 2094
    .line 2095
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceType()Lcoil3/memory/MemoryCacheService;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v0

    .line 2099
    if-eqz v0, :cond_89

    .line 2100
    .line 2101
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 2102
    .line 2103
    check-cast v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    .line 2104
    .line 2105
    move-object/from16 v22, v1

    .line 2106
    .line 2107
    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    .line 2108
    .line 2109
    if-ne v0, v1, :cond_8a

    .line 2110
    .line 2111
    move-object/from16 v0, v21

    .line 2112
    .line 2113
    move-object/from16 v1, v22

    .line 2114
    .line 2115
    goto :goto_34

    .line 2116
    :cond_89
    move-object/from16 v22, v1

    .line 2117
    .line 2118
    :cond_8a
    instance-of v0, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2119
    .line 2120
    if-eqz v0, :cond_8b

    .line 2121
    .line 2122
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2123
    .line 2124
    move-object/from16 v1, p0

    .line 2125
    .line 2126
    move-object/from16 p1, v15

    .line 2127
    .line 2128
    move-object/from16 v24, v21

    .line 2129
    .line 2130
    move-object/from16 v15, v22

    .line 2131
    .line 2132
    move-object/from16 v0, v23

    .line 2133
    .line 2134
    move-wide/from16 v21, v8

    .line 2135
    .line 2136
    move-object/from16 v8, v28

    .line 2137
    .line 2138
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v2

    .line 2142
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    .line 2144
    .line 2145
    goto :goto_35

    .line 2146
    :cond_8b
    move-object/from16 p1, v15

    .line 2147
    .line 2148
    move-object/from16 v24, v21

    .line 2149
    .line 2150
    move-object/from16 v15, v22

    .line 2151
    .line 2152
    move-object/from16 v0, v23

    .line 2153
    .line 2154
    move-wide/from16 v21, v8

    .line 2155
    .line 2156
    move-object/from16 v8, v28

    .line 2157
    .line 2158
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 2159
    .line 2160
    move-object/from16 v1, p0

    .line 2161
    .line 2162
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v2

    .line 2166
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    .line 2168
    .line 2169
    :goto_35
    move-object/from16 v23, v0

    .line 2170
    .line 2171
    move-object/from16 v28, v8

    .line 2172
    .line 2173
    move-object v1, v15

    .line 2174
    move-wide/from16 v8, v21

    .line 2175
    .line 2176
    move-object/from16 v0, v24

    .line 2177
    .line 2178
    move-object/from16 v15, p1

    .line 2179
    .line 2180
    goto/16 :goto_34

    .line 2181
    .line 2182
    :cond_8c
    move-object/from16 v24, v0

    .line 2183
    .line 2184
    move-object/from16 p1, v15

    .line 2185
    .line 2186
    move-object v15, v1

    .line 2187
    move-wide/from16 v21, v8

    .line 2188
    .line 2189
    move-object/from16 v0, v23

    .line 2190
    .line 2191
    move-object/from16 v8, v28

    .line 2192
    .line 2193
    move-object/from16 v1, p0

    .line 2194
    .line 2195
    :goto_36
    if-nez v15, :cond_8d

    .line 2196
    .line 2197
    new-instance v15, Ljava/util/ArrayList;

    .line 2198
    .line 2199
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    .line 2201
    .line 2202
    goto/16 :goto_3d

    .line 2203
    .line 2204
    :cond_8d
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 2205
    .line 2206
    .line 2207
    move-result v2

    .line 2208
    const/4 v3, 0x0

    .line 2209
    :goto_37
    if-ge v3, v2, :cond_95

    .line 2210
    .line 2211
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v4

    .line 2215
    check-cast v4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2216
    .line 2217
    iget-object v5, v4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 2218
    .line 2219
    if-eqz v5, :cond_94

    .line 2220
    .line 2221
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v9

    .line 2225
    move/from16 v20, v2

    .line 2226
    .line 2227
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 2228
    .line 2229
    if-eq v9, v2, :cond_8f

    .line 2230
    .line 2231
    :cond_8e
    :goto_38
    move/from16 v23, v3

    .line 2232
    .line 2233
    goto :goto_3c

    .line 2234
    :cond_8f
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getPropertyName()Ljava/lang/String;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v2

    .line 2238
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v2

    .line 2242
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v5

    .line 2246
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2247
    .line 2248
    .line 2249
    move-result v9

    .line 2250
    if-eqz v9, :cond_8e

    .line 2251
    .line 2252
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v9

    .line 2256
    check-cast v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2257
    .line 2258
    move/from16 v23, v3

    .line 2259
    .line 2260
    if-eq v9, v4, :cond_93

    .line 2261
    .line 2262
    iget-object v3, v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2263
    .line 2264
    if-eqz v3, :cond_90

    .line 2265
    .line 2266
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    .line 2267
    .line 2268
    .line 2269
    move-result v3

    .line 2270
    goto :goto_3b

    .line 2271
    :cond_90
    iget-object v3, v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 2272
    .line 2273
    iget-object v3, v3, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 2274
    .line 2275
    iget-object v9, v2, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 2276
    .line 2277
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2278
    .line 2279
    .line 2280
    move-result v3

    .line 2281
    if-eqz v3, :cond_92

    .line 2282
    .line 2283
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 2284
    .line 2285
    if-eqz v3, :cond_91

    .line 2286
    .line 2287
    goto :goto_3a

    .line 2288
    :cond_91
    const/4 v3, 0x1

    .line 2289
    goto :goto_3b

    .line 2290
    :cond_92
    :goto_3a
    const/4 v3, 0x0

    .line 2291
    :goto_3b
    if-eqz v3, :cond_93

    .line 2292
    .line 2293
    const/4 v3, 0x0

    .line 2294
    iput-object v3, v4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 2295
    .line 2296
    goto :goto_3c

    .line 2297
    :cond_93
    move/from16 v3, v23

    .line 2298
    .line 2299
    goto :goto_39

    .line 2300
    :cond_94
    move/from16 v20, v2

    .line 2301
    .line 2302
    goto :goto_38

    .line 2303
    :goto_3c
    add-int/lit8 v3, v23, 0x1

    .line 2304
    .line 2305
    move/from16 v2, v20

    .line 2306
    .line 2307
    goto :goto_37

    .line 2308
    :cond_95
    :goto_3d
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v2

    .line 2312
    invoke-virtual {v2, v6, v12, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/ArrayList;)V

    .line 2313
    .line 2314
    .line 2315
    const-class v2, Ljava/lang/CharSequence;

    .line 2316
    .line 2317
    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    .line 2318
    .line 2319
    .line 2320
    move-result v3

    .line 2321
    if-eqz v3, :cond_96

    .line 2322
    .line 2323
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 2324
    .line 2325
    .line 2326
    move-result v3

    .line 2327
    const/4 v5, 0x1

    .line 2328
    if-ne v3, v5, :cond_96

    .line 2329
    .line 2330
    const/4 v5, 0x0

    .line 2331
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v3

    .line 2335
    check-cast v3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2336
    .line 2337
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2338
    .line 2339
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2340
    .line 2341
    if-eqz v4, :cond_96

    .line 2342
    .line 2343
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2344
    .line 2345
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    .line 2346
    .line 2347
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v4

    .line 2351
    const-string v5, "isEmpty"

    .line 2352
    .line 2353
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v4

    .line 2357
    if-eqz v4, :cond_96

    .line 2358
    .line 2359
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v3

    .line 2363
    if-ne v3, v2, :cond_96

    .line 2364
    .line 2365
    const/4 v5, 0x0

    .line 2366
    invoke-interface {v15, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    :cond_96
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v3

    .line 2373
    invoke-virtual {v3, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v3

    .line 2377
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 2378
    .line 2379
    if-nez v3, :cond_97

    .line 2380
    .line 2381
    const/4 v3, 0x0

    .line 2382
    :cond_97
    iget-object v4, v10, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2383
    .line 2384
    if-eqz v3, :cond_99

    .line 2385
    .line 2386
    iget-boolean v5, v3, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    .line 2387
    .line 2388
    if-eqz v5, :cond_98

    .line 2389
    .line 2390
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2391
    .line 2392
    goto :goto_3e

    .line 2393
    :cond_98
    iget-object v3, v3, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 2394
    .line 2395
    goto :goto_3e

    .line 2396
    :cond_99
    const/4 v3, 0x0

    .line 2397
    :goto_3e
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2398
    .line 2399
    .line 2400
    move-result-object v5

    .line 2401
    invoke-virtual {v5, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v5

    .line 2405
    iget-object v5, v5, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    .line 2406
    .line 2407
    if-nez v5, :cond_9b

    .line 2408
    .line 2409
    if-eqz v3, :cond_9a

    .line 2410
    .line 2411
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 2412
    .line 2413
    .line 2414
    move-result v9

    .line 2415
    if-nez v9, :cond_9a

    .line 2416
    .line 2417
    goto :goto_3f

    .line 2418
    :cond_9a
    move-object/from16 v23, v4

    .line 2419
    .line 2420
    goto :goto_41

    .line 2421
    :cond_9b
    :goto_3f
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v9

    .line 2425
    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 2426
    .line 2427
    .line 2428
    move-result v10

    .line 2429
    if-eqz v10, :cond_9a

    .line 2430
    .line 2431
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v10

    .line 2435
    check-cast v10, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2436
    .line 2437
    iget-object v10, v10, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 2438
    .line 2439
    iget-object v10, v10, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 2440
    .line 2441
    move-object/from16 v20, v3

    .line 2442
    .line 2443
    move-object/from16 v3, v20

    .line 2444
    .line 2445
    check-cast v3, Ljava/util/Set;

    .line 2446
    .line 2447
    move-object/from16 v23, v4

    .line 2448
    .line 2449
    move-object v4, v5

    .line 2450
    check-cast v4, Ljava/util/Set;

    .line 2451
    .line 2452
    invoke-static {v10, v3, v4}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    .line 2453
    .line 2454
    .line 2455
    move-result v3

    .line 2456
    if-eqz v3, :cond_9c

    .line 2457
    .line 2458
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 2459
    .line 2460
    .line 2461
    :cond_9c
    move-object/from16 v3, v20

    .line 2462
    .line 2463
    move-object/from16 v4, v23

    .line 2464
    .line 2465
    goto :goto_40

    .line 2466
    :goto_41
    iget-object v3, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 2467
    .line 2468
    if-nez v3, :cond_9d

    .line 2469
    .line 2470
    move-object/from16 v25, v11

    .line 2471
    .line 2472
    move-object/from16 v20, v13

    .line 2473
    .line 2474
    const/4 v3, 0x0

    .line 2475
    goto/16 :goto_45

    .line 2476
    .line 2477
    :cond_9d
    iget-boolean v4, v3, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    .line 2478
    .line 2479
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2480
    .line 2481
    iget-object v9, v3, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    .line 2482
    .line 2483
    const-class v10, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 2484
    .line 2485
    if-ne v9, v10, :cond_a2

    .line 2486
    .line 2487
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 2488
    .line 2489
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 2490
    .line 2491
    .line 2492
    move-result v9

    .line 2493
    const/4 v10, 0x0

    .line 2494
    :goto_42
    if-eq v10, v9, :cond_a0

    .line 2495
    .line 2496
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2497
    .line 2498
    .line 2499
    move-result-object v20

    .line 2500
    move/from16 v25, v9

    .line 2501
    .line 2502
    move-object/from16 v9, v20

    .line 2503
    .line 2504
    check-cast v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2505
    .line 2506
    move-object/from16 v20, v13

    .line 2507
    .line 2508
    iget-object v13, v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 2509
    .line 2510
    iget-object v13, v13, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 2511
    .line 2512
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2513
    .line 2514
    .line 2515
    move-result v13

    .line 2516
    if-eqz v13, :cond_9f

    .line 2517
    .line 2518
    if-lez v10, :cond_9e

    .line 2519
    .line 2520
    invoke-interface {v15, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2521
    .line 2522
    .line 2523
    const/4 v5, 0x0

    .line 2524
    invoke-interface {v15, v5, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2525
    .line 2526
    .line 2527
    :cond_9e
    iget-object v5, v9, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2528
    .line 2529
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 2530
    .line 2531
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    .line 2532
    .line 2533
    invoke-direct {v10, v3, v9}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 2534
    .line 2535
    .line 2536
    const/4 v3, 0x0

    .line 2537
    invoke-static {v5, v3, v10, v4}, Lokhttp3/Cache$RealCacheRequest;->construct(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Z)Lokhttp3/Cache$RealCacheRequest;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v4

    .line 2541
    move-object v3, v4

    .line 2542
    move-object/from16 v25, v11

    .line 2543
    .line 2544
    goto :goto_45

    .line 2545
    :cond_9f
    add-int/lit8 v10, v10, 0x1

    .line 2546
    .line 2547
    move-object/from16 v13, v20

    .line 2548
    .line 2549
    move/from16 v9, v25

    .line 2550
    .line 2551
    goto :goto_42

    .line 2552
    :cond_a0
    move-object/from16 v20, v13

    .line 2553
    .line 2554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2555
    .line 2556
    invoke-static/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/String;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v1

    .line 2560
    if-nez v5, :cond_a1

    .line 2561
    .line 2562
    const-string v2, "[null]"

    .line 2563
    .line 2564
    goto :goto_43

    .line 2565
    :cond_a1
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->apostrophed(Ljava/lang/String;)Ljava/lang/String;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v2

    .line 2569
    :goto_43
    const-string v3, "Invalid Object Id definition for "

    .line 2570
    .line 2571
    const-string v4, ": cannot find property with name "

    .line 2572
    .line 2573
    invoke-static {v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v1

    .line 2577
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2578
    .line 2579
    .line 2580
    throw v0

    .line 2581
    :cond_a2
    move-object/from16 v20, v13

    .line 2582
    .line 2583
    if-nez v9, :cond_a3

    .line 2584
    .line 2585
    move-object/from16 v25, v11

    .line 2586
    .line 2587
    const/4 v9, 0x0

    .line 2588
    goto :goto_44

    .line 2589
    :cond_a3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v10

    .line 2593
    sget-object v13, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 2594
    .line 2595
    move-object/from16 v25, v11

    .line 2596
    .line 2597
    const/4 v11, 0x0

    .line 2598
    invoke-virtual {v10, v11, v9, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v9

    .line 2602
    :goto_44
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2603
    .line 2604
    .line 2605
    move-result-object v10

    .line 2606
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2607
    .line 2608
    .line 2609
    const-class v10, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 2610
    .line 2611
    invoke-static {v9, v10}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v9

    .line 2615
    const/16 v16, 0x0

    .line 2616
    .line 2617
    aget-object v9, v9, v16

    .line 2618
    .line 2619
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v3

    .line 2623
    invoke-static {v9, v5, v3, v4}, Lokhttp3/Cache$RealCacheRequest;->construct(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Z)Lokhttp3/Cache$RealCacheRequest;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v3

    .line 2627
    :goto_45
    iput-object v3, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 2628
    .line 2629
    iput-object v15, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 2630
    .line 2631
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2632
    .line 2633
    .line 2634
    move-result-object v3

    .line 2635
    invoke-virtual {v3, v12}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v3

    .line 2639
    iput-object v3, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 2640
    .line 2641
    if-eqz v14, :cond_ad

    .line 2642
    .line 2643
    iget-boolean v3, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 2644
    .line 2645
    if-nez v3, :cond_a4

    .line 2646
    .line 2647
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 2648
    .line 2649
    .line 2650
    :cond_a4
    iget-object v3, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 2651
    .line 2652
    if-eqz v3, :cond_a6

    .line 2653
    .line 2654
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 2655
    .line 2656
    .line 2657
    move-result v3

    .line 2658
    iget-object v4, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 2659
    .line 2660
    const/4 v5, 0x1

    .line 2661
    if-gt v3, v5, :cond_a5

    .line 2662
    .line 2663
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v3

    .line 2667
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2668
    .line 2669
    goto :goto_46

    .line 2670
    :cond_a5
    const/4 v10, 0x0

    .line 2671
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v0

    .line 2675
    iget-object v1, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 2676
    .line 2677
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v1

    .line 2681
    const/4 v15, 0x2

    .line 2682
    new-array v2, v15, [Ljava/lang/Object;

    .line 2683
    .line 2684
    aput-object v0, v2, v10

    .line 2685
    .line 2686
    aput-object v1, v2, v5

    .line 2687
    .line 2688
    const-string v0, "Multiple \'any-getter\' methods defined (%s vs %s)"

    .line 2689
    .line 2690
    invoke-virtual {v14, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2691
    .line 2692
    .line 2693
    const/16 v17, 0x0

    .line 2694
    .line 2695
    throw v17

    .line 2696
    :cond_a6
    const/4 v3, 0x0

    .line 2697
    :goto_46
    if-eqz v3, :cond_a8

    .line 2698
    .line 2699
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 2700
    .line 2701
    .line 2702
    move-result-object v4

    .line 2703
    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2704
    .line 2705
    .line 2706
    move-result v4

    .line 2707
    if-eqz v4, :cond_a7

    .line 2708
    .line 2709
    goto :goto_48

    .line 2710
    :cond_a7
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v0

    .line 2714
    const-string v1, "Invalid \'any-getter\' annotation on method "

    .line 2715
    .line 2716
    const-string v2, "(): return type is not instance of java.util.Map"

    .line 2717
    .line 2718
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v0

    .line 2722
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 2723
    .line 2724
    .line 2725
    const/16 v17, 0x0

    .line 2726
    .line 2727
    return-object v17

    .line 2728
    :cond_a8
    iget-boolean v3, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 2729
    .line 2730
    if-nez v3, :cond_a9

    .line 2731
    .line 2732
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 2733
    .line 2734
    .line 2735
    :cond_a9
    iget-object v3, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetterField:Ljava/util/LinkedList;

    .line 2736
    .line 2737
    if-eqz v3, :cond_ab

    .line 2738
    .line 2739
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 2740
    .line 2741
    .line 2742
    move-result v3

    .line 2743
    iget-object v4, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetterField:Ljava/util/LinkedList;

    .line 2744
    .line 2745
    const/4 v5, 0x1

    .line 2746
    if-gt v3, v5, :cond_aa

    .line 2747
    .line 2748
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v3

    .line 2752
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2753
    .line 2754
    goto :goto_47

    .line 2755
    :cond_aa
    const/4 v10, 0x0

    .line 2756
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v0

    .line 2760
    iget-object v1, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetterField:Ljava/util/LinkedList;

    .line 2761
    .line 2762
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v1

    .line 2766
    const/4 v15, 0x2

    .line 2767
    new-array v2, v15, [Ljava/lang/Object;

    .line 2768
    .line 2769
    aput-object v0, v2, v10

    .line 2770
    .line 2771
    aput-object v1, v2, v5

    .line 2772
    .line 2773
    const-string v0, "Multiple \'any-getter\' fields defined (%s vs %s)"

    .line 2774
    .line 2775
    invoke-virtual {v14, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2776
    .line 2777
    .line 2778
    const/16 v17, 0x0

    .line 2779
    .line 2780
    throw v17

    .line 2781
    :cond_ab
    const/4 v3, 0x0

    .line 2782
    :goto_47
    if-eqz v3, :cond_ad

    .line 2783
    .line 2784
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 2785
    .line 2786
    .line 2787
    move-result-object v4

    .line 2788
    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2789
    .line 2790
    .line 2791
    move-result v4

    .line 2792
    if-eqz v4, :cond_ac

    .line 2793
    .line 2794
    goto :goto_48

    .line 2795
    :cond_ac
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v0

    .line 2799
    const-string v1, "Invalid \'any-getter\' annotation on field \'"

    .line 2800
    .line 2801
    const-string v2, "\': type is not instance of java.util.Map"

    .line 2802
    .line 2803
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v0

    .line 2807
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 2808
    .line 2809
    .line 2810
    const/16 v17, 0x0

    .line 2811
    .line 2812
    return-object v17

    .line 2813
    :cond_ad
    const/4 v3, 0x0

    .line 2814
    :goto_48
    if-eqz v3, :cond_af

    .line 2815
    .line 2816
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v39

    .line 2820
    invoke-virtual/range {v39 .. v39}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v4

    .line 2824
    invoke-virtual {v0, v6, v4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 2825
    .line 2826
    .line 2827
    move-result-object v41

    .line 2828
    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 2829
    .line 2830
    .line 2831
    move-result-object v5

    .line 2832
    if-nez v5, :cond_ae

    .line 2833
    .line 2834
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2835
    .line 2836
    move-wide/from16 v8, v21

    .line 2837
    .line 2838
    invoke-virtual {v5, v8, v9}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 2839
    .line 2840
    .line 2841
    move-result v40

    .line 2842
    const/16 v44, 0x0

    .line 2843
    .line 2844
    const/16 v38, 0x0

    .line 2845
    .line 2846
    const/16 v37, 0x0

    .line 2847
    .line 2848
    const/16 v42, 0x0

    .line 2849
    .line 2850
    const/16 v43, 0x0

    .line 2851
    .line 2852
    invoke-static/range {v37 .. v44}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 2853
    .line 2854
    .line 2855
    move-result-object v5

    .line 2856
    goto :goto_49

    .line 2857
    :cond_ae
    move-wide/from16 v8, v21

    .line 2858
    .line 2859
    :goto_49
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 2860
    .line 2861
    .line 2862
    move-result-object v10

    .line 2863
    invoke-static {v10}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2864
    .line 2865
    .line 2866
    new-instance v10, Lkotlin/UnsafeLazyImpl;

    .line 2867
    .line 2868
    sget-object v11, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 2869
    .line 2870
    invoke-direct {v10, v4, v3, v11}, Lkotlin/UnsafeLazyImpl;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 2871
    .line 2872
    .line 2873
    new-instance v4, Lcoil3/ImageLoader$Builder;

    .line 2874
    .line 2875
    invoke-direct {v4, v10, v3, v5}, Lcoil3/ImageLoader$Builder;-><init>(Lkotlin/UnsafeLazyImpl;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 2876
    .line 2877
    .line 2878
    iput-object v4, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcoil3/ImageLoader$Builder;

    .line 2879
    .line 2880
    goto :goto_4a

    .line 2881
    :cond_af
    move-wide/from16 v8, v21

    .line 2882
    .line 2883
    :goto_4a
    iget-object v3, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 2884
    .line 2885
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2886
    .line 2887
    invoke-virtual {v4, v8, v9}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 2888
    .line 2889
    .line 2890
    move-result v4

    .line 2891
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2892
    .line 2893
    .line 2894
    move-result v5

    .line 2895
    new-array v8, v5, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2896
    .line 2897
    const/4 v9, 0x0

    .line 2898
    const/4 v10, 0x0

    .line 2899
    :goto_4b
    if-ge v9, v5, :cond_b4

    .line 2900
    .line 2901
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v11

    .line 2905
    check-cast v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2906
    .line 2907
    iget-object v13, v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    .line 2908
    .line 2909
    if-eqz v13, :cond_b0

    .line 2910
    .line 2911
    array-length v14, v13

    .line 2912
    if-nez v14, :cond_b1

    .line 2913
    .line 2914
    :cond_b0
    move-object/from16 v21, v3

    .line 2915
    .line 2916
    goto :goto_4d

    .line 2917
    :cond_b1
    add-int/lit8 v10, v10, 0x1

    .line 2918
    .line 2919
    array-length v14, v13

    .line 2920
    const/4 v15, 0x1

    .line 2921
    if-ne v14, v15, :cond_b2

    .line 2922
    .line 2923
    new-instance v14, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;

    .line 2924
    .line 2925
    move-object/from16 v21, v3

    .line 2926
    .line 2927
    const/4 v3, 0x0

    .line 2928
    aget-object v13, v13, v3

    .line 2929
    .line 2930
    invoke-direct {v14, v11, v13, v15}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Ljava/io/Serializable;I)V

    .line 2931
    .line 2932
    .line 2933
    goto :goto_4c

    .line 2934
    :cond_b2
    move-object/from16 v21, v3

    .line 2935
    .line 2936
    const/4 v3, 0x0

    .line 2937
    new-instance v14, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;

    .line 2938
    .line 2939
    invoke-direct {v14, v11, v13, v3}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Ljava/io/Serializable;I)V

    .line 2940
    .line 2941
    .line 2942
    :goto_4c
    aput-object v14, v8, v9

    .line 2943
    .line 2944
    goto :goto_4e

    .line 2945
    :goto_4d
    if-eqz v4, :cond_b3

    .line 2946
    .line 2947
    aput-object v11, v8, v9

    .line 2948
    .line 2949
    :cond_b3
    :goto_4e
    add-int/lit8 v9, v9, 0x1

    .line 2950
    .line 2951
    move-object/from16 v3, v21

    .line 2952
    .line 2953
    goto :goto_4b

    .line 2954
    :cond_b4
    if-eqz v4, :cond_b5

    .line 2955
    .line 2956
    if-nez v10, :cond_b5

    .line 2957
    .line 2958
    goto :goto_4f

    .line 2959
    :cond_b5
    iget-object v3, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 2960
    .line 2961
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2962
    .line 2963
    .line 2964
    move-result v3

    .line 2965
    if-ne v5, v3, :cond_c0

    .line 2966
    .line 2967
    iput-object v8, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2968
    .line 2969
    :goto_4f
    :try_start_1
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->build()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    .line 2970
    .line 2971
    .line 2972
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2973
    if-nez v3, :cond_bf

    .line 2974
    .line 2975
    sget-object v3, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 2976
    .line 2977
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 2978
    .line 2979
    .line 2980
    move-result-object v3

    .line 2981
    if-eqz v3, :cond_b6

    .line 2982
    .line 2983
    const-string v4, "java.lang.Record"

    .line 2984
    .line 2985
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2986
    .line 2987
    .line 2988
    move-result-object v3

    .line 2989
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2990
    .line 2991
    .line 2992
    move-result v3

    .line 2993
    if-eqz v3, :cond_b6

    .line 2994
    .line 2995
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    .line 2996
    .line 2997
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2998
    .line 2999
    move-object/from16 v3, v18

    .line 3000
    .line 3001
    const/4 v10, 0x0

    .line 3002
    invoke-direct {v0, v3, v7, v2, v10}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 3003
    .line 3004
    .line 3005
    :goto_50
    move-object v7, v0

    .line 3006
    goto/16 :goto_58

    .line 3007
    .line 3008
    :cond_b6
    move-object/from16 v3, v18

    .line 3009
    .line 3010
    const-class v4, Ljava/util/Iterator;

    .line 3011
    .line 3012
    move-object/from16 v5, v24

    .line 3013
    .line 3014
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 3015
    .line 3016
    .line 3017
    move-result v8

    .line 3018
    if-eqz v8, :cond_b9

    .line 3019
    .line 3020
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3021
    .line 3022
    .line 3023
    move-object/from16 v15, p1

    .line 3024
    .line 3025
    invoke-static {v15, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 3026
    .line 3027
    .line 3028
    move-result-object v2

    .line 3029
    if-eqz v2, :cond_b8

    .line 3030
    .line 3031
    array-length v5, v2

    .line 3032
    const/4 v15, 0x1

    .line 3033
    if-eq v5, v15, :cond_b7

    .line 3034
    .line 3035
    goto :goto_51

    .line 3036
    :cond_b7
    const/16 v16, 0x0

    .line 3037
    .line 3038
    aget-object v2, v2, v16

    .line 3039
    .line 3040
    goto :goto_52

    .line 3041
    :cond_b8
    :goto_51
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 3042
    .line 3043
    .line 3044
    move-result-object v2

    .line 3045
    :goto_52
    new-instance v29, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    .line 3046
    .line 3047
    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 3048
    .line 3049
    .line 3050
    move-result-object v33

    .line 3051
    const/16 v34, 0x0

    .line 3052
    .line 3053
    const/16 v35, 0x2

    .line 3054
    .line 3055
    move-object/from16 v31, v2

    .line 3056
    .line 3057
    move-object/from16 v30, v4

    .line 3058
    .line 3059
    invoke-direct/range {v29 .. v35}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;I)V

    .line 3060
    .line 3061
    .line 3062
    :goto_53
    move-object/from16 v15, v29

    .line 3063
    .line 3064
    goto :goto_56

    .line 3065
    :cond_b9
    move-object/from16 v15, p1

    .line 3066
    .line 3067
    const-class v4, Ljava/lang/Iterable;

    .line 3068
    .line 3069
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 3070
    .line 3071
    .line 3072
    move-result v8

    .line 3073
    if-eqz v8, :cond_bc

    .line 3074
    .line 3075
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3076
    .line 3077
    .line 3078
    invoke-static {v15, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 3079
    .line 3080
    .line 3081
    move-result-object v2

    .line 3082
    if-eqz v2, :cond_bb

    .line 3083
    .line 3084
    array-length v5, v2

    .line 3085
    const/4 v15, 0x1

    .line 3086
    if-eq v5, v15, :cond_ba

    .line 3087
    .line 3088
    goto :goto_54

    .line 3089
    :cond_ba
    const/16 v16, 0x0

    .line 3090
    .line 3091
    aget-object v2, v2, v16

    .line 3092
    .line 3093
    goto :goto_55

    .line 3094
    :cond_bb
    :goto_54
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 3095
    .line 3096
    .line 3097
    move-result-object v2

    .line 3098
    :goto_55
    new-instance v29, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    .line 3099
    .line 3100
    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v33

    .line 3104
    const/16 v34, 0x0

    .line 3105
    .line 3106
    const/16 v35, 0x4

    .line 3107
    .line 3108
    move-object/from16 v31, v2

    .line 3109
    .line 3110
    move-object/from16 v30, v4

    .line 3111
    .line 3112
    invoke-direct/range {v29 .. v35}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;I)V

    .line 3113
    .line 3114
    .line 3115
    goto :goto_53

    .line 3116
    :cond_bc
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 3117
    .line 3118
    .line 3119
    move-result v0

    .line 3120
    if-eqz v0, :cond_bd

    .line 3121
    .line 3122
    move-object/from16 v15, v19

    .line 3123
    .line 3124
    goto :goto_56

    .line 3125
    :cond_bd
    const/4 v15, 0x0

    .line 3126
    :goto_56
    if-nez v15, :cond_be

    .line 3127
    .line 3128
    iget-object v0, v12, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 3129
    .line 3130
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/Annotations;->size()I

    .line 3131
    .line 3132
    .line 3133
    move-result v0

    .line 3134
    if-lez v0, :cond_be

    .line 3135
    .line 3136
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    .line 3137
    .line 3138
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 3139
    .line 3140
    const/4 v10, 0x0

    .line 3141
    invoke-direct {v0, v3, v7, v2, v10}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 3142
    .line 3143
    .line 3144
    goto/16 :goto_50

    .line 3145
    .line 3146
    :cond_be
    move-object v7, v15

    .line 3147
    goto :goto_58

    .line 3148
    :cond_bf
    move-object v7, v3

    .line 3149
    goto :goto_58

    .line 3150
    :catch_0
    move-exception v0

    .line 3151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3152
    .line 3153
    .line 3154
    move-result-object v2

    .line 3155
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 3156
    .line 3157
    .line 3158
    move-result-object v2

    .line 3159
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 3160
    .line 3161
    .line 3162
    move-result-object v0

    .line 3163
    const/4 v5, 0x3

    .line 3164
    new-array v3, v5, [Ljava/lang/Object;

    .line 3165
    .line 3166
    const/16 v16, 0x0

    .line 3167
    .line 3168
    aput-object v20, v3, v16

    .line 3169
    .line 3170
    const/16 v27, 0x1

    .line 3171
    .line 3172
    aput-object v2, v3, v27

    .line 3173
    .line 3174
    const/4 v15, 0x2

    .line 3175
    aput-object v0, v3, v15

    .line 3176
    .line 3177
    const-string v0, "Failed to construct BeanSerializer for %s: (%s) %s"

    .line 3178
    .line 3179
    move-object/from16 v2, v25

    .line 3180
    .line 3181
    invoke-virtual {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3182
    .line 3183
    .line 3184
    const/16 v17, 0x0

    .line 3185
    .line 3186
    throw v17

    .line 3187
    :cond_c0
    const/4 v15, 0x2

    .line 3188
    const/16 v16, 0x0

    .line 3189
    .line 3190
    const/16 v17, 0x0

    .line 3191
    .line 3192
    const/16 v27, 0x1

    .line 3193
    .line 3194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3195
    .line 3196
    .line 3197
    move-result-object v0

    .line 3198
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 3199
    .line 3200
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 3201
    .line 3202
    .line 3203
    move-result v1

    .line 3204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3205
    .line 3206
    .line 3207
    move-result-object v1

    .line 3208
    new-array v2, v15, [Ljava/lang/Object;

    .line 3209
    .line 3210
    aput-object v0, v2, v16

    .line 3211
    .line 3212
    aput-object v1, v2, v27

    .line 3213
    .line 3214
    const-string v0, "Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)"

    .line 3215
    .line 3216
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3217
    .line 3218
    .line 3219
    return-object v17

    .line 3220
    :goto_57
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 3221
    .line 3222
    invoke-direct {v7, v15}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 3223
    .line 3224
    .line 3225
    :goto_58
    if-nez v7, :cond_c1

    .line 3226
    .line 3227
    move-object/from16 v2, v20

    .line 3228
    .line 3229
    iget-object v0, v2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 3230
    .line 3231
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 3232
    .line 3233
    .line 3234
    move-result-object v0

    .line 3235
    return-object v0

    .line 3236
    :cond_c1
    return-object v7

    .line 3237
    :cond_c2
    return-object v0

    .line 3238
    :cond_c3
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 3239
    .line 3240
    .line 3241
    const/16 v17, 0x0

    .line 3242
    .line 3243
    return-object v17

    .line 3244
    :cond_c4
    return-object v3

    .line 3245
    :cond_c5
    return-object v8

    .line 3246
    :cond_c6
    const/16 v17, 0x0

    .line 3247
    .line 3248
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->next()Ljava/lang/Object;

    .line 3249
    .line 3250
    .line 3251
    move-result-object v0

    .line 3252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3253
    .line 3254
    .line 3255
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 3256
    .line 3257
    .line 3258
    return-object v17

    .line 3259
    :catch_1
    move-exception v0

    .line 3260
    move-object/from16 v17, v7

    .line 3261
    .line 3262
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    .line 3263
    .line 3264
    .line 3265
    move-result-object v0

    .line 3266
    const/4 v5, 0x0

    .line 3267
    new-array v2, v5, [Ljava/lang/Object;

    .line 3268
    .line 3269
    invoke-virtual {v1, v3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3270
    .line 3271
    .line 3272
    throw v17
.end method

.method public final _dateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/text/DateFormat;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 19
    .line 20
    return-object v0
.end method

.method public final constructSpecializedType(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasRawClass(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final converterInstance(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Class;

    .line 6
    .line 7
    const-class v0, Lcom/fasterxml/jackson/databind/util/BeanUtil;

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/util/Converter;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "; expected Class<Converter>"

    .line 51
    .line 52
    const-string v0, "AnnotationIntrospector returned Class "

    .line 53
    .line 54
    invoke-static {p0, p1, v0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void

    .line 58
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "; expected type Converter or Class<Converter> instead"

    .line 67
    .line 68
    const-string v0, "AnnotationIntrospector returned Converter definition of type "

    .line 69
    .line 70
    invoke-static {p0, p1, v0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_stdNullValueSerializer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final findContentValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0
.end method

.method public final findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    move-object v0, v1

    .line 41
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final findKeySerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerFactory:Lkotlin/UnsignedKt;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lkotlin/UnsignedKt;->createKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public abstract findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
.end method

.method public final findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0
.end method

.method public final findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    move-object v0, v1

    .line 41
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final findValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 40
    .line 41
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    const-string v0, "Null passed for `valueType` of `findValueSerializer()`"

    .line 45
    .line 46
    invoke-direct {p1, p0, v0, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_serializerCache:Lcoil3/svg/internal/AndroidSvg;

    invoke-virtual {v0, p1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->untypedValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, v1

    .line 55
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p0

    return-object p0
.end method

.method public final getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_attributes:Lkotlin/ExceptionsKt;

    .line 2
    .line 3
    check-cast p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/HashMap;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    :cond_0
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-direct {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(IILjava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    .line 8
    .line 9
    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object p1
.end method

.method public final handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    .line 8
    .line 9
    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object p1
.end method

.method public abstract includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract includeFilterSuppressNulls(Ljava/lang/Object;)Z
.end method

.method public final objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    .line 19
    .line 20
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_scope:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final reportBadDefinition(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 4
    .line 5
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public final varargs reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    array-length v0, p4

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    const/16 v0, 0x1f4

    .line 19
    .line 20
    if-gt p4, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "]...["

    .line 34
    .line 35
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int/2addr v1, v0

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_0
    const-string p4, "\""

    .line 55
    .line 56
    invoke-static {p4, p2, p4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p2, "[N/A]"

    .line 62
    .line 63
    :goto_1
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p4, " (of type "

    .line 72
    .line 73
    const-string v0, "): "

    .line 74
    .line 75
    const-string v1, "Invalid definition for property "

    .line 76
    .line 77
    invoke-static {v1, p2, p4, p1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 91
    .line 92
    new-instance p2, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    .line 93
    .line 94
    invoke-direct {p2, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2
.end method

.method public final varargs reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v0, p3

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_0
    const-string p3, "Invalid type definition for type "

    .line 17
    .line 18
    const-string v0, ": "

    .line 19
    .line 20
    invoke-static {p3, p1, v0, p2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->_generator:Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 27
    .line 28
    new-instance p2, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2
.end method

.method public abstract serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.end method
