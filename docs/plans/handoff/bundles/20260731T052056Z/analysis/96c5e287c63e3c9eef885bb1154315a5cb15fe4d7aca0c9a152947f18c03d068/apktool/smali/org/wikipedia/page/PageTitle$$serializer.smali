.class public final synthetic Lorg/wikipedia/page/PageTitle$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/page/PageTitle$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/page/PageTitle$$serializer;->INSTANCE:Lorg/wikipedia/page/PageTitle$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.page.PageTitle"

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "namespace"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "site"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "text"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "fragment"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "thumbUrl"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "description"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "displayText"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "extract"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lorg/wikipedia/page/PageTitle$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 8

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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
    move-result-object v5

    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    aput-object v0, v6, v7

    .line 33
    .line 34
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    aput-object v0, v6, v7

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    aput-object p0, v6, v0

    .line 41
    .line 42
    const/4 p0, 0x3

    .line 43
    aput-object v1, v6, p0

    .line 44
    .line 45
    const/4 p0, 0x4

    .line 46
    aput-object v2, v6, p0

    .line 47
    .line 48
    const/4 p0, 0x5

    .line 49
    aput-object v3, v6, p0

    .line 50
    .line 51
    const/4 p0, 0x6

    .line 52
    aput-object v4, v6, p0

    .line 53
    .line 54
    const/4 p0, 0x7

    .line 55
    aput-object v5, v6, p0

    .line 56
    .line 57
    return-object v6
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lorg/wikipedia/page/PageTitle$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v2

    .line 13
    move v6, v3

    .line 14
    move-object v7, v4

    .line 15
    move-object v8, v7

    .line 16
    move-object v9, v8

    .line 17
    move-object v10, v9

    .line 18
    move-object v11, v10

    .line 19
    move-object v12, v11

    .line 20
    move-object v13, v12

    .line 21
    move-object v14, v13

    .line 22
    :goto_0
    const/4 v15, 0x2

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 26
    .line 27
    .line 28
    move-result v16

    .line 29
    packed-switch v16, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v16 .. v16}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :pswitch_0
    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 37
    .line 38
    const/4 v4, 0x7

    .line 39
    invoke-interface {v1, v0, v4, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    move-object v14, v4

    .line 44
    check-cast v14, Ljava/lang/String;

    .line 45
    .line 46
    or-int/lit16 v6, v6, 0x80

    .line 47
    .line 48
    :goto_1
    const/4 v4, 0x0

    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 51
    .line 52
    const/4 v15, 0x6

    .line 53
    invoke-interface {v1, v0, v15, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v13, v4

    .line 58
    check-cast v13, Ljava/lang/String;

    .line 59
    .line 60
    or-int/lit8 v6, v6, 0x40

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_2
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 64
    .line 65
    const/4 v15, 0x5

    .line 66
    invoke-interface {v1, v0, v15, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    move-object v12, v4

    .line 71
    check-cast v12, Ljava/lang/String;

    .line 72
    .line 73
    or-int/lit8 v6, v6, 0x20

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_3
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 77
    .line 78
    const/4 v15, 0x4

    .line 79
    invoke-interface {v1, v0, v15, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v11, v4

    .line 84
    check-cast v11, Ljava/lang/String;

    .line 85
    .line 86
    or-int/lit8 v6, v6, 0x10

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_4
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 90
    .line 91
    const/4 v15, 0x3

    .line 92
    invoke-interface {v1, v0, v15, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    move-object v10, v4

    .line 97
    check-cast v10, Ljava/lang/String;

    .line 98
    .line 99
    or-int/lit8 v6, v6, 0x8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_5
    invoke-interface {v1, v0, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    or-int/lit8 v6, v6, 0x4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_6
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 110
    .line 111
    invoke-interface {v1, v0, v2, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    move-object v8, v4

    .line 116
    check-cast v8, Lorg/wikipedia/dataclient/WikiSite;

    .line 117
    .line 118
    or-int/lit8 v6, v6, 0x2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_7
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 122
    .line 123
    invoke-interface {v1, v0, v3, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v7, v4

    .line 128
    check-cast v7, Ljava/lang/String;

    .line 129
    .line 130
    or-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_8
    move v5, v3

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 139
    .line 140
    and-int/lit8 v1, v6, 0x2

    .line 141
    .line 142
    if-ne v15, v1, :cond_8

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v1, v6, 0x1

    .line 148
    .line 149
    if-nez v1, :cond_1

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->_namespace:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_1
    iput-object v7, v0, Lorg/wikipedia/page/PageTitle;->_namespace:Ljava/lang/String;

    .line 156
    .line 157
    :goto_2
    iput-object v8, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 158
    .line 159
    and-int/lit8 v1, v6, 0x4

    .line 160
    .line 161
    if-nez v1, :cond_2

    .line 162
    .line 163
    const-string v1, ""

    .line 164
    .line 165
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->_text:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_2
    iput-object v9, v0, Lorg/wikipedia/page/PageTitle;->_text:Ljava/lang/String;

    .line 169
    .line 170
    :goto_3
    and-int/lit8 v1, v6, 0x8

    .line 171
    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_3
    const/4 v1, 0x0

    .line 179
    iput-object v10, v0, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 180
    .line 181
    :goto_4
    and-int/lit8 v2, v6, 0x10

    .line 182
    .line 183
    if-nez v2, :cond_4

    .line 184
    .line 185
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_4
    iput-object v11, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 189
    .line 190
    :goto_5
    and-int/lit8 v2, v6, 0x20

    .line 191
    .line 192
    if-nez v2, :cond_5

    .line 193
    .line 194
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_5
    iput-object v12, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 198
    .line 199
    :goto_6
    and-int/lit8 v2, v6, 0x40

    .line 200
    .line 201
    if-nez v2, :cond_6

    .line 202
    .line 203
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_6
    iput-object v13, v0, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 207
    .line 208
    :goto_7
    and-int/lit16 v2, v6, 0x80

    .line 209
    .line 210
    if-nez v2, :cond_7

    .line 211
    .line 212
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_7
    iput-object v14, v0, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_8
    const/4 v1, 0x0

    .line 219
    sget-object v0, Lorg/wikipedia/page/PageTitle$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 220
    .line 221
    invoke-static {v6, v15, v0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 222
    .line 223
    .line 224
    throw v1

    .line 225
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
    sget-object p0, Lorg/wikipedia/page/PageTitle$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/page/PageTitle$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->_namespace:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 24
    .line 25
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->_namespace:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 32
    .line 33
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 34
    .line 35
    iget-object v2, p2, Lorg/wikipedia/page/PageTitle;->_text:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p1, p0, v3, v0, v1}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v0, ""

    .line 49
    .line 50
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    :goto_1
    const/4 v0, 0x2

    .line 57
    invoke-virtual {p1, p0, v0, v2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    :goto_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 72
    .line 73
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 91
    .line 92
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 110
    .line 111
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v2, 0x5

    .line 114
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_9
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_a
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v0, :cond_b

    .line 127
    .line 128
    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 129
    .line 130
    iget-object v1, p2, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 131
    .line 132
    const/4 v2, 0x6

    .line 133
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_b
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_c
    iget-object v0, p2, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v0, :cond_d

    .line 146
    .line 147
    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 148
    .line 149
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 150
    .line 151
    const/4 v1, 0x7

    .line 152
    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_d
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 156
    .line 157
    .line 158
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
