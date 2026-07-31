.class public final synthetic Lorg/wikipedia/dataclient/page/PageSummary$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.page.PageSummary"

    .line 11
    .line 12
    const/16 v3, 0x12

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
    const-string v0, "titles"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "lang"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "thumbnail"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "extract"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "description"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "originalimage"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "wikibase_item"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "extract_html"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "description_source"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "coordinates"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v0, "type"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v0, "pageid"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "revision"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "timestamp"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v0, "views"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string v0, "rank"

    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v0, "view_history"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    sput-object v1, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 13

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/page/PageSummary;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 16
    .line 17
    sget-object v3, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 18
    .line 19
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    sget-object v9, Lorg/wikipedia/json/LocationSerializer;->INSTANCE:Lorg/wikipedia/json/LocationSerializer;

    .line 44
    .line 45
    invoke-static {v9}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    const/16 v10, 0x11

    .line 50
    .line 51
    aget-object p0, p0, v10

    .line 52
    .line 53
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/16 v11, 0x12

    .line 64
    .line 65
    new-array v11, v11, [Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    aput-object v0, v11, v12

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    aput-object v1, v11, v0

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object v2, v11, v0

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    aput-object v4, v11, v0

    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    aput-object v5, v11, v0

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    aput-object v6, v11, v0

    .line 84
    .line 85
    const/4 v0, 0x6

    .line 86
    aput-object v3, v11, v0

    .line 87
    .line 88
    const/4 v0, 0x7

    .line 89
    aput-object v7, v11, v0

    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    aput-object v8, v11, v0

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    aput-object v2, v11, v0

    .line 98
    .line 99
    const/16 v0, 0xa

    .line 100
    .line 101
    aput-object v9, v11, v0

    .line 102
    .line 103
    const/16 v0, 0xb

    .line 104
    .line 105
    aput-object v2, v11, v0

    .line 106
    .line 107
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 108
    .line 109
    const/16 v1, 0xc

    .line 110
    .line 111
    aput-object v0, v11, v1

    .line 112
    .line 113
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 114
    .line 115
    const/16 v1, 0xd

    .line 116
    .line 117
    aput-object v0, v11, v1

    .line 118
    .line 119
    const/16 v1, 0xe

    .line 120
    .line 121
    aput-object v2, v11, v1

    .line 122
    .line 123
    const/16 v1, 0xf

    .line 124
    .line 125
    aput-object v0, v11, v1

    .line 126
    .line 127
    const/16 v1, 0x10

    .line 128
    .line 129
    aput-object v0, v11, v1

    .line 130
    .line 131
    aput-object p0, v11, v10

    .line 132
    .line 133
    return-object v11
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 31

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/page/PageSummary;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-wide/from16 v23, v6

    .line 14
    .line 15
    move-wide/from16 v26, v23

    .line 16
    .line 17
    move-wide/from16 v28, v26

    .line 18
    .line 19
    const/16 p0, 0x0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v14, 0x0

    .line 33
    const/4 v15, 0x0

    .line 34
    const/16 v19, 0x0

    .line 35
    .line 36
    const/16 v21, 0x0

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v25, 0x0

    .line 41
    .line 42
    :goto_0
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 45
    .line 46
    .line 47
    move-result v17

    .line 48
    packed-switch v17, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_0
    move-object/from16 v17, v2

    .line 56
    .line 57
    const/16 v2, 0x11

    .line 58
    .line 59
    aget-object v18, v17, v2

    .line 60
    .line 61
    invoke-interface/range {v18 .. v18}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v18

    .line 65
    move/from16 v20, v6

    .line 66
    .line 67
    move-object/from16 v6, v18

    .line 68
    .line 69
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 70
    .line 71
    invoke-interface {v1, v0, v2, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Ljava/util/List;

    .line 77
    .line 78
    const/high16 v2, 0x20000

    .line 79
    .line 80
    or-int/2addr v9, v2

    .line 81
    :goto_1
    move-object/from16 v2, v17

    .line 82
    .line 83
    move/from16 v6, v20

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_1
    move-object/from16 v17, v2

    .line 87
    .line 88
    move/from16 v20, v6

    .line 89
    .line 90
    const/16 v2, 0x10

    .line 91
    .line 92
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v28

    .line 96
    const/high16 v2, 0x10000

    .line 97
    .line 98
    :goto_2
    or-int/2addr v9, v2

    .line 99
    :goto_3
    move-object/from16 v2, v17

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_2
    move-object/from16 v17, v2

    .line 103
    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    const/16 v2, 0xf

    .line 107
    .line 108
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v26

    .line 112
    const v2, 0x8000

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_3
    move-object/from16 v17, v2

    .line 117
    .line 118
    move/from16 v20, v6

    .line 119
    .line 120
    const/16 v2, 0xe

    .line 121
    .line 122
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v25

    .line 126
    or-int/lit16 v9, v9, 0x4000

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_4
    move-object/from16 v17, v2

    .line 130
    .line 131
    move/from16 v20, v6

    .line 132
    .line 133
    const/16 v2, 0xd

    .line 134
    .line 135
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 136
    .line 137
    .line 138
    move-result-wide v23

    .line 139
    or-int/lit16 v9, v9, 0x2000

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :pswitch_5
    move-object/from16 v17, v2

    .line 143
    .line 144
    move/from16 v20, v6

    .line 145
    .line 146
    const/16 v2, 0xc

    .line 147
    .line 148
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 149
    .line 150
    .line 151
    move-result v22

    .line 152
    or-int/lit16 v9, v9, 0x1000

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :pswitch_6
    move-object/from16 v17, v2

    .line 156
    .line 157
    move/from16 v20, v6

    .line 158
    .line 159
    const/16 v2, 0xb

    .line 160
    .line 161
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v21

    .line 165
    or-int/lit16 v9, v9, 0x800

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :pswitch_7
    move-object/from16 v17, v2

    .line 169
    .line 170
    move/from16 v20, v6

    .line 171
    .line 172
    sget-object v2, Lorg/wikipedia/json/LocationSerializer;->INSTANCE:Lorg/wikipedia/json/LocationSerializer;

    .line 173
    .line 174
    const/16 v6, 0xa

    .line 175
    .line 176
    invoke-interface {v1, v0, v6, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object v4, v2

    .line 181
    check-cast v4, Landroid/location/Location;

    .line 182
    .line 183
    or-int/lit16 v9, v9, 0x400

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_8
    move-object/from16 v17, v2

    .line 187
    .line 188
    move/from16 v20, v6

    .line 189
    .line 190
    const/16 v2, 0x9

    .line 191
    .line 192
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    or-int/lit16 v9, v9, 0x200

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_9
    move-object/from16 v17, v2

    .line 200
    .line 201
    move/from16 v20, v6

    .line 202
    .line 203
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 204
    .line 205
    const/16 v6, 0x8

    .line 206
    .line 207
    invoke-interface {v1, v0, v6, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    move-object v5, v2

    .line 212
    check-cast v5, Ljava/lang/String;

    .line 213
    .line 214
    or-int/lit16 v9, v9, 0x100

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :pswitch_a
    move-object/from16 v17, v2

    .line 219
    .line 220
    move/from16 v20, v6

    .line 221
    .line 222
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 223
    .line 224
    const/4 v6, 0x7

    .line 225
    invoke-interface {v1, v0, v6, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    move-object v8, v2

    .line 230
    check-cast v8, Ljava/lang/String;

    .line 231
    .line 232
    or-int/lit16 v9, v9, 0x80

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_b
    move-object/from16 v17, v2

    .line 237
    .line 238
    move/from16 v20, v6

    .line 239
    .line 240
    sget-object v2, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 241
    .line 242
    const/4 v6, 0x6

    .line 243
    invoke-interface {v1, v0, v6, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    move-object v7, v2

    .line 248
    check-cast v7, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 249
    .line 250
    or-int/lit8 v9, v9, 0x40

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :pswitch_c
    move-object/from16 v17, v2

    .line 255
    .line 256
    move/from16 v20, v6

    .line 257
    .line 258
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 259
    .line 260
    const/4 v6, 0x5

    .line 261
    invoke-interface {v1, v0, v6, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object v15, v2

    .line 266
    check-cast v15, Ljava/lang/String;

    .line 267
    .line 268
    or-int/lit8 v9, v9, 0x20

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :pswitch_d
    move-object/from16 v17, v2

    .line 273
    .line 274
    move/from16 v20, v6

    .line 275
    .line 276
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 277
    .line 278
    const/4 v6, 0x4

    .line 279
    invoke-interface {v1, v0, v6, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    move-object v14, v2

    .line 284
    check-cast v14, Ljava/lang/String;

    .line 285
    .line 286
    or-int/lit8 v9, v9, 0x10

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :pswitch_e
    move-object/from16 v17, v2

    .line 291
    .line 292
    move/from16 v20, v6

    .line 293
    .line 294
    sget-object v2, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 295
    .line 296
    const/4 v6, 0x3

    .line 297
    invoke-interface {v1, v0, v6, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    move-object v13, v2

    .line 302
    check-cast v13, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 303
    .line 304
    or-int/lit8 v9, v9, 0x8

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :pswitch_f
    move-object/from16 v17, v2

    .line 309
    .line 310
    move/from16 v20, v6

    .line 311
    .line 312
    const/4 v2, 0x2

    .line 313
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    or-int/lit8 v9, v9, 0x4

    .line 318
    .line 319
    goto/16 :goto_3

    .line 320
    .line 321
    :pswitch_10
    move-object/from16 v17, v2

    .line 322
    .line 323
    move/from16 v20, v6

    .line 324
    .line 325
    sget-object v2, Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;

    .line 326
    .line 327
    const/4 v6, 0x1

    .line 328
    invoke-interface {v1, v0, v6, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    move-object v11, v2

    .line 333
    check-cast v11, Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 334
    .line 335
    or-int/lit8 v9, v9, 0x2

    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :pswitch_11
    move-object/from16 v17, v2

    .line 340
    .line 341
    move/from16 v20, v6

    .line 342
    .line 343
    const/4 v6, 0x1

    .line 344
    sget-object v2, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;

    .line 345
    .line 346
    const/4 v6, 0x0

    .line 347
    invoke-interface {v1, v0, v6, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    move-object v10, v2

    .line 352
    check-cast v10, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 353
    .line 354
    or-int/lit8 v9, v9, 0x1

    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :pswitch_12
    const/4 v6, 0x0

    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 362
    .line 363
    .line 364
    move-object/from16 v17, v8

    .line 365
    .line 366
    new-instance v8, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 367
    .line 368
    move-object/from16 v30, v3

    .line 369
    .line 370
    move-object/from16 v20, v4

    .line 371
    .line 372
    move-object/from16 v18, v5

    .line 373
    .line 374
    move-object/from16 v16, v7

    .line 375
    .line 376
    invoke-direct/range {v8 .. v30}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(ILorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;IJLjava/lang/String;JJLjava/util/List;)V

    .line 377
    .line 378
    .line 379
    return-object v8

    .line 380
    nop

    .line 381
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->viewHistory:Ljava/util/List;

    .line 9
    .line 10
    iget-wide v2, v0, Lorg/wikipedia/dataclient/page/PageSummary;->rank:J

    .line 11
    .line 12
    iget-wide v4, v0, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    .line 13
    .line 14
    iget-object v6, v0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v7, v0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    .line 17
    .line 18
    iget v9, v0, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 19
    .line 20
    iget-object v10, v0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v11, v0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 23
    .line 24
    iget-object v12, v0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v13, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v14, v0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v15, v0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 31
    .line 32
    move-object/from16 p0, v1

    .line 33
    .line 34
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 35
    .line 36
    move-wide/from16 v16, v2

    .line 37
    .line 38
    iget-object v2, v0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 39
    .line 40
    iget-object v3, v0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    .line 41
    .line 42
    move-wide/from16 v18, v4

    .line 43
    .line 44
    iget-object v4, v0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 45
    .line 46
    iget-object v5, v0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 47
    .line 48
    move-object/from16 p2, v6

    .line 49
    .line 50
    sget-object v6, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 51
    .line 52
    move-wide/from16 v20, v7

    .line 53
    .line 54
    move-object/from16 v7, p1

    .line 55
    .line 56
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    sget-object v8, Lorg/wikipedia/dataclient/page/PageSummary;->$childSerializers:[Lkotlin/Lazy;

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 63
    .line 64
    .line 65
    move-result v22

    .line 66
    if-eqz v22, :cond_0

    .line 67
    .line 68
    :goto_0
    move-object/from16 p1, v8

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    if-eqz v5, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_1
    sget-object v8, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer$$serializer;

    .line 75
    .line 76
    move/from16 v22, v9

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    invoke-virtual {v7, v6, v9, v8, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move-object/from16 p1, v8

    .line 84
    .line 85
    move/from16 v22, v9

    .line 86
    .line 87
    :goto_2
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    if-eqz v4, :cond_3

    .line 95
    .line 96
    :goto_3
    sget-object v5, Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Titles$$serializer;

    .line 97
    .line 98
    const/4 v8, 0x1

    .line 99
    invoke-virtual {v7, v6, v8, v5, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const-string v5, ""

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_5

    .line 116
    .line 117
    :goto_4
    const/4 v4, 0x2

    .line 118
    invoke-virtual {v7, v6, v4, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_6
    if-eqz v2, :cond_7

    .line 129
    .line 130
    :goto_5
    sget-object v3, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 131
    .line 132
    const/4 v4, 0x3

    .line 133
    invoke-virtual {v7, v6, v4, v3, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_8
    if-eqz v1, :cond_9

    .line 144
    .line 145
    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    invoke-virtual {v7, v6, v3, v2, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_a
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 163
    .line 164
    iget-object v0, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 165
    .line 166
    const/4 v2, 0x5

    .line 167
    invoke-virtual {v7, v6, v2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_c

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_c
    if-eqz v15, :cond_d

    .line 178
    .line 179
    :goto_8
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 180
    .line 181
    const/4 v1, 0x6

    .line 182
    invoke-virtual {v7, v6, v1, v0, v15}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_e

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_e
    if-eqz v14, :cond_f

    .line 193
    .line 194
    :goto_9
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 195
    .line 196
    const/4 v1, 0x7

    .line 197
    invoke-virtual {v7, v6, v1, v0, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_10

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_10
    if-eqz v13, :cond_11

    .line 208
    .line 209
    :goto_a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 210
    .line 211
    const/16 v1, 0x8

    .line 212
    .line 213
    invoke-virtual {v7, v6, v1, v0, v13}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_11
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_12

    .line 221
    .line 222
    goto :goto_b

    .line 223
    :cond_12
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_13

    .line 228
    .line 229
    :goto_b
    const/16 v0, 0x9

    .line 230
    .line 231
    invoke-virtual {v7, v6, v0, v12}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_13
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_14

    .line 239
    .line 240
    goto :goto_c

    .line 241
    :cond_14
    if-eqz v11, :cond_15

    .line 242
    .line 243
    :goto_c
    sget-object v0, Lorg/wikipedia/json/LocationSerializer;->INSTANCE:Lorg/wikipedia/json/LocationSerializer;

    .line 244
    .line 245
    const/16 v1, 0xa

    .line 246
    .line 247
    invoke-virtual {v7, v6, v1, v0, v11}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_15
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_16

    .line 255
    .line 256
    goto :goto_d

    .line 257
    :cond_16
    const-string v0, "standard"

    .line 258
    .line 259
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_17

    .line 264
    .line 265
    :goto_d
    const/16 v0, 0xb

    .line 266
    .line 267
    invoke-virtual {v7, v6, v0, v10}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_17
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_18

    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_18
    if-eqz v22, :cond_19

    .line 278
    .line 279
    :goto_e
    const/16 v0, 0xc

    .line 280
    .line 281
    move/from16 v1, v22

    .line 282
    .line 283
    invoke-virtual {v7, v0, v1, v6}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 284
    .line 285
    .line 286
    :cond_19
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const-wide/16 v1, 0x0

    .line 291
    .line 292
    if-eqz v0, :cond_1a

    .line 293
    .line 294
    goto :goto_f

    .line 295
    :cond_1a
    cmp-long v0, v20, v1

    .line 296
    .line 297
    if-eqz v0, :cond_1b

    .line 298
    .line 299
    :goto_f
    const/16 v0, 0xd

    .line 300
    .line 301
    move-wide/from16 v3, v20

    .line 302
    .line 303
    invoke-virtual {v7, v6, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 304
    .line 305
    .line 306
    :cond_1b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_1c

    .line 311
    .line 312
    move-object/from16 v0, p2

    .line 313
    .line 314
    goto :goto_10

    .line 315
    :cond_1c
    move-object/from16 v0, p2

    .line 316
    .line 317
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-nez v3, :cond_1d

    .line 322
    .line 323
    :goto_10
    const/16 v3, 0xe

    .line 324
    .line 325
    invoke-virtual {v7, v6, v3, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_1d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_1e

    .line 333
    .line 334
    goto :goto_11

    .line 335
    :cond_1e
    cmp-long v0, v18, v1

    .line 336
    .line 337
    if-eqz v0, :cond_1f

    .line 338
    .line 339
    :goto_11
    const/16 v0, 0xf

    .line 340
    .line 341
    move-wide/from16 v3, v18

    .line 342
    .line 343
    invoke-virtual {v7, v6, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 344
    .line 345
    .line 346
    :cond_1f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_20

    .line 351
    .line 352
    goto :goto_12

    .line 353
    :cond_20
    cmp-long v0, v16, v1

    .line 354
    .line 355
    if-eqz v0, :cond_21

    .line 356
    .line 357
    :goto_12
    const/16 v0, 0x10

    .line 358
    .line 359
    move-wide/from16 v1, v16

    .line 360
    .line 361
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 362
    .line 363
    .line 364
    :cond_21
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_22

    .line 369
    .line 370
    goto :goto_13

    .line 371
    :cond_22
    if-eqz p0, :cond_23

    .line 372
    .line 373
    :goto_13
    const/16 v0, 0x11

    .line 374
    .line 375
    aget-object v1, p1, v0

    .line 376
    .line 377
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 382
    .line 383
    move-object/from16 v2, p0

    .line 384
    .line 385
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_23
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 389
    .line 390
    .line 391
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
