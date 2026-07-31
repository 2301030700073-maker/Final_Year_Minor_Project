.class public abstract Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# static fields
.field public static final NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field public final _anyGetterWriter:Lcoil3/ImageLoader$Builder;

.field public final _beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

.field public final _filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field public final _objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

.field public final _propertyFilterId:Ljava/lang/Object;

.field public final _props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field public final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public final _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2
    .line 3
    const-string v1, "#object-ref"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 11
    .line 12
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;Ljava/util/Set;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v5, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v6, 0x0

    .line 31
    :goto_1
    if-ge v6, v2, :cond_3

    .line 32
    .line 33
    aget-object v7, v0, v6

    .line 34
    .line 35
    iget-object v8, v7, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 36
    .line 37
    iget-object v8, v8, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 38
    .line 39
    move-object v9, p2

    .line 40
    check-cast v9, Ljava/util/Set;

    .line 41
    .line 42
    move-object v10, p3

    .line 43
    check-cast v10, Ljava/util/Set;

    .line 44
    .line 45
    invoke-static {v8, v9, v10}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    aget-object v7, v1, v6

    .line 58
    .line 59
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    new-array p2, p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 70
    .line 71
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 78
    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    new-array p2, p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 87
    .line 88
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    move-object v4, p2

    .line 93
    check-cast v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 94
    .line 95
    :goto_3
    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 96
    .line 97
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 98
    .line 99
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 100
    .line 101
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 104
    .line 105
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 108
    .line 109
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lokhttp3/Cache$RealCacheRequest;Ljava/lang/Object;)V
    .locals 1

    .line 127
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 128
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 129
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 130
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 131
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 132
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 133
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 134
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 135
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 1

    .line 118
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 119
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 120
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 121
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 122
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 123
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 124
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 125
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 126
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 137
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 138
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 139
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 140
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 141
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 142
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcoil3/ImageLoader$Builder;

    .line 143
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 144
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 146
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 147
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 148
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findExpectedFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    .line 150
    iget-object p1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 151
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method public static final rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-object v1

    .line 33
    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 6
    .line 7
    iget-boolean v2, v0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    .line 8
    .line 9
    iget-object v3, v0, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 12
    .line 13
    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v4, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-boolean v4, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v3, p0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 47
    .line 48
    invoke-virtual {p0, p4, p1, v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p4, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    iput-boolean v4, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    .line 60
    .line 61
    iget-object v0, v0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/io/SerializedString;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v3, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    throw p0
.end method

.method public final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    iget-object v1, v0, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    iget-boolean v2, v0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    iget-object v3, v0, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    .line 92
    iget-object v4, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-boolean v5, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    if-nez v5, :cond_0

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    invoke-virtual {v3, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    .line 94
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v3, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 96
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    .line 98
    iget-object v0, v0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/io/SerializedString;)V

    .line 100
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    invoke-virtual {v3, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    if-eqz p4, :cond_5

    .line 103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_5
    return-void

    .line 104
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final _typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->typeId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->typeId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p0, p1, Lcom/fasterxml/jackson/core/type/WritableTypeId;->id:Ljava/lang/Object;

    .line 23
    .line 24
    return-object p1
.end method

.method public abstract asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public final createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v8, :cond_0

    .line 15
    .line 16
    invoke-interface {v8}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v5, v4

    .line 22
    :goto_0
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v1, v8, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    const/4 v11, 0x0

    .line 32
    if-eqz v7, :cond_7

    .line 33
    .line 34
    iget-object v12, v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 35
    .line 36
    sget-object v13, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 37
    .line 38
    if-eq v12, v13, :cond_7

    .line 39
    .line 40
    if-eq v12, v13, :cond_8

    .line 41
    .line 42
    if-eq v12, v9, :cond_8

    .line 43
    .line 44
    iget-object v13, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 45
    .line 46
    iget-object v14, v13, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 47
    .line 48
    sget-object v15, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 49
    .line 50
    const-class v15, Ljava/lang/Enum;

    .line 51
    .line 52
    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-eqz v14, :cond_3

    .line 57
    .line 58
    sget-object v14, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    .line 59
    .line 60
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    aget v14, v14, v15

    .line 65
    .line 66
    if-eq v14, v10, :cond_1

    .line 67
    .line 68
    const/4 v15, 0x2

    .line 69
    if-eq v14, v15, :cond_1

    .line 70
    .line 71
    const/4 v15, 0x3

    .line 72
    if-eq v14, v15, :cond_1

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    iget-object v0, v2, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 79
    .line 80
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v13}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    invoke-static {v2, v13, v2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v2, v13, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, v13, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 99
    .line 100
    invoke-static {v2, v0}, Lkotlin/UnsafeLazyImpl;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lkotlin/UnsafeLazyImpl;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v0, v7, v10, v4}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_isShapeWrittenUsingIndex(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    .line 109
    .line 110
    invoke-direct {v3, v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lkotlin/UnsafeLazyImpl;Ljava/lang/Boolean;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NATURAL:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 119
    .line 120
    if-ne v12, v2, :cond_8

    .line 121
    .line 122
    instance-of v2, v13, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    const-class v2, Ljava/util/Map;

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const-class v2, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 148
    .line 149
    invoke-virtual {v3, v11}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-nez v3, :cond_5

    .line 154
    .line 155
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :cond_5
    move-object v4, v3

    .line 160
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 161
    .line 162
    invoke-virtual {v2, v10}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :cond_6
    move-object v5, v2

    .line 173
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v7, 0x0

    .line 177
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 178
    .line 179
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :cond_7
    move-object v12, v4

    .line 188
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 189
    .line 190
    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 191
    .line 192
    if-eqz v5, :cond_13

    .line 193
    .line 194
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 195
    .line 196
    .line 197
    move-result-object v13

    .line 198
    iget-boolean v14, v13, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    .line 199
    .line 200
    if-eqz v14, :cond_9

    .line 201
    .line 202
    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_9
    iget-object v13, v13, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 206
    .line 207
    :goto_2
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    iget-object v14, v14, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    .line 212
    .line 213
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    if-nez v15, :cond_c

    .line 218
    .line 219
    if-eqz v7, :cond_b

    .line 220
    .line 221
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-eqz v6, :cond_b

    .line 226
    .line 227
    iget-boolean v6, v6, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    .line 228
    .line 229
    iget-boolean v15, v7, Lokhttp3/Cache$RealCacheRequest;->done:Z

    .line 230
    .line 231
    if-ne v6, v15, :cond_a

    .line 232
    .line 233
    move-object v15, v7

    .line 234
    goto :goto_3

    .line 235
    :cond_a
    new-instance v15, Lokhttp3/Cache$RealCacheRequest;

    .line 236
    .line 237
    iget-object v10, v7, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 238
    .line 239
    move-object/from16 v16, v10

    .line 240
    .line 241
    check-cast v16, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 242
    .line 243
    iget-object v10, v7, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 244
    .line 245
    move-object/from16 v17, v10

    .line 246
    .line 247
    check-cast v17, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 248
    .line 249
    iget-object v10, v7, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 250
    .line 251
    move-object/from16 v18, v10

    .line 252
    .line 253
    check-cast v18, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 254
    .line 255
    iget-object v10, v7, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 256
    .line 257
    move-object/from16 v19, v10

    .line 258
    .line 259
    check-cast v19, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 260
    .line 261
    move/from16 v20, v6

    .line 262
    .line 263
    invoke-direct/range {v15 .. v20}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/core/io/SerializedString;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V

    .line 264
    .line 265
    .line 266
    :goto_3
    move-object/from16 v17, v4

    .line 267
    .line 268
    :goto_4
    move-object/from16 v19, v9

    .line 269
    .line 270
    move v9, v11

    .line 271
    move/from16 v16, v9

    .line 272
    .line 273
    move-object/from16 v20, v12

    .line 274
    .line 275
    goto/16 :goto_8

    .line 276
    .line 277
    :cond_b
    move-object/from16 v17, v4

    .line 278
    .line 279
    move-object v15, v7

    .line 280
    goto :goto_4

    .line 281
    :cond_c
    invoke-virtual {v3, v5, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    iget-object v15, v10, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    .line 286
    .line 287
    move/from16 v16, v11

    .line 288
    .line 289
    iget-boolean v11, v10, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    .line 290
    .line 291
    iget-object v4, v10, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 292
    .line 293
    if-nez v15, :cond_d

    .line 294
    .line 295
    move-object/from16 v18, v6

    .line 296
    .line 297
    move-object/from16 v19, v9

    .line 298
    .line 299
    move-object/from16 v20, v12

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    goto :goto_5

    .line 303
    :cond_d
    move-object/from16 v18, v6

    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    move-object/from16 v19, v9

    .line 310
    .line 311
    sget-object v9, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 312
    .line 313
    move-object/from16 v20, v12

    .line 314
    .line 315
    const/4 v12, 0x0

    .line 316
    invoke-virtual {v6, v12, v15, v9}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    :goto_5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const-class v9, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 328
    .line 329
    invoke-static {v6, v9}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    aget-object v6, v6, v16

    .line 334
    .line 335
    const-class v9, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 336
    .line 337
    if-ne v15, v9, :cond_11

    .line 338
    .line 339
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 340
    .line 341
    array-length v6, v2

    .line 342
    move/from16 v9, v16

    .line 343
    .line 344
    :goto_6
    if-eq v9, v6, :cond_f

    .line 345
    .line 346
    aget-object v12, v2, v9

    .line 347
    .line 348
    iget-object v15, v12, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 349
    .line 350
    iget-object v15, v15, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    if-eqz v15, :cond_e

    .line 357
    .line 358
    iget-object v4, v12, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 359
    .line 360
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 361
    .line 362
    iget-object v10, v10, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    .line 363
    .line 364
    invoke-direct {v6, v10, v12}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 365
    .line 366
    .line 367
    const/4 v12, 0x0

    .line 368
    invoke-static {v4, v12, v6, v11}, Lokhttp3/Cache$RealCacheRequest;->construct(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Z)Lokhttp3/Cache$RealCacheRequest;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    move-object/from16 v17, v12

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_f
    invoke-static/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-nez v4, :cond_10

    .line 383
    .line 384
    const-string v2, "[null]"

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_10
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->apostrophed(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v4, "Invalid Object Id definition for "

    .line 394
    .line 395
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v0, ": cannot find property with name "

    .line 402
    .line 403
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadDefinition(Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    const/16 v17, 0x0

    .line 417
    .line 418
    throw v17

    .line 419
    :cond_11
    const/16 v17, 0x0

    .line 420
    .line 421
    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    invoke-static {v6, v4, v9, v11}, Lokhttp3/Cache$RealCacheRequest;->construct(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Z)Lokhttp3/Cache$RealCacheRequest;

    .line 426
    .line 427
    .line 428
    move-result-object v15

    .line 429
    move/from16 v9, v16

    .line 430
    .line 431
    :goto_8
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    if-eqz v12, :cond_12

    .line 436
    .line 437
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 438
    .line 439
    if-eqz v3, :cond_14

    .line 440
    .line 441
    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-nez v3, :cond_12

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_12
    move-object/from16 v12, v17

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_13
    move-object/from16 v17, v4

    .line 452
    .line 453
    move-object/from16 v19, v9

    .line 454
    .line 455
    move/from16 v16, v11

    .line 456
    .line 457
    move-object/from16 v20, v12

    .line 458
    .line 459
    move-object v15, v7

    .line 460
    move/from16 v9, v16

    .line 461
    .line 462
    move-object/from16 v12, v17

    .line 463
    .line 464
    move-object v13, v12

    .line 465
    move-object v14, v13

    .line 466
    :cond_14
    :goto_9
    if-lez v9, :cond_16

    .line 467
    .line 468
    array-length v3, v2

    .line 469
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    check-cast v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 474
    .line 475
    aget-object v3, v2, v9

    .line 476
    .line 477
    move/from16 v5, v16

    .line 478
    .line 479
    const/4 v4, 0x1

    .line 480
    invoke-static {v2, v5, v2, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    .line 482
    .line 483
    aput-object v3, v2, v5

    .line 484
    .line 485
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 486
    .line 487
    if-nez v3, :cond_15

    .line 488
    .line 489
    move-object/from16 v4, v17

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_15
    array-length v6, v3

    .line 493
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 498
    .line 499
    aget-object v6, v3, v9

    .line 500
    .line 501
    invoke-static {v3, v5, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    .line 503
    .line 504
    aput-object v6, v3, v5

    .line 505
    .line 506
    move-object v4, v3

    .line 507
    :goto_a
    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    :cond_16
    if-eqz v15, :cond_17

    .line 512
    .line 513
    iget-object v2, v15, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 516
    .line 517
    invoke-virtual {v1, v2, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 518
    .line 519
    .line 520
    move-result-object v25

    .line 521
    new-instance v21, Lokhttp3/Cache$RealCacheRequest;

    .line 522
    .line 523
    iget-object v1, v15, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 524
    .line 525
    move-object/from16 v22, v1

    .line 526
    .line 527
    check-cast v22, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 528
    .line 529
    iget-object v1, v15, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 530
    .line 531
    move-object/from16 v23, v1

    .line 532
    .line 533
    check-cast v23, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 534
    .line 535
    iget-object v1, v15, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 536
    .line 537
    move-object/from16 v24, v1

    .line 538
    .line 539
    check-cast v24, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 540
    .line 541
    iget-boolean v1, v15, Lokhttp3/Cache$RealCacheRequest;->done:Z

    .line 542
    .line 543
    move/from16 v26, v1

    .line 544
    .line 545
    invoke-direct/range {v21 .. v26}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/core/io/SerializedString;Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V

    .line 546
    .line 547
    .line 548
    move-object/from16 v1, v21

    .line 549
    .line 550
    if-eq v1, v7, :cond_17

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lokhttp3/Cache$RealCacheRequest;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    :cond_17
    if-eqz v13, :cond_18

    .line 557
    .line 558
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_19

    .line 563
    .line 564
    :cond_18
    if-eqz v14, :cond_1a

    .line 565
    .line 566
    :cond_19
    invoke-virtual {v0, v13, v14}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withByNameInclusion(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    :cond_1a
    if-eqz v12, :cond_1b

    .line 571
    .line 572
    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    :cond_1b
    if-nez v20, :cond_1c

    .line 577
    .line 578
    move-object/from16 v9, v19

    .line 579
    .line 580
    goto :goto_b

    .line 581
    :cond_1c
    move-object/from16 v9, v20

    .line 582
    .line 583
    :goto_b
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 584
    .line 585
    if-ne v9, v1, :cond_1d

    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :cond_1d
    return-object v0
.end method

.method public final resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    :goto_1
    if-ge v0, v4, :cond_b

    .line 13
    .line 14
    aget-object v5, v3, v0

    .line 15
    .line 16
    iget-boolean v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 17
    .line 18
    iget-object v7, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 19
    .line 20
    if-nez v6, :cond_2

    .line 21
    .line 22
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 23
    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object v6, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 32
    .line 33
    .line 34
    if-ge v0, v2, :cond_2

    .line 35
    .line 36
    aget-object v8, v1, v0

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_2
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 44
    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    iget-object v6, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v7, :cond_5

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-nez v6, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0

    .line 71
    :cond_5
    :goto_3
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 72
    .line 73
    if-nez v6, :cond_7

    .line 74
    .line 75
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 76
    .line 77
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_7

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_6

    .line 94
    .line 95
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 96
    .line 97
    iget-object v7, v7, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 98
    .line 99
    array-length v7, v7

    .line 100
    if-lez v7, :cond_a

    .line 101
    .line 102
    :cond_6
    iput-object v6, v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    invoke-virtual {p1, v6, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_8

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v6, v6, Lcom/fasterxml/jackson/databind/type/TypeBase;->_typeHandler:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 122
    .line 123
    if-eqz v6, :cond_8

    .line 124
    .line 125
    instance-of v8, v7, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    .line 126
    .line 127
    if-eqz v8, :cond_8

    .line 128
    .line 129
    check-cast v7, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    .line 130
    .line 131
    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    :cond_8
    if-ge v0, v2, :cond_9

    .line 136
    .line 137
    aget-object v6, v1, v0

    .line 138
    .line 139
    if-eqz v6, :cond_9

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_b
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 153
    .line 154
    if-eqz p0, :cond_c

    .line 155
    .line 156
    iget-object v0, p0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 159
    .line 160
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    .line 161
    .line 162
    if-eqz v1, :cond_c

    .line 163
    .line 164
    iget-object v1, p0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Lkotlin/UnsafeLazyImpl;

    .line 167
    .line 168
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 173
    .line 174
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 179
    .line 180
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 181
    .line 182
    :cond_c
    return-void
.end method

.method public final serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5

    .line 1
    const-string v0, "[anySetter]"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    array-length v3, v1

    .line 14
    :goto_0
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    aget-object v4, v1, v2

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :catch_1
    move-exception p0

    .line 27
    goto :goto_4

    .line 28
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcoil3/ImageLoader$Builder;

    .line 32
    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcoil3/ImageLoader$Builder;->getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void

    .line 39
    :goto_2
    new-instance p3, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 40
    .line 41
    const-string v3, "Infinite recursion (StackOverflowError)"

    .line 42
    .line 43
    invoke-direct {p3, p2, v3, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    array-length p0, v1

    .line 47
    if-ne v2, p0, :cond_4

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    aget-object p0, v1, v2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 55
    .line 56
    :goto_3
    new-instance p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    .line 57
    .line 58
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    new-instance p1, Ljava/util/LinkedList;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p3, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 71
    .line 72
    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/16 p2, 0x3e8

    .line 77
    .line 78
    if-ge p1, p2, :cond_6

    .line 79
    .line 80
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    throw p3

    .line 86
    :goto_4
    array-length p2, v1

    .line 87
    if-ne v2, p2, :cond_7

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_7
    aget-object p2, v1, v2

    .line 91
    .line 92
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 93
    .line 94
    iget-object v0, p2, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 95
    .line 96
    :goto_5
    invoke-static {p3, p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    throw p0
.end method

.method public final serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 10
    .line 11
    invoke-virtual {p0, p4, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method

.method public final usesObjectId()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lokhttp3/Cache$RealCacheRequest;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public abstract withByNameInclusion(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public abstract withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public abstract withObjectIdWriter(Lokhttp3/Cache$RealCacheRequest;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public abstract withProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
