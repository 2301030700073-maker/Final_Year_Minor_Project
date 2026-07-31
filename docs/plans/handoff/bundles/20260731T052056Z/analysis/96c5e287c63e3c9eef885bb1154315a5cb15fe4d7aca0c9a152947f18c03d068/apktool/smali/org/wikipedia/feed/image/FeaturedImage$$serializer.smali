.class public final synthetic Lorg/wikipedia/feed/image/FeaturedImage$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/feed/image/FeaturedImage$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;->INSTANCE:Lorg/wikipedia/feed/image/FeaturedImage$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.feed.image.FeaturedImage"

    .line 11
    .line 12
    const/16 v3, 0x12

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
    const-string v0, "title"

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string v0, "image"

    .line 106
    .line 107
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    sput-object v1, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 11

    .line 1
    sget-object p0, Lorg/wikipedia/feed/image/FeaturedImage;->$childSerializers:[Lkotlin/Lazy;

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
    const/16 v8, 0x12

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
    const/4 v10, 0x7

    .line 85
    aput-object v0, v8, v10

    .line 86
    .line 87
    const/16 v10, 0x8

    .line 88
    .line 89
    aput-object v0, v8, v10

    .line 90
    .line 91
    const/16 v10, 0x9

    .line 92
    .line 93
    aput-object v1, v8, v10

    .line 94
    .line 95
    const/16 v1, 0xa

    .line 96
    .line 97
    aput-object v2, v8, v1

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
    const/16 p0, 0x10

    .line 118
    .line 119
    aput-object v9, v8, p0

    .line 120
    .line 121
    const/16 p0, 0x11

    .line 122
    .line 123
    aput-object v0, v8, p0

    .line 124
    .line 125
    return-object v8
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 29

    .line 1
    sget-object v0, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/feed/image/FeaturedImage;->$childSerializers:[Lkotlin/Lazy;

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
    const/16 v23, 0x0

    .line 40
    .line 41
    const/16 v27, 0x0

    .line 42
    .line 43
    :goto_0
    if-eqz v20, :cond_0

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
    move-object/from16 v24, v14

    .line 57
    .line 58
    sget-object v14, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 59
    .line 60
    move-wide/from16 v25, v15

    .line 61
    .line 62
    const/16 v15, 0x11

    .line 63
    .line 64
    invoke-interface {v1, v0, v15, v14, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    check-cast v12, Lorg/wikipedia/gallery/ImageInfo;

    .line 69
    .line 70
    const/high16 v14, 0x20000

    .line 71
    .line 72
    :goto_1
    or-int/2addr v9, v14

    .line 73
    :goto_2
    move-object/from16 v14, v24

    .line 74
    .line 75
    :goto_3
    move-wide/from16 v15, v25

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_1
    move-object/from16 v24, v14

    .line 79
    .line 80
    move-wide/from16 v25, v15

    .line 81
    .line 82
    const/16 v14, 0x10

    .line 83
    .line 84
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v27

    .line 88
    const/high16 v14, 0x10000

    .line 89
    .line 90
    or-int/2addr v9, v14

    .line 91
    :goto_4
    move-object/from16 v14, v24

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_2
    move-object/from16 v24, v14

    .line 95
    .line 96
    move-wide/from16 v25, v15

    .line 97
    .line 98
    sget-object v14, Lorg/wikipedia/gallery/ImageLicense$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageLicense$$serializer;

    .line 99
    .line 100
    const/16 v15, 0xf

    .line 101
    .line 102
    invoke-interface {v1, v0, v15, v14, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    check-cast v11, Lorg/wikipedia/gallery/ImageLicense;

    .line 107
    .line 108
    const v14, 0x8000

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_3
    move-object/from16 v24, v14

    .line 113
    .line 114
    move-wide/from16 v25, v15

    .line 115
    .line 116
    sget-object v14, Lorg/wikipedia/gallery/ArtistInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ArtistInfo$$serializer;

    .line 117
    .line 118
    const/16 v15, 0xe

    .line 119
    .line 120
    invoke-interface {v1, v0, v15, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Lorg/wikipedia/gallery/ArtistInfo;

    .line 125
    .line 126
    or-int/lit16 v9, v9, 0x4000

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_4
    move-object/from16 v24, v14

    .line 130
    .line 131
    move-wide/from16 v25, v15

    .line 132
    .line 133
    sget-object v14, Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;

    .line 134
    .line 135
    const/16 v15, 0xd

    .line 136
    .line 137
    invoke-interface {v1, v0, v15, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 142
    .line 143
    or-int/lit16 v9, v9, 0x2000

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_5
    move-object/from16 v24, v14

    .line 147
    .line 148
    move-wide/from16 v25, v15

    .line 149
    .line 150
    sget-object v14, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 151
    .line 152
    const/16 v15, 0xc

    .line 153
    .line 154
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lorg/wikipedia/gallery/TextInfo;

    .line 159
    .line 160
    or-int/lit16 v9, v9, 0x1000

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :pswitch_6
    move-object/from16 v24, v14

    .line 164
    .line 165
    move-wide/from16 v25, v15

    .line 166
    .line 167
    const/16 v14, 0xb

    .line 168
    .line 169
    aget-object v15, v19, v14

    .line 170
    .line 171
    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    check-cast v15, Lkotlinx/serialization/KSerializer;

    .line 176
    .line 177
    invoke-interface {v1, v0, v14, v15, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/util/List;

    .line 182
    .line 183
    or-int/lit16 v9, v9, 0x800

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :pswitch_7
    move-object/from16 v24, v14

    .line 187
    .line 188
    move-wide/from16 v25, v15

    .line 189
    .line 190
    sget-object v14, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 191
    .line 192
    const/16 v15, 0xa

    .line 193
    .line 194
    invoke-interface {v1, v0, v15, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lorg/wikipedia/gallery/TextInfo;

    .line 199
    .line 200
    or-int/lit16 v9, v9, 0x400

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_8
    move-object/from16 v24, v14

    .line 205
    .line 206
    move-wide/from16 v25, v15

    .line 207
    .line 208
    sget-object v14, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 209
    .line 210
    const/16 v15, 0x9

    .line 211
    .line 212
    invoke-interface {v1, v0, v15, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Lorg/wikipedia/gallery/TextInfo;

    .line 217
    .line 218
    or-int/lit16 v9, v9, 0x200

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_9
    move-object/from16 v24, v14

    .line 223
    .line 224
    move-wide/from16 v25, v15

    .line 225
    .line 226
    sget-object v14, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 227
    .line 228
    const/16 v15, 0x8

    .line 229
    .line 230
    invoke-interface {v1, v0, v15, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    check-cast v8, Lorg/wikipedia/gallery/ImageInfo;

    .line 235
    .line 236
    or-int/lit16 v9, v9, 0x100

    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :pswitch_a
    move-object/from16 v24, v14

    .line 241
    .line 242
    move-wide/from16 v25, v15

    .line 243
    .line 244
    sget-object v14, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 245
    .line 246
    const/4 v15, 0x7

    .line 247
    invoke-interface {v1, v0, v15, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Lorg/wikipedia/gallery/ImageInfo;

    .line 252
    .line 253
    or-int/lit16 v9, v9, 0x80

    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :pswitch_b
    move-object/from16 v24, v14

    .line 258
    .line 259
    move-wide/from16 v25, v15

    .line 260
    .line 261
    const/4 v14, 0x6

    .line 262
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v17

    .line 266
    or-int/lit8 v9, v9, 0x40

    .line 267
    .line 268
    goto/16 :goto_4

    .line 269
    .line 270
    :pswitch_c
    move-object/from16 v24, v14

    .line 271
    .line 272
    const/4 v14, 0x5

    .line 273
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    .line 274
    .line 275
    .line 276
    move-result-wide v15

    .line 277
    or-int/lit8 v9, v9, 0x20

    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :pswitch_d
    move-wide/from16 v25, v15

    .line 282
    .line 283
    const/4 v14, 0x4

    .line 284
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    or-int/lit8 v9, v9, 0x10

    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :pswitch_e
    move-object/from16 v24, v14

    .line 293
    .line 294
    move-wide/from16 v25, v15

    .line 295
    .line 296
    sget-object v14, Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;

    .line 297
    .line 298
    const/4 v15, 0x3

    .line 299
    invoke-interface {v1, v0, v15, v14, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    check-cast v13, Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 304
    .line 305
    or-int/lit8 v9, v9, 0x8

    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :pswitch_f
    move-object/from16 v24, v14

    .line 310
    .line 311
    move-wide/from16 v25, v15

    .line 312
    .line 313
    const/4 v14, 0x2

    .line 314
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v23

    .line 318
    or-int/lit8 v9, v9, 0x4

    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :pswitch_10
    move-object/from16 v24, v14

    .line 323
    .line 324
    move-wide/from16 v25, v15

    .line 325
    .line 326
    const/4 v14, 0x1

    .line 327
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v22

    .line 331
    or-int/lit8 v9, v9, 0x2

    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :pswitch_11
    move-object/from16 v24, v14

    .line 336
    .line 337
    move-wide/from16 v25, v15

    .line 338
    .line 339
    const/4 v14, 0x1

    .line 340
    const/4 v15, 0x0

    .line 341
    invoke-interface {v1, v0, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 342
    .line 343
    .line 344
    move-result v21

    .line 345
    or-int/lit8 v9, v9, 0x1

    .line 346
    .line 347
    goto/16 :goto_2

    .line 348
    .line 349
    :pswitch_12
    move-object/from16 v24, v14

    .line 350
    .line 351
    move-wide/from16 v25, v15

    .line 352
    .line 353
    const/4 v15, 0x0

    .line 354
    move/from16 v20, v15

    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :cond_0
    move-object/from16 v24, v14

    .line 359
    .line 360
    move-wide/from16 v25, v15

    .line 361
    .line 362
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v19, v8

    .line 366
    .line 367
    new-instance v8, Lorg/wikipedia/feed/image/FeaturedImage;

    .line 368
    .line 369
    move-object/from16 v20, v5

    .line 370
    .line 371
    move-object/from16 v18, v7

    .line 372
    .line 373
    move-object/from16 v28, v12

    .line 374
    .line 375
    move-object/from16 v12, v23

    .line 376
    .line 377
    move-object/from16 v23, v2

    .line 378
    .line 379
    move-object/from16 v24, v6

    .line 380
    .line 381
    move-object/from16 v25, v10

    .line 382
    .line 383
    move-object/from16 v26, v11

    .line 384
    .line 385
    move/from16 v10, v21

    .line 386
    .line 387
    move-object/from16 v11, v22

    .line 388
    .line 389
    move-object/from16 v22, v3

    .line 390
    .line 391
    move-object/from16 v21, v4

    .line 392
    .line 393
    invoke-direct/range {v8 .. v28}, Lorg/wikipedia/feed/image/FeaturedImage;-><init>(IILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/lang/String;DLjava/lang/String;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/TextInfo;Ljava/util/List;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/GalleryItem$Titles;Lorg/wikipedia/gallery/ArtistInfo;Lorg/wikipedia/gallery/ImageLicense;Ljava/lang/String;Lorg/wikipedia/gallery/ImageInfo;)V

    .line 394
    .line 395
    .line 396
    return-object v8

    .line 397
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
    sget-object p0, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lorg/wikipedia/feed/image/FeaturedImage;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikipedia/feed/image/FeaturedImage;->image:Lorg/wikipedia/gallery/ImageInfo;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/feed/image/FeaturedImage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p2, p1, v1}, Lorg/wikipedia/gallery/GalleryItem;->write$Self(Lorg/wikipedia/gallery/GalleryItem;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, ""

    .line 27
    .line 28
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    :goto_0
    const/16 p2, 0x10

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    new-instance p2, Lorg/wikipedia/gallery/ImageInfo;

    .line 47
    .line 48
    invoke-direct {p2}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    :goto_1
    sget-object p2, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 58
    .line 59
    const/16 v0, 0x11

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0, p2, p0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 65
    .line 66
    .line 67
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
