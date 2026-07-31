.class public final synthetic Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final synthetic typeSerial0:Lkotlinx/serialization/KSerializer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 5
    .line 6
    const-string v1, "org.wikimedia.testkitchen.config.curation.CurationRules"

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-direct {v0, v1, p0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "equals"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v1, "not_equals"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v1, "in"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v1, "not_in"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 34
    .line 35
    iput-object p1, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 12
    .line 13
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    .line 15
    const-class v3, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    new-array v6, v5, [Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    invoke-direct {v1, v4, v6}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-array v3, v5, [Ljava/lang/annotation/Annotation;

    .line 38
    .line 39
    invoke-direct {v4, v2, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x4

    .line 47
    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    aput-object v0, v3, v5

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object p0, v3, v0

    .line 53
    .line 54
    const/4 p0, 0x2

    .line 55
    aput-object v1, v3, p0

    .line 56
    .line 57
    const/4 p0, 0x3

    .line 58
    aput-object v2, v3, p0

    .line 59
    .line 60
    return-object v3
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v1

    .line 11
    move v5, v2

    .line 12
    move-object v6, v3

    .line 13
    move-object v7, v6

    .line 14
    move-object v8, v7

    .line 15
    move-object v9, v8

    .line 16
    :goto_0
    if-eqz v4, :cond_5

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    const/4 v11, -0x1

    .line 23
    if-eq v10, v11, :cond_4

    .line 24
    .line 25
    iget-object v11, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    if-eqz v10, :cond_3

    .line 28
    .line 29
    if-eq v10, v1, :cond_2

    .line 30
    .line 31
    const-class v11, Ljava/util/Collection;

    .line 32
    .line 33
    const/4 v12, 0x2

    .line 34
    if-eq v10, v12, :cond_1

    .line 35
    .line 36
    const/4 v12, 0x3

    .line 37
    if-ne v10, v12, :cond_0

    .line 38
    .line 39
    new-instance v10, Lkotlinx/serialization/PolymorphicSerializer;

    .line 40
    .line 41
    sget-object v13, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 42
    .line 43
    invoke-virtual {v13, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    new-array v13, v2, [Ljava/lang/annotation/Annotation;

    .line 48
    .line 49
    invoke-direct {v10, v11, v13}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0, v12, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Ljava/util/Collection;

    .line 57
    .line 58
    or-int/lit8 v5, v5, 0x8

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_1
    new-instance v10, Lkotlinx/serialization/PolymorphicSerializer;

    .line 66
    .line 67
    sget-object v13, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 68
    .line 69
    invoke-virtual {v13, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    new-array v13, v2, [Ljava/lang/annotation/Annotation;

    .line 74
    .line 75
    invoke-direct {v10, v11, v13}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0, v12, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/util/Collection;

    .line 83
    .line 84
    or-int/lit8 v5, v5, 0x4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 88
    .line 89
    invoke-interface {p1, v0, v1, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    or-int/lit8 v5, v5, 0x2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 97
    .line 98
    invoke-interface {p1, v0, v2, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    or-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move v4, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 111
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    and-int/lit8 p1, v5, 0x1

    .line 116
    .line 117
    if-nez p1, :cond_6

    .line 118
    .line 119
    iput-object v3, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isEquals:Ljava/lang/Object;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iput-object v6, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isEquals:Ljava/lang/Object;

    .line 123
    .line 124
    :goto_1
    and-int/lit8 p1, v5, 0x2

    .line 125
    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    iput-object v3, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotEquals:Ljava/lang/Object;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    iput-object v7, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotEquals:Ljava/lang/Object;

    .line 132
    .line 133
    :goto_2
    and-int/lit8 p1, v5, 0x4

    .line 134
    .line 135
    if-nez p1, :cond_8

    .line 136
    .line 137
    iput-object v3, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isIn:Ljava/util/Collection;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    iput-object v8, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isIn:Ljava/util/Collection;

    .line 141
    .line 142
    :goto_3
    and-int/lit8 p1, v5, 0x8

    .line 143
    .line 144
    if-nez p1, :cond_9

    .line 145
    .line 146
    iput-object v3, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotIn:Ljava/util/Collection;

    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_9
    iput-object v9, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotIn:Ljava/util/Collection;

    .line 150
    .line 151
    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotIn:Ljava/util/Collection;

    .line 7
    .line 8
    iget-object v1, p2, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isIn:Ljava/util/Collection;

    .line 9
    .line 10
    iget-object v2, p2, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isNotEquals:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p2, p2, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->isEquals:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    :goto_0
    move-object v4, p0

    .line 33
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    invoke-virtual {p1, v3, v5, v4, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-eqz v2, :cond_3

    .line 46
    .line 47
    :goto_1
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, v3, p2, p0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const-class p2, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    if-eqz v1, :cond_5

    .line 63
    .line 64
    :goto_2
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 65
    .line 66
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 67
    .line 68
    invoke-virtual {v2, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-array v4, v5, [Ljava/lang/annotation/Annotation;

    .line 73
    .line 74
    invoke-direct {p0, v2, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-virtual {p1, v3, v2, p0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    if-eqz v0, :cond_7

    .line 89
    .line 90
    :goto_3
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 91
    .line 92
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 93
    .line 94
    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-array v1, v5, [Ljava/lang/annotation/Annotation;

    .line 99
    .line 100
    invoke-direct {p0, p2, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 101
    .line 102
    .line 103
    const/4 p2, 0x3

    .line 104
    invoke-virtual {p1, v3, p2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    invoke-virtual {p1, v3}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/CurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    aput-object p0, v0, v1

    .line 8
    .line 9
    return-object v0
.end method
