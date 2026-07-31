.class public final synthetic Lorg/wikipedia/gallery/GalleryItem$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/gallery/GalleryItem$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/GalleryItem$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/GalleryItem$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.gallery.GalleryItem"

    .line 11
    .line 12
    const/16 v3, 0x10

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "section_id"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "wb_entity_id"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "audio_type"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "structured"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "file_page"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "duration"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "type"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "thumbnail"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "original"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "description"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "caption"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v0, "sources"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v0, "credit"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "titles"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "artist"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string v0, "license"

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    sput-object v1, Lorg/wikipedia/gallery/GalleryItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 11

    .line 1
    sget-object p0, Lorg/wikipedia/gallery/GalleryItem;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    sget-object v0, Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0xb

    .line 16
    .line 17
    aget-object p0, p0, v3

    .line 18
    .line 19
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;

    .line 34
    .line 35
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sget-object v6, Lorg/wikipedia/gallery/ArtistInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ArtistInfo$$serializer;

    .line 40
    .line 41
    invoke-static {v6}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v7, Lorg/wikipedia/gallery/ImageLicense$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageLicense$$serializer;

    .line 46
    .line 47
    invoke-static {v7}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/16 v8, 0x10

    .line 52
    .line 53
    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    .line 54
    .line 55
    sget-object v9, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    aput-object v9, v8, v10

    .line 59
    .line 60
    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 61
    .line 62
    const/4 v10, 0x1

    .line 63
    aput-object v9, v8, v10

    .line 64
    .line 65
    const/4 v10, 0x2

    .line 66
    aput-object v9, v8, v10

    .line 67
    .line 68
    const/4 v10, 0x3

    .line 69
    aput-object v0, v8, v10

    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    aput-object v9, v8, v0

    .line 73
    .line 74
    sget-object v0, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    .line 75
    .line 76
    const/4 v10, 0x5

    .line 77
    aput-object v0, v8, v10

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    aput-object v9, v8, v0

    .line 81
    .line 82
    sget-object v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 83
    .line 84
    const/4 v9, 0x7

    .line 85
    aput-object v0, v8, v9

    .line 86
    .line 87
    const/16 v9, 0x8

    .line 88
    .line 89
    aput-object v0, v8, v9

    .line 90
    .line 91
    const/16 v0, 0x9

    .line 92
    .line 93
    aput-object v1, v8, v0

    .line 94
    .line 95
    const/16 v0, 0xa

    .line 96
    .line 97
    aput-object v2, v8, v0

    .line 98
    .line 99
    aput-object p0, v8, v3

    .line 100
    .line 101
    const/16 p0, 0xc

    .line 102
    .line 103
    aput-object v4, v8, p0

    .line 104
    .line 105
    const/16 p0, 0xd

    .line 106
    .line 107
    aput-object v5, v8, p0

    .line 108
    .line 109
    const/16 p0, 0xe

    .line 110
    .line 111
    aput-object v6, v8, p0

    .line 112
    .line 113
    const/16 p0, 0xf

    .line 114
    .line 115
    aput-object v7, v8, p0

    .line 116
    .line 117
    return-object v8
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 27

    .line 1
    sget-object v0, Lorg/wikipedia/gallery/GalleryItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/gallery/GalleryItem;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-object/from16 v19, v2

    .line 14
    .line 15
    move-wide v15, v6

    .line 16
    const/16 p0, 0x0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    const/16 v20, 0x1

    .line 34
    .line 35
    const/16 v21, 0x0

    .line 36
    .line 37
    const/16 v22, 0x0

    .line 38
    .line 39
    :goto_0
    if-eqz v20, :cond_0

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 42
    .line 43
    .line 44
    move-result v23

    .line 45
    packed-switch v23, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    invoke-static/range {v23 .. v23}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_0
    move-object/from16 v23, v12

    .line 53
    .line 54
    sget-object v12, Lorg/wikipedia/gallery/ImageLicense$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageLicense$$serializer;

    .line 55
    .line 56
    move-object/from16 v24, v14

    .line 57
    .line 58
    const/16 v14, 0xf

    .line 59
    .line 60
    invoke-interface {v1, v0, v14, v12, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Lorg/wikipedia/gallery/ImageLicense;

    .line 65
    .line 66
    const v12, 0x8000

    .line 67
    .line 68
    .line 69
    or-int/2addr v9, v12

    .line 70
    :goto_1
    move-object/from16 v12, v23

    .line 71
    .line 72
    :goto_2
    move-object/from16 v14, v24

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_1
    move-object/from16 v23, v12

    .line 76
    .line 77
    move-object/from16 v24, v14

    .line 78
    .line 79
    sget-object v12, Lorg/wikipedia/gallery/ArtistInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ArtistInfo$$serializer;

    .line 80
    .line 81
    const/16 v14, 0xe

    .line 82
    .line 83
    invoke-interface {v1, v0, v14, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Lorg/wikipedia/gallery/ArtistInfo;

    .line 88
    .line 89
    or-int/lit16 v9, v9, 0x4000

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_2
    move-object/from16 v23, v12

    .line 93
    .line 94
    move-object/from16 v24, v14

    .line 95
    .line 96
    sget-object v12, Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;

    .line 97
    .line 98
    const/16 v14, 0xd

    .line 99
    .line 100
    invoke-interface {v1, v0, v14, v12, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 105
    .line 106
    or-int/lit16 v9, v9, 0x2000

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_3
    move-object/from16 v23, v12

    .line 110
    .line 111
    move-object/from16 v24, v14

    .line 112
    .line 113
    sget-object v12, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 114
    .line 115
    const/16 v14, 0xc

    .line 116
    .line 117
    invoke-interface {v1, v0, v14, v12, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lorg/wikipedia/gallery/TextInfo;

    .line 122
    .line 123
    or-int/lit16 v9, v9, 0x1000

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    move-object/from16 v23, v12

    .line 127
    .line 128
    move-object/from16 v24, v14

    .line 129
    .line 130
    const/16 v12, 0xb

    .line 131
    .line 132
    aget-object v14, v19, v12

    .line 133
    .line 134
    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    check-cast v14, Lkotlinx/serialization/KSerializer;

    .line 139
    .line 140
    invoke-interface {v1, v0, v12, v14, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/util/List;

    .line 145
    .line 146
    or-int/lit16 v9, v9, 0x800

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_5
    move-object/from16 v23, v12

    .line 150
    .line 151
    move-object/from16 v24, v14

    .line 152
    .line 153
    sget-object v12, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 154
    .line 155
    const/16 v14, 0xa

    .line 156
    .line 157
    invoke-interface {v1, v0, v14, v12, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lorg/wikipedia/gallery/TextInfo;

    .line 162
    .line 163
    or-int/lit16 v9, v9, 0x400

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_6
    move-object/from16 v23, v12

    .line 167
    .line 168
    move-object/from16 v24, v14

    .line 169
    .line 170
    sget-object v12, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 171
    .line 172
    const/16 v14, 0x9

    .line 173
    .line 174
    invoke-interface {v1, v0, v14, v12, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Lorg/wikipedia/gallery/TextInfo;

    .line 179
    .line 180
    or-int/lit16 v9, v9, 0x200

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_7
    move-object/from16 v23, v12

    .line 184
    .line 185
    move-object/from16 v24, v14

    .line 186
    .line 187
    sget-object v12, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 188
    .line 189
    const/16 v14, 0x8

    .line 190
    .line 191
    invoke-interface {v1, v0, v14, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    check-cast v8, Lorg/wikipedia/gallery/ImageInfo;

    .line 196
    .line 197
    or-int/lit16 v9, v9, 0x100

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_8
    move-object/from16 v23, v12

    .line 202
    .line 203
    move-object/from16 v24, v14

    .line 204
    .line 205
    sget-object v12, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 206
    .line 207
    const/4 v14, 0x7

    .line 208
    invoke-interface {v1, v0, v14, v12, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lorg/wikipedia/gallery/ImageInfo;

    .line 213
    .line 214
    or-int/lit16 v9, v9, 0x80

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :pswitch_9
    move-object/from16 v23, v12

    .line 219
    .line 220
    move-object/from16 v24, v14

    .line 221
    .line 222
    const/4 v12, 0x6

    .line 223
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    or-int/lit8 v9, v9, 0x40

    .line 228
    .line 229
    :goto_3
    move-object/from16 v12, v23

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_a
    move-object/from16 v23, v12

    .line 234
    .line 235
    move-object/from16 v24, v14

    .line 236
    .line 237
    const/4 v12, 0x5

    .line 238
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    .line 239
    .line 240
    .line 241
    move-result-wide v15

    .line 242
    or-int/lit8 v9, v9, 0x20

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :pswitch_b
    move-object/from16 v23, v12

    .line 246
    .line 247
    const/4 v12, 0x4

    .line 248
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    or-int/lit8 v9, v9, 0x10

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :pswitch_c
    move-object/from16 v23, v12

    .line 256
    .line 257
    move-object/from16 v24, v14

    .line 258
    .line 259
    sget-object v12, Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;

    .line 260
    .line 261
    const/4 v14, 0x3

    .line 262
    invoke-interface {v1, v0, v14, v12, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    move-object v13, v12

    .line 267
    check-cast v13, Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 268
    .line 269
    or-int/lit8 v9, v9, 0x8

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :pswitch_d
    move-object/from16 v24, v14

    .line 274
    .line 275
    const/4 v12, 0x2

    .line 276
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    or-int/lit8 v9, v9, 0x4

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :pswitch_e
    move-object/from16 v23, v12

    .line 285
    .line 286
    move-object/from16 v24, v14

    .line 287
    .line 288
    const/4 v12, 0x1

    .line 289
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v22

    .line 293
    or-int/lit8 v9, v9, 0x2

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :pswitch_f
    move-object/from16 v23, v12

    .line 297
    .line 298
    move-object/from16 v24, v14

    .line 299
    .line 300
    const/4 v12, 0x1

    .line 301
    const/4 v14, 0x0

    .line 302
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 303
    .line 304
    .line 305
    move-result v21

    .line 306
    or-int/lit8 v9, v9, 0x1

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :pswitch_10
    move-object/from16 v23, v12

    .line 311
    .line 312
    move-object/from16 v24, v14

    .line 313
    .line 314
    const/4 v14, 0x0

    .line 315
    move/from16 v20, v14

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :cond_0
    move-object/from16 v23, v12

    .line 320
    .line 321
    move-object/from16 v24, v14

    .line 322
    .line 323
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v19, v8

    .line 327
    .line 328
    new-instance v8, Lorg/wikipedia/gallery/GalleryItem;

    .line 329
    .line 330
    move-object/from16 v20, v5

    .line 331
    .line 332
    move-object/from16 v18, v7

    .line 333
    .line 334
    move-object/from16 v25, v10

    .line 335
    .line 336
    move-object/from16 v26, v11

    .line 337
    .line 338
    move/from16 v10, v21

    .line 339
    .line 340
    move-object/from16 v11, v22

    .line 341
    .line 342
    move-object/from16 v23, v2

    .line 343
    .line 344
    move-object/from16 v22, v3

    .line 345
    .line 346
    move-object/from16 v21, v4

    .line 347
    .line 348
    move-object/from16 v24, v6

    .line 349
    .line 350
    invoke-direct/range {v8 .. v26}, Lorg/wikipedia/gallery/GalleryItem;-><init>(IILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/lang/String;DLjava/lang/String;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/TextInfo;Ljava/util/List;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/GalleryItem$Titles;Lorg/wikipedia/gallery/ArtistInfo;Lorg/wikipedia/gallery/ImageLicense;)V

    .line 351
    .line 352
    .line 353
    return-object v8

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/gallery/GalleryItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/wikipedia/gallery/GalleryItem;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/gallery/GalleryItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2, p1, p0}, Lorg/wikipedia/gallery/GalleryItem;->write$Self(Lorg/wikipedia/gallery/GalleryItem;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 16
    .line 17
    .line 18
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
