.class public final synthetic Lorg/wikimedia/testkitchen/context/PageData$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikimedia/testkitchen/context/PageData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PageData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikimedia.testkitchen.context.PageData"

    .line 11
    .line 12
    const/4 v3, 0x7

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "id"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "title"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "namespace_id"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "namespace_name"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "revision_id"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "wikidata_qid"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "content_language"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 8

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 22
    .line 23
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v6, 0x7

    .line 36
    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    aput-object v0, v6, v7

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v2, v6, v0

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    aput-object p0, v6, v0

    .line 46
    .line 47
    const/4 p0, 0x3

    .line 48
    aput-object v3, v6, p0

    .line 49
    .line 50
    const/4 p0, 0x4

    .line 51
    aput-object v4, v6, p0

    .line 52
    .line 53
    const/4 p0, 0x5

    .line 54
    aput-object v5, v6, p0

    .line 55
    .line 56
    const/4 p0, 0x6

    .line 57
    aput-object v1, v6, p0

    .line 58
    .line 59
    return-object v6
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object p0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v0

    .line 11
    move v4, v1

    .line 12
    move-object v5, v2

    .line 13
    move-object v6, v5

    .line 14
    move-object v7, v6

    .line 15
    move-object v8, v7

    .line 16
    move-object v9, v8

    .line 17
    move-object v10, v9

    .line 18
    move-object v11, v10

    .line 19
    :goto_0
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    packed-switch v12, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_0
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 33
    .line 34
    const/4 v13, 0x6

    .line 35
    invoke-interface {p1, p0, v13, v12, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    check-cast v11, Ljava/lang/String;

    .line 40
    .line 41
    or-int/lit8 v4, v4, 0x40

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 45
    .line 46
    const/4 v13, 0x5

    .line 47
    invoke-interface {p1, p0, v13, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    check-cast v10, Ljava/lang/String;

    .line 52
    .line 53
    or-int/lit8 v4, v4, 0x20

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v12, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 57
    .line 58
    const/4 v13, 0x4

    .line 59
    invoke-interface {p1, p0, v13, v12, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/lang/Long;

    .line 64
    .line 65
    or-int/lit8 v4, v4, 0x10

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 69
    .line 70
    const/4 v13, 0x3

    .line 71
    invoke-interface {p1, p0, v13, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Ljava/lang/String;

    .line 76
    .line 77
    or-int/lit8 v4, v4, 0x8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_4
    sget-object v12, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 81
    .line 82
    const/4 v13, 0x2

    .line 83
    invoke-interface {p1, p0, v13, v12, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Ljava/lang/Integer;

    .line 88
    .line 89
    or-int/lit8 v4, v4, 0x4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_5
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 93
    .line 94
    invoke-interface {p1, p0, v0, v12, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/lang/String;

    .line 99
    .line 100
    or-int/lit8 v4, v4, 0x2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_6
    sget-object v12, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 104
    .line 105
    invoke-interface {p1, p0, v1, v12, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/lang/Integer;

    .line 110
    .line 111
    or-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_7
    move v3, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lorg/wikimedia/testkitchen/context/PageData;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    and-int/lit8 p1, v4, 0x1

    .line 125
    .line 126
    if-nez p1, :cond_1

    .line 127
    .line 128
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    iput-object v5, p0, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 132
    .line 133
    :goto_1
    and-int/lit8 p1, v4, 0x2

    .line 134
    .line 135
    if-nez p1, :cond_2

    .line 136
    .line 137
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iput-object v6, p0, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    and-int/lit8 p1, v4, 0x4

    .line 143
    .line 144
    if-nez p1, :cond_3

    .line 145
    .line 146
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    iput-object v7, p0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 150
    .line 151
    :goto_3
    and-int/lit8 p1, v4, 0x8

    .line 152
    .line 153
    if-nez p1, :cond_4

    .line 154
    .line 155
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_4
    iput-object v8, p0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 159
    .line 160
    :goto_4
    and-int/lit8 p1, v4, 0x10

    .line 161
    .line 162
    if-nez p1, :cond_5

    .line 163
    .line 164
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    iput-object v9, p0, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 168
    .line 169
    :goto_5
    and-int/lit8 p1, v4, 0x20

    .line 170
    .line 171
    if-nez p1, :cond_6

    .line 172
    .line 173
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_6
    iput-object v10, p0, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 177
    .line 178
    :goto_6
    and-int/lit8 p1, v4, 0x40

    .line 179
    .line 180
    if-nez p1, :cond_7

    .line 181
    .line 182
    iput-object v2, p0, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 183
    .line 184
    return-object p0

    .line 185
    :cond_7
    iput-object v11, p0, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 186
    .line 187
    return-object p0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/context/PageData;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 24
    .line 25
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :goto_1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 43
    .line 44
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    :goto_2
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 62
    .line 63
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 81
    .line 82
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 100
    .line 101
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_9
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_a
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 119
    .line 120
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v2, 0x5

    .line 123
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_b
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_c

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_c
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_d

    .line 136
    .line 137
    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 138
    .line 139
    iget-object p2, p2, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v1, 0x6

    .line 142
    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_d
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/TuplesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    return-object p0
.end method
