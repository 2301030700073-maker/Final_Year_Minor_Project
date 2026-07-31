.class public final synthetic Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.analytics.eventplatform.ActivityTabEvent.ActionData"

    .line 11
    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "group"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "state"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "impact"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "games"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "donations"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "timeline"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "all"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "time_spent"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "reading_insight"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "editing_insight"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string v0, "edit_count"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v0, "feedback_select"

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    const-string v0, "feedback_text"

    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    sput-object v1, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 14

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
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    sget-object v10, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 44
    .line 45
    invoke-static {v10}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-static {v10}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/16 v12, 0xd

    .line 58
    .line 59
    new-array v12, v12, [Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    aput-object v0, v12, v13

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v1, v12, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v2, v12, v0

    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    aput-object v3, v12, v0

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    aput-object v4, v12, v0

    .line 75
    .line 76
    const/4 v0, 0x5

    .line 77
    aput-object v5, v12, v0

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    aput-object v6, v12, v0

    .line 81
    .line 82
    const/4 v0, 0x7

    .line 83
    aput-object v7, v12, v0

    .line 84
    .line 85
    const/16 v0, 0x8

    .line 86
    .line 87
    aput-object v8, v12, v0

    .line 88
    .line 89
    const/16 v0, 0x9

    .line 90
    .line 91
    aput-object v9, v12, v0

    .line 92
    .line 93
    const/16 v0, 0xa

    .line 94
    .line 95
    aput-object v11, v12, v0

    .line 96
    .line 97
    const/16 v0, 0xb

    .line 98
    .line 99
    aput-object v10, v12, v0

    .line 100
    .line 101
    const/16 v0, 0xc

    .line 102
    .line 103
    aput-object p0, v12, v0

    .line 104
    .line 105
    return-object v12
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 21

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/16 p0, 0x0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v15, 0x0

    .line 25
    const/16 v17, 0x1

    .line 26
    .line 27
    :goto_0
    if-eqz v17, :cond_0

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 30
    .line 31
    .line 32
    move-result v18

    .line 33
    packed-switch v18, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    invoke-static/range {v18 .. v18}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_0
    move-object/from16 v18, v8

    .line 41
    .line 42
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 43
    .line 44
    move-object/from16 v19, v9

    .line 45
    .line 46
    const/16 v9, 0xc

    .line 47
    .line 48
    invoke-interface {v1, v0, v9, v8, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    or-int/lit16 v7, v7, 0x1000

    .line 55
    .line 56
    :goto_1
    move-object/from16 v8, v18

    .line 57
    .line 58
    move-object/from16 v9, v19

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_1
    move-object/from16 v18, v8

    .line 62
    .line 63
    move-object/from16 v19, v9

    .line 64
    .line 65
    sget-object v8, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 66
    .line 67
    const/16 v9, 0xb

    .line 68
    .line 69
    invoke-interface {v1, v0, v9, v8, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/Integer;

    .line 74
    .line 75
    or-int/lit16 v7, v7, 0x800

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_2
    move-object/from16 v18, v8

    .line 79
    .line 80
    move-object/from16 v19, v9

    .line 81
    .line 82
    sget-object v8, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 83
    .line 84
    const/16 v9, 0xa

    .line 85
    .line 86
    invoke-interface {v1, v0, v9, v8, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/Integer;

    .line 91
    .line 92
    or-int/lit16 v7, v7, 0x400

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_3
    move-object/from16 v18, v8

    .line 96
    .line 97
    move-object/from16 v19, v9

    .line 98
    .line 99
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 100
    .line 101
    const/16 v9, 0x9

    .line 102
    .line 103
    invoke-interface {v1, v0, v9, v8, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    .line 109
    or-int/lit16 v7, v7, 0x200

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_4
    move-object/from16 v18, v8

    .line 113
    .line 114
    move-object/from16 v19, v9

    .line 115
    .line 116
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 117
    .line 118
    const/16 v9, 0x8

    .line 119
    .line 120
    invoke-interface {v1, v0, v9, v8, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/lang/String;

    .line 125
    .line 126
    or-int/lit16 v7, v7, 0x100

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :pswitch_5
    move-object/from16 v18, v8

    .line 130
    .line 131
    move-object/from16 v19, v9

    .line 132
    .line 133
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 134
    .line 135
    const/4 v9, 0x7

    .line 136
    invoke-interface {v1, v0, v9, v8, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    move-object v15, v8

    .line 141
    check-cast v15, Ljava/lang/String;

    .line 142
    .line 143
    or-int/lit16 v7, v7, 0x80

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_6
    move-object/from16 v18, v8

    .line 147
    .line 148
    move-object/from16 v19, v9

    .line 149
    .line 150
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 151
    .line 152
    const/4 v9, 0x6

    .line 153
    invoke-interface {v1, v0, v9, v8, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    move-object v14, v8

    .line 158
    check-cast v14, Ljava/lang/String;

    .line 159
    .line 160
    or-int/lit8 v7, v7, 0x40

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_7
    move-object/from16 v18, v8

    .line 164
    .line 165
    move-object/from16 v19, v9

    .line 166
    .line 167
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 168
    .line 169
    const/4 v9, 0x5

    .line 170
    invoke-interface {v1, v0, v9, v8, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    move-object v13, v8

    .line 175
    check-cast v13, Ljava/lang/String;

    .line 176
    .line 177
    or-int/lit8 v7, v7, 0x20

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_8
    move-object/from16 v18, v8

    .line 181
    .line 182
    move-object/from16 v19, v9

    .line 183
    .line 184
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 185
    .line 186
    const/4 v9, 0x4

    .line 187
    invoke-interface {v1, v0, v9, v8, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    move-object v12, v8

    .line 192
    check-cast v12, Ljava/lang/String;

    .line 193
    .line 194
    or-int/lit8 v7, v7, 0x10

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_9
    move-object/from16 v18, v8

    .line 199
    .line 200
    move-object/from16 v19, v9

    .line 201
    .line 202
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 203
    .line 204
    const/4 v9, 0x3

    .line 205
    invoke-interface {v1, v0, v9, v8, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    move-object v11, v8

    .line 210
    check-cast v11, Ljava/lang/String;

    .line 211
    .line 212
    or-int/lit8 v7, v7, 0x8

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :pswitch_a
    move-object/from16 v18, v8

    .line 217
    .line 218
    move-object/from16 v19, v9

    .line 219
    .line 220
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 221
    .line 222
    const/4 v9, 0x2

    .line 223
    invoke-interface {v1, v0, v9, v8, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    move-object v10, v8

    .line 228
    check-cast v10, Ljava/lang/String;

    .line 229
    .line 230
    or-int/lit8 v7, v7, 0x4

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_b
    move-object/from16 v18, v8

    .line 235
    .line 236
    move-object/from16 v19, v9

    .line 237
    .line 238
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 239
    .line 240
    move-object/from16 v19, v2

    .line 241
    .line 242
    const/4 v2, 0x1

    .line 243
    invoke-interface {v1, v0, v2, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    move-object v9, v8

    .line 248
    check-cast v9, Ljava/lang/String;

    .line 249
    .line 250
    or-int/lit8 v7, v7, 0x2

    .line 251
    .line 252
    move-object/from16 v8, v18

    .line 253
    .line 254
    :goto_2
    move-object/from16 v2, v19

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_c
    move-object/from16 v19, v2

    .line 259
    .line 260
    move-object/from16 v18, v8

    .line 261
    .line 262
    const/4 v2, 0x1

    .line 263
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 264
    .line 265
    move-object/from16 v2, v18

    .line 266
    .line 267
    move-object/from16 v18, v3

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    invoke-interface {v1, v0, v3, v8, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    move-object v8, v2

    .line 275
    check-cast v8, Ljava/lang/String;

    .line 276
    .line 277
    or-int/lit8 v7, v7, 0x1

    .line 278
    .line 279
    :goto_3
    move-object/from16 v3, v18

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :pswitch_d
    move-object/from16 v19, v2

    .line 283
    .line 284
    move-object/from16 v18, v3

    .line 285
    .line 286
    move-object v2, v8

    .line 287
    const/4 v3, 0x0

    .line 288
    move/from16 v17, v3

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_0
    move-object/from16 v19, v2

    .line 292
    .line 293
    move-object/from16 v18, v3

    .line 294
    .line 295
    move-object v2, v8

    .line 296
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v16, v6

    .line 300
    .line 301
    new-instance v6, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;

    .line 302
    .line 303
    move-object/from16 v17, v4

    .line 304
    .line 305
    move-object/from16 v20, v5

    .line 306
    .line 307
    invoke-direct/range {v6 .. v20}, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object v6

    .line 311
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
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackText:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editCount:Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->editingInsight:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->readingInsight:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeSpent:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->all:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->timeline:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->donations:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v10, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->games:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v11, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->impact:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v12, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->state:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData;->group:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v13, Lorg/wikipedia/analytics/eventplatform/ActivityTabEvent$ActionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 35
    .line 36
    move-object/from16 v14, p1

    .line 37
    .line 38
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    if-eqz v15, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    .line 51
    :goto_0
    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 52
    .line 53
    move-object/from16 p0, v1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v14, v13, v1, v15, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object/from16 p0, v1

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    if-eqz v12, :cond_3

    .line 70
    .line 71
    :goto_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {v14, v13, v1, v0, v12}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    if-eqz v11, :cond_5

    .line 85
    .line 86
    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-virtual {v14, v13, v1, v0, v11}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    if-eqz v10, :cond_7

    .line 100
    .line 101
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    invoke-virtual {v14, v13, v1, v0, v10}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_8
    if-eqz v9, :cond_9

    .line 115
    .line 116
    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 117
    .line 118
    const/4 v1, 0x4

    .line 119
    invoke-virtual {v14, v13, v1, v0, v9}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_9
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_a
    if-eqz v8, :cond_b

    .line 130
    .line 131
    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 132
    .line 133
    const/4 v1, 0x5

    .line 134
    invoke-virtual {v14, v13, v1, v0, v8}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_b
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_c

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_c
    if-eqz v7, :cond_d

    .line 145
    .line 146
    :goto_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 147
    .line 148
    const/4 v1, 0x6

    .line 149
    invoke-virtual {v14, v13, v1, v0, v7}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_d
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_e

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_e
    if-eqz v6, :cond_f

    .line 160
    .line 161
    :goto_8
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 162
    .line 163
    const/4 v1, 0x7

    .line 164
    invoke-virtual {v14, v13, v1, v0, v6}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_f
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_10

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_10
    if-eqz v5, :cond_11

    .line 175
    .line 176
    :goto_9
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 177
    .line 178
    const/16 v1, 0x8

    .line 179
    .line 180
    invoke-virtual {v14, v13, v1, v0, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_11
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_12

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_12
    if-eqz v4, :cond_13

    .line 191
    .line 192
    :goto_a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 193
    .line 194
    const/16 v1, 0x9

    .line 195
    .line 196
    invoke-virtual {v14, v13, v1, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_13
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_14

    .line 204
    .line 205
    goto :goto_b

    .line 206
    :cond_14
    if-eqz v3, :cond_15

    .line 207
    .line 208
    :goto_b
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 209
    .line 210
    const/16 v1, 0xa

    .line 211
    .line 212
    invoke-virtual {v14, v13, v1, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_15
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_16

    .line 220
    .line 221
    goto :goto_c

    .line 222
    :cond_16
    if-eqz v2, :cond_17

    .line 223
    .line 224
    :goto_c
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 225
    .line 226
    const/16 v1, 0xb

    .line 227
    .line 228
    invoke-virtual {v14, v13, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_17
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_18

    .line 236
    .line 237
    goto :goto_d

    .line 238
    :cond_18
    if-eqz p0, :cond_19

    .line 239
    .line 240
    :goto_d
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 241
    .line 242
    const/16 v1, 0xc

    .line 243
    .line 244
    move-object/from16 v2, p0

    .line 245
    .line 246
    invoke-virtual {v14, v13, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_19
    invoke-virtual {v14, v13}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 250
    .line 251
    .line 252
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
