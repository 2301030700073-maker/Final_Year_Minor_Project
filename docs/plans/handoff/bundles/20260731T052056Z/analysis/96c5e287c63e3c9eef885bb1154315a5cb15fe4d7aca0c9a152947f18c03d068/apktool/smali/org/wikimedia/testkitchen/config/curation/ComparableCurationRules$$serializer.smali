.class public final synthetic Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;
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
    const-string v1, "org.wikimedia.testkitchen.config.curation.ComparableCurationRules"

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "is_equals"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v1, "not_equals"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v1, "greater_than"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v1, "less_than"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v1, "greater_than_or_equals"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v1, "less_than_or_equals"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v1, "in"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v1, "not_in"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    iput-object p1, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 11

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

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
    move-result-object v1

    .line 11
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    .line 28
    .line 29
    sget-object v6, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 30
    .line 31
    const-class v7, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/4 v9, 0x0

    .line 38
    new-array v10, v9, [Ljava/lang/annotation/Annotation;

    .line 39
    .line 40
    invoke-direct {v5, v8, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-array v7, v9, [Ljava/lang/annotation/Annotation;

    .line 54
    .line 55
    invoke-direct {v8, v6, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v8}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/16 v7, 0x8

    .line 63
    .line 64
    new-array v7, v7, [Lkotlinx/serialization/KSerializer;

    .line 65
    .line 66
    aput-object v0, v7, v9

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    aput-object v1, v7, v0

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object v2, v7, v0

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    aput-object v3, v7, v0

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    aput-object v4, v7, v0

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    aput-object p0, v7, v0

    .line 82
    .line 83
    const/4 p0, 0x6

    .line 84
    aput-object v5, v7, p0

    .line 85
    .line 86
    const/4 p0, 0x7

    .line 87
    aput-object v6, v7, p0

    .line 88
    .line 89
    return-object v7
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x0

    .line 12
    move v7, v4

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    :goto_0
    if-eqz v6, :cond_0

    .line 23
    .line 24
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 25
    .line 26
    .line 27
    move-result v16

    .line 28
    const/16 p1, 0x0

    .line 29
    .line 30
    const-class v5, Ljava/util/Collection;

    .line 31
    .line 32
    iget-object v3, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 33
    .line 34
    packed-switch v16, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-static/range {v16 .. v16}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_0
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    .line 42
    .line 43
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    .line 50
    .line 51
    invoke-direct {v3, v0, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    invoke-interface {v2, v1, v0, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v15, v0

    .line 60
    check-cast v15, Ljava/util/Collection;

    .line 61
    .line 62
    or-int/lit16 v7, v7, 0x80

    .line 63
    .line 64
    :goto_1
    move-object/from16 v0, p0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 68
    .line 69
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    .line 76
    .line 77
    invoke-direct {v0, v3, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 78
    .line 79
    .line 80
    const/4 v3, 0x6

    .line 81
    invoke-interface {v2, v1, v3, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v14, v0

    .line 86
    check-cast v14, Ljava/util/Collection;

    .line 87
    .line 88
    or-int/lit8 v7, v7, 0x40

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_2
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    invoke-interface {v2, v1, v0, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object v13, v0

    .line 99
    check-cast v13, Ljava/lang/Comparable;

    .line 100
    .line 101
    or-int/lit8 v7, v7, 0x20

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_3
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 105
    .line 106
    const/4 v0, 0x4

    .line 107
    invoke-interface {v2, v1, v0, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v12, v0

    .line 112
    check-cast v12, Ljava/lang/Comparable;

    .line 113
    .line 114
    or-int/lit8 v7, v7, 0x10

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_4
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 118
    .line 119
    const/4 v0, 0x3

    .line 120
    invoke-interface {v2, v1, v0, v3, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object v11, v0

    .line 125
    check-cast v11, Ljava/lang/Comparable;

    .line 126
    .line 127
    or-int/lit8 v7, v7, 0x8

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_5
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    invoke-interface {v2, v1, v0, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v10, v0

    .line 138
    check-cast v10, Ljava/lang/Comparable;

    .line 139
    .line 140
    or-int/lit8 v7, v7, 0x4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_6
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    invoke-interface {v2, v1, v0, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    move-object v9, v3

    .line 151
    check-cast v9, Ljava/lang/Comparable;

    .line 152
    .line 153
    or-int/lit8 v7, v7, 0x2

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :pswitch_7
    const/4 v0, 0x1

    .line 157
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 158
    .line 159
    invoke-interface {v2, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    move-object v8, v3

    .line 164
    check-cast v8, Ljava/lang/Comparable;

    .line 165
    .line 166
    or-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_8
    move-object/from16 v0, p0

    .line 170
    .line 171
    move v6, v4

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_0
    const/16 p1, 0x0

    .line 175
    .line 176
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    and-int/lit8 v1, v7, 0x1

    .line 185
    .line 186
    if-nez v1, :cond_1

    .line 187
    .line 188
    move-object/from16 v1, p1

    .line 189
    .line 190
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isEquals:Ljava/lang/Comparable;

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_1
    move-object/from16 v1, p1

    .line 194
    .line 195
    iput-object v8, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isEquals:Ljava/lang/Comparable;

    .line 196
    .line 197
    :goto_2
    and-int/lit8 v2, v7, 0x2

    .line 198
    .line 199
    if-nez v2, :cond_2

    .line 200
    .line 201
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotEquals:Ljava/lang/Comparable;

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_2
    iput-object v9, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotEquals:Ljava/lang/Comparable;

    .line 205
    .line 206
    :goto_3
    and-int/lit8 v2, v7, 0x4

    .line 207
    .line 208
    if-nez v2, :cond_3

    .line 209
    .line 210
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThan:Ljava/lang/Comparable;

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_3
    iput-object v10, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThan:Ljava/lang/Comparable;

    .line 214
    .line 215
    :goto_4
    and-int/lit8 v2, v7, 0x8

    .line 216
    .line 217
    if-nez v2, :cond_4

    .line 218
    .line 219
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThan:Ljava/lang/Comparable;

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_4
    iput-object v11, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThan:Ljava/lang/Comparable;

    .line 223
    .line 224
    :goto_5
    and-int/lit8 v2, v7, 0x10

    .line 225
    .line 226
    if-nez v2, :cond_5

    .line 227
    .line 228
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThanOrEquals:Ljava/lang/Comparable;

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_5
    iput-object v12, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThanOrEquals:Ljava/lang/Comparable;

    .line 232
    .line 233
    :goto_6
    and-int/lit8 v2, v7, 0x20

    .line 234
    .line 235
    if-nez v2, :cond_6

    .line 236
    .line 237
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThanOrEquals:Ljava/lang/Comparable;

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_6
    iput-object v13, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThanOrEquals:Ljava/lang/Comparable;

    .line 241
    .line 242
    :goto_7
    and-int/lit8 v2, v7, 0x40

    .line 243
    .line 244
    if-nez v2, :cond_7

    .line 245
    .line 246
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isIn:Ljava/util/Collection;

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_7
    iput-object v14, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isIn:Ljava/util/Collection;

    .line 250
    .line 251
    :goto_8
    and-int/lit16 v2, v7, 0x80

    .line 252
    .line 253
    if-nez v2, :cond_8

    .line 254
    .line 255
    iput-object v1, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotIn:Ljava/util/Collection;

    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_8
    iput-object v15, v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotIn:Ljava/util/Collection;

    .line 259
    .line 260
    return-object v0

    .line 261
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotIn:Ljava/util/Collection;

    .line 7
    .line 8
    iget-object v1, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isIn:Ljava/util/Collection;

    .line 9
    .line 10
    iget-object v2, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThanOrEquals:Ljava/lang/Comparable;

    .line 11
    .line 12
    iget-object v3, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThanOrEquals:Ljava/lang/Comparable;

    .line 13
    .line 14
    iget-object v4, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->lessThan:Ljava/lang/Comparable;

    .line 15
    .line 16
    iget-object v5, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->greaterThan:Ljava/lang/Comparable;

    .line 17
    .line 18
    iget-object v6, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isNotEquals:Ljava/lang/Comparable;

    .line 19
    .line 20
    iget-object p2, p2, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->isEquals:Ljava/lang/Comparable;

    .line 21
    .line 22
    iget-object v7, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    .line 24
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    :goto_0
    move-object v8, p0

    .line 41
    check-cast v8, Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    invoke-virtual {p1, v7, v9, v8, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz v6, :cond_3

    .line 54
    .line 55
    :goto_1
    move-object p2, p0

    .line 56
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-virtual {p1, v7, v8, p2, v6}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    if-eqz v5, :cond_5

    .line 70
    .line 71
    :goto_2
    move-object p2, p0

    .line 72
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 73
    .line 74
    const/4 v6, 0x2

    .line 75
    invoke-virtual {p1, v7, v6, p2, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    if-eqz v4, :cond_7

    .line 86
    .line 87
    :goto_3
    move-object p2, p0

    .line 88
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    invoke-virtual {p1, v7, v5, p2, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_7
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    if-eqz v3, :cond_9

    .line 102
    .line 103
    :goto_4
    move-object p2, p0

    .line 104
    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 105
    .line 106
    const/4 v4, 0x4

    .line 107
    invoke-virtual {p1, v7, v4, p2, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_9
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_a

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_a
    if-eqz v2, :cond_b

    .line 118
    .line 119
    :goto_5
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 120
    .line 121
    const/4 p2, 0x5

    .line 122
    invoke-virtual {p1, v7, p2, p0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_b
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const-class p2, Ljava/util/Collection;

    .line 130
    .line 131
    if-eqz p0, :cond_c

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_c
    if-eqz v1, :cond_d

    .line 135
    .line 136
    :goto_6
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 137
    .line 138
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 139
    .line 140
    invoke-virtual {v2, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    new-array v3, v9, [Ljava/lang/annotation/Annotation;

    .line 145
    .line 146
    invoke-direct {p0, v2, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 147
    .line 148
    .line 149
    const/4 v2, 0x6

    .line 150
    invoke-virtual {p1, v7, v2, p0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_e

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    if-eqz v0, :cond_f

    .line 161
    .line 162
    :goto_7
    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 163
    .line 164
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 165
    .line 166
    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    new-array v1, v9, [Ljava/lang/annotation/Annotation;

    .line 171
    .line 172
    invoke-direct {p0, p2, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    .line 173
    .line 174
    .line 175
    const/4 p2, 0x7

    .line 176
    invoke-virtual {p1, v7, p2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_f
    invoke-virtual {p1, v7}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 180
    .line 181
    .line 182
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
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$$serializer;->typeSerial0:Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    aput-object p0, v0, v1

    .line 8
    .line 9
    return-object v0
.end method
