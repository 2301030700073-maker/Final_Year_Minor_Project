.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.MwQueryPage.Revision"

    .line 11
    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "slots"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "minor"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "revid"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "parentid"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "anon"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "temp"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "timestamp"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "size"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v0, "user"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "comment"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "parsedcomment"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string v0, "oresscores"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v0, "diffSize"

    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0xd

    .line 23
    .line 24
    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    aput-object p0, v2, v0

    .line 27
    .line 28
    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object p0, v2, v0

    .line 32
    .line 33
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    aput-object v0, v2, v3

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    aput-object v0, v2, v3

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    aput-object p0, v2, v0

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    aput-object p0, v2, v0

    .line 46
    .line 47
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    aput-object p0, v2, v0

    .line 51
    .line 52
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 53
    .line 54
    const/4 v3, 0x7

    .line 55
    aput-object v0, v2, v3

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    aput-object p0, v2, v3

    .line 60
    .line 61
    const/16 v3, 0x9

    .line 62
    .line 63
    aput-object p0, v2, v3

    .line 64
    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    aput-object p0, v2, v3

    .line 68
    .line 69
    const/16 p0, 0xb

    .line 70
    .line 71
    aput-object v1, v2, p0

    .line 72
    .line 73
    const/16 p0, 0xc

    .line 74
    .line 75
    aput-object v0, v2, p0

    .line 76
    .line 77
    return-object v2
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 25

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    move v9, v4

    .line 17
    move v11, v9

    .line 18
    move/from16 v16, v11

    .line 19
    .line 20
    move/from16 v17, v16

    .line 21
    .line 22
    move/from16 v19, v17

    .line 23
    .line 24
    move/from16 v24, v19

    .line 25
    .line 26
    move-object v10, v5

    .line 27
    move-object/from16 v18, v10

    .line 28
    .line 29
    move-object/from16 v20, v18

    .line 30
    .line 31
    move-object/from16 v21, v20

    .line 32
    .line 33
    move-object/from16 v22, v21

    .line 34
    .line 35
    move-wide v12, v6

    .line 36
    move-wide v14, v12

    .line 37
    move v6, v3

    .line 38
    move-object/from16 v7, v22

    .line 39
    .line 40
    :goto_0
    if-eqz v6, :cond_0

    .line 41
    .line 42
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    packed-switch v8, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 50
    .line 51
    .line 52
    return-object v5

    .line 53
    :pswitch_0
    const/16 v8, 0xc

    .line 54
    .line 55
    invoke-interface {v1, v0, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 56
    .line 57
    .line 58
    move-result v24

    .line 59
    or-int/lit16 v9, v9, 0x1000

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_1
    sget-object v8, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 63
    .line 64
    const/16 v5, 0xb

    .line 65
    .line 66
    invoke-interface {v1, v0, v5, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    move-object v7, v5

    .line 71
    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 72
    .line 73
    or-int/lit16 v9, v9, 0x800

    .line 74
    .line 75
    :goto_1
    const/4 v5, 0x0

    .line 76
    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v5, 0xa

    .line 78
    .line 79
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v22

    .line 83
    or-int/lit16 v9, v9, 0x400

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_3
    const/16 v5, 0x9

    .line 87
    .line 88
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v21

    .line 92
    or-int/lit16 v9, v9, 0x200

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_4
    const/16 v5, 0x8

    .line 96
    .line 97
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v20

    .line 101
    or-int/lit16 v9, v9, 0x100

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_5
    const/4 v5, 0x7

    .line 105
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 106
    .line 107
    .line 108
    move-result v19

    .line 109
    or-int/lit16 v9, v9, 0x80

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_6
    const/4 v5, 0x6

    .line 113
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v18

    .line 117
    or-int/lit8 v9, v9, 0x40

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_7
    const/4 v5, 0x5

    .line 121
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    or-int/lit8 v9, v9, 0x20

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_8
    const/4 v5, 0x4

    .line 129
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    or-int/lit8 v9, v9, 0x10

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_9
    const/4 v5, 0x3

    .line 137
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v14

    .line 141
    or-int/lit8 v9, v9, 0x8

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :pswitch_a
    const/4 v5, 0x2

    .line 145
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v12

    .line 149
    or-int/lit8 v9, v9, 0x4

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :pswitch_b
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    or-int/lit8 v9, v9, 0x2

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_c
    aget-object v5, v2, v4

    .line 160
    .line 161
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 166
    .line 167
    invoke-interface {v1, v0, v4, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    move-object v10, v5

    .line 172
    check-cast v10, Ljava/util/Map;

    .line 173
    .line 174
    or-int/lit8 v9, v9, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_d
    move v6, v4

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 184
    .line 185
    move-object/from16 v23, v7

    .line 186
    .line 187
    invoke-direct/range {v8 .. v24}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;-><init>(ILjava/util/Map;ZJJZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;I)V

    .line 188
    .line 189
    .line 190
    return-object v8

    .line 191
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 15
    .line 16
    iget v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 19
    .line 20
    iget-boolean v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 21
    .line 22
    iget-boolean v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 23
    .line 24
    iget-wide v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 25
    .line 26
    iget-wide v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 27
    .line 28
    iget-boolean v13, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->minor:Z

    .line 29
    .line 30
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->slots:Ljava/util/Map;

    .line 31
    .line 32
    sget-object v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 33
    .line 34
    move-object/from16 p0, v0

    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v16, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->$childSerializers:[Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 45
    .line 46
    .line 47
    move-result v17

    .line 48
    if-eqz v17, :cond_0

    .line 49
    .line 50
    :goto_0
    move-object/from16 v17, v1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-eqz v14, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const/4 v1, 0x0

    .line 57
    aget-object v16, v16, v1

    .line 58
    .line 59
    invoke-interface/range {v16 .. v16}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    move-object/from16 p2, v2

    .line 64
    .line 65
    move-object/from16 v2, v16

    .line 66
    .line 67
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 68
    .line 69
    invoke-virtual {v0, v15, v1, v2, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move-object/from16 v17, v1

    .line 74
    .line 75
    move-object/from16 p2, v2

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    if-eqz v13, :cond_3

    .line 85
    .line 86
    :goto_3
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v15, v1, v13}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const-wide/16 v13, 0x0

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    cmp-long v1, v11, v13

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    :goto_4
    const/4 v1, 0x2

    .line 104
    invoke-virtual {v0, v15, v1, v11, v12}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    cmp-long v1, v9, v13

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    :goto_5
    const/4 v1, 0x3

    .line 119
    invoke-virtual {v0, v15, v1, v9, v10}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    if-eqz v8, :cond_9

    .line 130
    .line 131
    :goto_6
    const/4 v1, 0x4

    .line 132
    invoke-virtual {v0, v15, v1, v8}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 133
    .line 134
    .line 135
    :cond_9
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_a
    if-eqz v7, :cond_b

    .line 143
    .line 144
    :goto_7
    const/4 v1, 0x5

    .line 145
    invoke-virtual {v0, v15, v1, v7}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 146
    .line 147
    .line 148
    :cond_b
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const-string v2, ""

    .line 153
    .line 154
    if-eqz v1, :cond_c

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_c
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_d

    .line 162
    .line 163
    :goto_8
    const/4 v1, 0x6

    .line 164
    invoke-virtual {v0, v15, v1, v6}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_d
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_e

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_e
    if-eqz v5, :cond_f

    .line 175
    .line 176
    :goto_9
    const/4 v1, 0x7

    .line 177
    invoke-virtual {v0, v1, v5, v15}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 178
    .line 179
    .line 180
    :cond_f
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_10

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_10
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_11

    .line 192
    .line 193
    :goto_a
    const/16 v1, 0x8

    .line 194
    .line 195
    invoke-virtual {v0, v15, v1, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_11
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_12

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_12
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_13

    .line 210
    .line 211
    :goto_b
    const/16 v1, 0x9

    .line 212
    .line 213
    invoke-virtual {v0, v15, v1, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_13
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_14

    .line 221
    .line 222
    move-object/from16 v1, p2

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_14
    move-object/from16 v1, p2

    .line 226
    .line 227
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_15

    .line 232
    .line 233
    :goto_c
    const/16 v2, 0xa

    .line 234
    .line 235
    invoke-virtual {v0, v15, v2, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_15
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_16

    .line 243
    .line 244
    goto :goto_d

    .line 245
    :cond_16
    if-eqz v17, :cond_17

    .line 246
    .line 247
    :goto_d
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 248
    .line 249
    const/16 v2, 0xb

    .line 250
    .line 251
    move-object/from16 v3, v17

    .line 252
    .line 253
    invoke-virtual {v0, v15, v2, v1, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_17
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_18

    .line 261
    .line 262
    move-object/from16 v1, p0

    .line 263
    .line 264
    goto :goto_e

    .line 265
    :cond_18
    move-object/from16 v1, p0

    .line 266
    .line 267
    iget v2, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 268
    .line 269
    if-eqz v2, :cond_19

    .line 270
    .line 271
    :goto_e
    iget v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 272
    .line 273
    const/16 v2, 0xc

    .line 274
    .line 275
    invoke-virtual {v0, v2, v1, v15}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 276
    .line 277
    .line 278
    :cond_19
    invoke-virtual {v0, v15}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 279
    .line 280
    .line 281
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
