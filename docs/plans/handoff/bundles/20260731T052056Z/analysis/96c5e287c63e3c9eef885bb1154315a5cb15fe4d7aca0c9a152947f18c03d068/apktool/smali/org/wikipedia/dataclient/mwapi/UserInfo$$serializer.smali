.class public final synthetic Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.UserInfo"

    .line 11
    .line 12
    const/16 v3, 0x13

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "blockedbyid"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "blockid"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "blockedby"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "blockreason"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "blockedtimestamp"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "blockexpiry"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "id"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "groups"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "latestcontrib"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "registrationdate"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string v0, "registration"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v0, "editcount"

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    const-string v0, "name"

    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v0, "anon"

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    const-string v0, "messages"

    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const-string v0, "rights"

    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, "cancreate"

    .line 99
    .line 100
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    const-string v0, "cancreateerror"

    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    const-string v0, "options"

    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v2, v0, v3

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    aput-object v2, v0, v3

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    aput-object v2, v0, v3

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    aput-object v2, v0, v3

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    const/4 v3, 0x7

    .line 33
    aget-object v4, p0, v3

    .line 34
    .line 35
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v0, v3

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    aput-object v4, v0, v3

    .line 54
    .line 55
    const/16 v3, 0x9

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    aput-object v4, v0, v3

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    aput-object v4, v0, v3

    .line 70
    .line 71
    const/16 v3, 0xb

    .line 72
    .line 73
    aput-object v1, v0, v3

    .line 74
    .line 75
    const/16 v1, 0xc

    .line 76
    .line 77
    aput-object v2, v0, v1

    .line 78
    .line 79
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 80
    .line 81
    const/16 v2, 0xd

    .line 82
    .line 83
    aput-object v1, v0, v2

    .line 84
    .line 85
    const/16 v2, 0xe

    .line 86
    .line 87
    aput-object v1, v0, v2

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aget-object v3, p0, v2

    .line 92
    .line 93
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    aput-object v3, v0, v2

    .line 98
    .line 99
    const/16 v2, 0x10

    .line 100
    .line 101
    aput-object v1, v0, v2

    .line 102
    .line 103
    const/16 v1, 0x11

    .line 104
    .line 105
    aget-object p0, p0, v1

    .line 106
    .line 107
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 112
    .line 113
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    aput-object p0, v0, v1

    .line 118
    .line 119
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;

    .line 120
    .line 121
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const/16 v1, 0x12

    .line 126
    .line 127
    aput-object p0, v0, v1

    .line 128
    .line 129
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 28

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/UserInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    move-object/from16 v17, v2

    .line 12
    .line 13
    const/16 p0, 0x0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v18, 0x1

    .line 30
    .line 31
    const/16 v19, 0x0

    .line 32
    .line 33
    const/16 v20, 0x0

    .line 34
    .line 35
    const/16 v21, 0x0

    .line 36
    .line 37
    const/16 v22, 0x0

    .line 38
    .line 39
    const/16 v23, 0x0

    .line 40
    .line 41
    const/16 v25, 0x0

    .line 42
    .line 43
    :goto_0
    if-eqz v18, :cond_0

    .line 44
    .line 45
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 46
    .line 47
    .line 48
    move-result v24

    .line 49
    packed-switch v24, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    invoke-static/range {v24 .. v24}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_0
    move/from16 v24, v10

    .line 57
    .line 58
    sget-object v10, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;

    .line 59
    .line 60
    move-object/from16 v26, v11

    .line 61
    .line 62
    const/16 v11, 0x12

    .line 63
    .line 64
    invoke-interface {v1, v0, v11, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    .line 69
    .line 70
    const/high16 v10, 0x40000

    .line 71
    .line 72
    :goto_1
    or-int/2addr v8, v10

    .line 73
    :goto_2
    move/from16 v10, v24

    .line 74
    .line 75
    :goto_3
    move-object/from16 v11, v26

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_1
    move/from16 v24, v10

    .line 79
    .line 80
    move-object/from16 v26, v11

    .line 81
    .line 82
    const/16 v10, 0x11

    .line 83
    .line 84
    aget-object v11, v17, v10

    .line 85
    .line 86
    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 91
    .line 92
    invoke-interface {v1, v0, v10, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Ljava/util/List;

    .line 97
    .line 98
    const/high16 v10, 0x20000

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_2
    move/from16 v24, v10

    .line 102
    .line 103
    move-object/from16 v26, v11

    .line 104
    .line 105
    const/16 v10, 0x10

    .line 106
    .line 107
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 108
    .line 109
    .line 110
    move-result v25

    .line 111
    const/high16 v10, 0x10000

    .line 112
    .line 113
    or-int/2addr v8, v10

    .line 114
    :goto_4
    move/from16 v10, v24

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_3
    move/from16 v24, v10

    .line 118
    .line 119
    move-object/from16 v26, v11

    .line 120
    .line 121
    const/16 v10, 0xf

    .line 122
    .line 123
    aget-object v11, v17, v10

    .line 124
    .line 125
    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 130
    .line 131
    invoke-interface {v1, v0, v10, v11, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/util/List;

    .line 136
    .line 137
    const v10, 0x8000

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_4
    move/from16 v24, v10

    .line 142
    .line 143
    move-object/from16 v26, v11

    .line 144
    .line 145
    const/16 v10, 0xe

    .line 146
    .line 147
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 148
    .line 149
    .line 150
    move-result v23

    .line 151
    or-int/lit16 v8, v8, 0x4000

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :pswitch_5
    move/from16 v24, v10

    .line 155
    .line 156
    move-object/from16 v26, v11

    .line 157
    .line 158
    const/16 v10, 0xd

    .line 159
    .line 160
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 161
    .line 162
    .line 163
    move-result v22

    .line 164
    or-int/lit16 v8, v8, 0x2000

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :pswitch_6
    move/from16 v24, v10

    .line 168
    .line 169
    move-object/from16 v26, v11

    .line 170
    .line 171
    const/16 v10, 0xc

    .line 172
    .line 173
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v21

    .line 177
    or-int/lit16 v8, v8, 0x1000

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :pswitch_7
    move/from16 v24, v10

    .line 181
    .line 182
    move-object/from16 v26, v11

    .line 183
    .line 184
    const/16 v10, 0xb

    .line 185
    .line 186
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 187
    .line 188
    .line 189
    move-result v20

    .line 190
    or-int/lit16 v8, v8, 0x800

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :pswitch_8
    move/from16 v24, v10

    .line 194
    .line 195
    move-object/from16 v26, v11

    .line 196
    .line 197
    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 198
    .line 199
    const/16 v11, 0xa

    .line 200
    .line 201
    invoke-interface {v1, v0, v11, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Ljava/lang/String;

    .line 206
    .line 207
    or-int/lit16 v8, v8, 0x400

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :pswitch_9
    move/from16 v24, v10

    .line 212
    .line 213
    move-object/from16 v26, v11

    .line 214
    .line 215
    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 216
    .line 217
    const/16 v11, 0x9

    .line 218
    .line 219
    invoke-interface {v1, v0, v11, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Ljava/lang/String;

    .line 224
    .line 225
    or-int/lit16 v8, v8, 0x200

    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :pswitch_a
    move/from16 v24, v10

    .line 230
    .line 231
    move-object/from16 v26, v11

    .line 232
    .line 233
    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 234
    .line 235
    const/16 v11, 0x8

    .line 236
    .line 237
    invoke-interface {v1, v0, v11, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Ljava/lang/String;

    .line 242
    .line 243
    or-int/lit16 v8, v8, 0x100

    .line 244
    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :pswitch_b
    move/from16 v24, v10

    .line 248
    .line 249
    move-object/from16 v26, v11

    .line 250
    .line 251
    const/4 v10, 0x7

    .line 252
    aget-object v11, v17, v10

    .line 253
    .line 254
    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 259
    .line 260
    invoke-interface {v1, v0, v10, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Ljava/util/List;

    .line 265
    .line 266
    or-int/lit16 v8, v8, 0x80

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :pswitch_c
    move/from16 v24, v10

    .line 271
    .line 272
    move-object/from16 v26, v11

    .line 273
    .line 274
    const/4 v10, 0x6

    .line 275
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    or-int/lit8 v8, v8, 0x40

    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :pswitch_d
    move/from16 v24, v10

    .line 284
    .line 285
    move-object/from16 v26, v11

    .line 286
    .line 287
    const/4 v10, 0x5

    .line 288
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    or-int/lit8 v8, v8, 0x20

    .line 293
    .line 294
    goto/16 :goto_4

    .line 295
    .line 296
    :pswitch_e
    move/from16 v24, v10

    .line 297
    .line 298
    move-object/from16 v26, v11

    .line 299
    .line 300
    const/4 v10, 0x4

    .line 301
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    or-int/lit8 v8, v8, 0x10

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :pswitch_f
    move/from16 v24, v10

    .line 310
    .line 311
    move-object/from16 v26, v11

    .line 312
    .line 313
    const/4 v10, 0x3

    .line 314
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    or-int/lit8 v8, v8, 0x8

    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :pswitch_10
    move/from16 v24, v10

    .line 323
    .line 324
    const/4 v10, 0x2

    .line 325
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    or-int/lit8 v8, v8, 0x4

    .line 330
    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :pswitch_11
    move-object/from16 v26, v11

    .line 334
    .line 335
    const/4 v10, 0x1

    .line 336
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    or-int/lit8 v8, v8, 0x2

    .line 341
    .line 342
    move v10, v11

    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    :pswitch_12
    move/from16 v24, v10

    .line 346
    .line 347
    move-object/from16 v26, v11

    .line 348
    .line 349
    const/4 v10, 0x1

    .line 350
    const/4 v11, 0x0

    .line 351
    invoke-interface {v1, v0, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 352
    .line 353
    .line 354
    move-result v19

    .line 355
    or-int/lit8 v8, v8, 0x1

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :pswitch_13
    move/from16 v24, v10

    .line 360
    .line 361
    move-object/from16 v26, v11

    .line 362
    .line 363
    const/4 v11, 0x0

    .line 364
    move/from16 v18, v11

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_0
    move/from16 v24, v10

    .line 369
    .line 370
    move-object/from16 v26, v11

    .line 371
    .line 372
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 373
    .line 374
    .line 375
    move-object/from16 v16, v7

    .line 376
    .line 377
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 378
    .line 379
    move-object/from16 v18, v4

    .line 380
    .line 381
    move-object/from16 v17, v5

    .line 382
    .line 383
    move-object/from16 v27, v9

    .line 384
    .line 385
    move/from16 v9, v19

    .line 386
    .line 387
    move-object/from16 v24, v2

    .line 388
    .line 389
    move-object/from16 v19, v3

    .line 390
    .line 391
    move-object/from16 v26, v6

    .line 392
    .line 393
    invoke-direct/range {v7 .. v27}, Lorg/wikipedia/dataclient/mwapi/UserInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/util/List;ZLjava/util/List;Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;)V

    .line 394
    .line 395
    .line 396
    return-object v7

    .line 397
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreateError:Ljava/util/List;

    .line 11
    .line 12
    iget-boolean v3, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreate:Z

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->rights:Ljava/util/List;

    .line 15
    .line 16
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->messages:Z

    .line 17
    .line 18
    iget-boolean v6, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->anon:Z

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget v8, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->registration:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->regDate:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->latestContrib:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    .line 31
    .line 32
    iget v13, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    .line 33
    .line 34
    sget-object v14, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 35
    .line 36
    move-object/from16 v15, p1

    .line 37
    .line 38
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 39
    .line 40
    .line 41
    move-result-object v15

    .line 42
    invoke-static {v0, v15, v14}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->write$Self(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 46
    .line 47
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 48
    .line 49
    .line 50
    move-result v16

    .line 51
    if-eqz v16, :cond_0

    .line 52
    .line 53
    :goto_0
    move-object/from16 p0, v0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    if-eqz v13, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    const/4 v0, 0x6

    .line 60
    invoke-virtual {v15, v0, v13, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move-object/from16 p0, v0

    .line 65
    .line 66
    :goto_2
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    if-eqz v12, :cond_3

    .line 74
    .line 75
    :goto_3
    const/4 v0, 0x7

    .line 76
    aget-object v13, p0, v0

    .line 77
    .line 78
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 83
    .line 84
    invoke-virtual {v15, v14, v0, v13, v12}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    if-eqz v11, :cond_5

    .line 95
    .line 96
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 97
    .line 98
    const/16 v12, 0x8

    .line 99
    .line 100
    invoke-virtual {v15, v14, v12, v0, v11}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    if-eqz v10, :cond_7

    .line 111
    .line 112
    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 113
    .line 114
    const/16 v11, 0x9

    .line 115
    .line 116
    invoke-virtual {v15, v14, v11, v0, v10}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_8
    if-eqz v9, :cond_9

    .line 127
    .line 128
    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 129
    .line 130
    const/16 v10, 0xa

    .line 131
    .line 132
    invoke-virtual {v15, v14, v10, v0, v9}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_9
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_a
    const/4 v0, -0x1

    .line 143
    if-eq v8, v0, :cond_b

    .line 144
    .line 145
    :goto_7
    const/16 v0, 0xb

    .line 146
    .line 147
    invoke-virtual {v15, v0, v8, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_c
    const-string v0, ""

    .line 158
    .line 159
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_d

    .line 164
    .line 165
    :goto_8
    const/16 v0, 0xc

    .line 166
    .line 167
    invoke-virtual {v15, v14, v0, v7}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_e

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_e
    if-eqz v6, :cond_f

    .line 178
    .line 179
    :goto_9
    const/16 v0, 0xd

    .line 180
    .line 181
    invoke-virtual {v15, v14, v0, v6}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 182
    .line 183
    .line 184
    :cond_f
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_10

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_10
    if-eqz v5, :cond_11

    .line 192
    .line 193
    :goto_a
    const/16 v0, 0xe

    .line 194
    .line 195
    invoke-virtual {v15, v14, v0, v5}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 196
    .line 197
    .line 198
    :cond_11
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_12

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_12
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 206
    .line 207
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_13

    .line 212
    .line 213
    :goto_b
    const/16 v0, 0xf

    .line 214
    .line 215
    aget-object v5, p0, v0

    .line 216
    .line 217
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 222
    .line 223
    invoke-virtual {v15, v14, v0, v5, v4}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_13
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_14

    .line 231
    .line 232
    goto :goto_c

    .line 233
    :cond_14
    if-eqz v3, :cond_15

    .line 234
    .line 235
    :goto_c
    const/16 v0, 0x10

    .line 236
    .line 237
    invoke-virtual {v15, v14, v0, v3}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 238
    .line 239
    .line 240
    :cond_15
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_16

    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_16
    if-eqz v2, :cond_17

    .line 248
    .line 249
    :goto_d
    const/16 v0, 0x11

    .line 250
    .line 251
    aget-object v3, p0, v0

    .line 252
    .line 253
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 258
    .line 259
    invoke-virtual {v15, v14, v0, v3, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_17
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_18

    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_18
    if-eqz v1, :cond_19

    .line 270
    .line 271
    :goto_e
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options$$serializer;

    .line 272
    .line 273
    const/16 v2, 0x12

    .line 274
    .line 275
    invoke-virtual {v15, v14, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_19
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
