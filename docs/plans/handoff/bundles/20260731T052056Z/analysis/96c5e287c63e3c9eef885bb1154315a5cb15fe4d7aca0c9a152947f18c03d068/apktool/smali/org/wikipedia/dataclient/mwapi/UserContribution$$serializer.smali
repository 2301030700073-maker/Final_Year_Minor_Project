.class public final synthetic Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.UserContribution"

    .line 11
    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "userid"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "user"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "pageid"

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "revid"

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "parentid"

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "ns"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "title"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "timestamp"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "comment"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "new"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "minor"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v0, "top"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v0, "size"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "sizediff"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "tags"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0xf

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
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v1, v0, v3

    .line 19
    .line 20
    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    aput-object v3, v0, v4

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    aput-object v3, v0, v4

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    aput-object v1, v0, v3

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    aput-object v2, v0, v3

    .line 33
    .line 34
    const/4 v3, 0x7

    .line 35
    aput-object v2, v0, v3

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    aput-object v2, v0, v3

    .line 40
    .line 41
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 42
    .line 43
    const/16 v3, 0x9

    .line 44
    .line 45
    aput-object v2, v0, v3

    .line 46
    .line 47
    const/16 v3, 0xa

    .line 48
    .line 49
    aput-object v2, v0, v3

    .line 50
    .line 51
    const/16 v3, 0xb

    .line 52
    .line 53
    aput-object v2, v0, v3

    .line 54
    .line 55
    const/16 v2, 0xc

    .line 56
    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    const/16 v2, 0xd

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    const/16 v1, 0xe

    .line 64
    .line 65
    aget-object p0, p0, v1

    .line 66
    .line 67
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    aput-object p0, v0, v1

    .line 72
    .line 73
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 27

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/UserContribution;->$childSerializers:[Lkotlin/Lazy;

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
    move v10, v9

    .line 18
    move v12, v10

    .line 19
    move/from16 v17, v12

    .line 20
    .line 21
    move/from16 v21, v17

    .line 22
    .line 23
    move/from16 v22, v21

    .line 24
    .line 25
    move/from16 v23, v22

    .line 26
    .line 27
    move/from16 v24, v23

    .line 28
    .line 29
    move/from16 v25, v24

    .line 30
    .line 31
    move-object v11, v5

    .line 32
    move-object/from16 v18, v11

    .line 33
    .line 34
    move-object/from16 v19, v18

    .line 35
    .line 36
    move-object/from16 v20, v19

    .line 37
    .line 38
    move-wide v13, v6

    .line 39
    move-wide v15, v13

    .line 40
    move v6, v3

    .line 41
    move-object/from16 v7, v20

    .line 42
    .line 43
    :goto_0
    if-eqz v6, :cond_0

    .line 44
    .line 45
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    packed-switch v8, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 53
    .line 54
    .line 55
    return-object v5

    .line 56
    :pswitch_0
    const/16 v8, 0xe

    .line 57
    .line 58
    aget-object v26, v2, v8

    .line 59
    .line 60
    invoke-interface/range {v26 .. v26}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v26

    .line 64
    move-object/from16 v5, v26

    .line 65
    .line 66
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 67
    .line 68
    invoke-interface {v1, v0, v8, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    move-object v7, v5

    .line 73
    check-cast v7, Ljava/util/List;

    .line 74
    .line 75
    or-int/lit16 v9, v9, 0x4000

    .line 76
    .line 77
    :goto_1
    const/4 v5, 0x0

    .line 78
    goto :goto_0

    .line 79
    :pswitch_1
    const/16 v5, 0xd

    .line 80
    .line 81
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 82
    .line 83
    .line 84
    move-result v25

    .line 85
    or-int/lit16 v9, v9, 0x2000

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_2
    const/16 v5, 0xc

    .line 89
    .line 90
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 91
    .line 92
    .line 93
    move-result v24

    .line 94
    or-int/lit16 v9, v9, 0x1000

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_3
    const/16 v5, 0xb

    .line 98
    .line 99
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 100
    .line 101
    .line 102
    move-result v23

    .line 103
    or-int/lit16 v9, v9, 0x800

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_4
    const/16 v5, 0xa

    .line 107
    .line 108
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 109
    .line 110
    .line 111
    move-result v22

    .line 112
    or-int/lit16 v9, v9, 0x400

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_5
    const/16 v5, 0x9

    .line 116
    .line 117
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 118
    .line 119
    .line 120
    move-result v21

    .line 121
    or-int/lit16 v9, v9, 0x200

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_6
    const/16 v5, 0x8

    .line 125
    .line 126
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v20

    .line 130
    or-int/lit16 v9, v9, 0x100

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_7
    const/4 v5, 0x7

    .line 134
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v19

    .line 138
    or-int/lit16 v9, v9, 0x80

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_8
    const/4 v5, 0x6

    .line 142
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v18

    .line 146
    or-int/lit8 v9, v9, 0x40

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_9
    const/4 v5, 0x5

    .line 150
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 151
    .line 152
    .line 153
    move-result v17

    .line 154
    or-int/lit8 v9, v9, 0x20

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :pswitch_a
    const/4 v5, 0x4

    .line 158
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v15

    .line 162
    or-int/lit8 v9, v9, 0x10

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_b
    const/4 v5, 0x3

    .line 166
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v13

    .line 170
    or-int/lit8 v9, v9, 0x8

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_c
    const/4 v5, 0x2

    .line 174
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    or-int/lit8 v9, v9, 0x4

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_d
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    or-int/lit8 v9, v9, 0x2

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :pswitch_e
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    or-int/lit8 v9, v9, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_f
    move v6, v4

    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 199
    .line 200
    .line 201
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 202
    .line 203
    move-object/from16 v26, v7

    .line 204
    .line 205
    invoke-direct/range {v8 .. v26}, Lorg/wikipedia/dataclient/mwapi/UserContribution;-><init>(IILjava/lang/String;IJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIILjava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object v8

    .line 209
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->tags:Ljava/util/List;

    .line 9
    .line 10
    iget v2, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->sizediff:I

    .line 11
    .line 12
    iget v3, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->size:I

    .line 13
    .line 14
    iget-boolean v4, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->top:Z

    .line 15
    .line 16
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->minor:Z

    .line 17
    .line 18
    iget-boolean v6, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->new:Z

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget v10, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 27
    .line 28
    iget-wide v11, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parentid:J

    .line 29
    .line 30
    iget-wide v13, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 31
    .line 32
    iget v15, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 33
    .line 34
    move-object/from16 p0, v1

    .line 35
    .line 36
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->user:Ljava/lang/String;

    .line 37
    .line 38
    iget v0, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->userid:I

    .line 39
    .line 40
    move/from16 p2, v2

    .line 41
    .line 42
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 43
    .line 44
    move/from16 v16, v3

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v17, Lorg/wikipedia/dataclient/mwapi/UserContribution;->$childSerializers:[Lkotlin/Lazy;

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 55
    .line 56
    .line 57
    move-result v18

    .line 58
    if-eqz v18, :cond_0

    .line 59
    .line 60
    :goto_0
    move/from16 v18, v4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v3, v4, v0, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move/from16 v18, v4

    .line 72
    .line 73
    :goto_2
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const-string v4, ""

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    :goto_3
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v3, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    if-eqz v15, :cond_5

    .line 100
    .line 101
    :goto_4
    const/4 v0, 0x2

    .line 102
    invoke-virtual {v3, v0, v15, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const-wide/16 v19, 0x0

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    cmp-long v0, v13, v19

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    :goto_5
    const/4 v0, 0x3

    .line 119
    invoke-virtual {v3, v2, v0, v13, v14}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    cmp-long v0, v11, v19

    .line 130
    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    :goto_6
    const/4 v0, 0x4

    .line 134
    invoke-virtual {v3, v2, v0, v11, v12}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 135
    .line 136
    .line 137
    :cond_9
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_a
    if-eqz v10, :cond_b

    .line 145
    .line 146
    :goto_7
    const/4 v0, 0x5

    .line 147
    invoke-virtual {v3, v0, v10, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

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
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_d

    .line 162
    .line 163
    :goto_8
    const/4 v0, 0x6

    .line 164
    invoke-virtual {v3, v2, v0, v9}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_d
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_e
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_f

    .line 179
    .line 180
    :goto_9
    const/4 v0, 0x7

    .line 181
    invoke-virtual {v3, v2, v0, v8}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_f
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

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
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_11

    .line 196
    .line 197
    :goto_a
    const/16 v0, 0x8

    .line 198
    .line 199
    invoke-virtual {v3, v2, v0, v7}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_11
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_12

    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_12
    if-eqz v6, :cond_13

    .line 210
    .line 211
    :goto_b
    const/16 v0, 0x9

    .line 212
    .line 213
    invoke-virtual {v3, v2, v0, v6}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 214
    .line 215
    .line 216
    :cond_13
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_14

    .line 221
    .line 222
    goto :goto_c

    .line 223
    :cond_14
    if-eqz v5, :cond_15

    .line 224
    .line 225
    :goto_c
    const/16 v0, 0xa

    .line 226
    .line 227
    invoke-virtual {v3, v2, v0, v5}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 228
    .line 229
    .line 230
    :cond_15
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_16

    .line 235
    .line 236
    goto :goto_d

    .line 237
    :cond_16
    if-eqz v18, :cond_17

    .line 238
    .line 239
    :goto_d
    const/16 v0, 0xb

    .line 240
    .line 241
    move/from16 v1, v18

    .line 242
    .line 243
    invoke-virtual {v3, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 244
    .line 245
    .line 246
    :cond_17
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_18

    .line 251
    .line 252
    goto :goto_e

    .line 253
    :cond_18
    if-eqz v16, :cond_19

    .line 254
    .line 255
    :goto_e
    const/16 v0, 0xc

    .line 256
    .line 257
    move/from16 v1, v16

    .line 258
    .line 259
    invoke-virtual {v3, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 260
    .line 261
    .line 262
    :cond_19
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_1a

    .line 267
    .line 268
    goto :goto_f

    .line 269
    :cond_1a
    if-eqz p2, :cond_1b

    .line 270
    .line 271
    :goto_f
    const/16 v0, 0xd

    .line 272
    .line 273
    move/from16 v1, p2

    .line 274
    .line 275
    invoke-virtual {v3, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 276
    .line 277
    .line 278
    :cond_1b
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_1c

    .line 283
    .line 284
    move-object/from16 v1, p0

    .line 285
    .line 286
    goto :goto_10

    .line 287
    :cond_1c
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 288
    .line 289
    move-object/from16 v1, p0

    .line 290
    .line 291
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_1d

    .line 296
    .line 297
    :goto_10
    const/16 v0, 0xe

    .line 298
    .line 299
    aget-object v4, v17, v0

    .line 300
    .line 301
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 306
    .line 307
    invoke-virtual {v3, v2, v0, v4, v1}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_1d
    invoke-virtual {v3, v2}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 311
    .line 312
    .line 313
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
