.class public Lorg/wikipedia/gallery/GalleryItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/gallery/GalleryItem$Companion;


# instance fields
.field public final artist:Lorg/wikipedia/gallery/ArtistInfo;

.field public final audioType:Ljava/lang/String;

.field public final caption:Lorg/wikipedia/gallery/TextInfo;

.field public final credit:Lorg/wikipedia/gallery/TextInfo;

.field public final description:Lorg/wikipedia/gallery/TextInfo;

.field public final duration:D

.field public final entityId:Ljava/lang/String;

.field public final filePage:Ljava/lang/String;

.field public final license:Lorg/wikipedia/gallery/ImageLicense;

.field public final original:Lorg/wikipedia/gallery/ImageInfo;

.field public final sectionId:I

.field public final sources:Ljava/util/List;

.field public final structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

.field public final thumbnail:Lorg/wikipedia/gallery/ImageInfo;

.field public titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/GalleryItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/GalleryItem;->Companion:Lorg/wikipedia/gallery/GalleryItem$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v4, v1, v3

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    aput-object v4, v1, v3

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    aput-object v4, v1, v3

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    aput-object v4, v1, v3

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    aput-object v4, v1, v3

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    aput-object v4, v1, v3

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    aput-object v4, v1, v3

    .line 46
    .line 47
    const/4 v3, 0x7

    .line 48
    aput-object v4, v1, v3

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    aput-object v4, v1, v3

    .line 53
    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    aput-object v4, v1, v3

    .line 57
    .line 58
    aput-object v4, v1, v2

    .line 59
    .line 60
    const/16 v2, 0xb

    .line 61
    .line 62
    aput-object v0, v1, v2

    .line 63
    .line 64
    const/16 v0, 0xc

    .line 65
    .line 66
    aput-object v4, v1, v0

    .line 67
    .line 68
    const/16 v0, 0xd

    .line 69
    .line 70
    aput-object v4, v1, v0

    .line 71
    .line 72
    const/16 v0, 0xe

    .line 73
    .line 74
    aput-object v4, v1, v0

    .line 75
    .line 76
    const/16 v0, 0xf

    .line 77
    .line 78
    aput-object v4, v1, v0

    .line 79
    .line 80
    sput-object v1, Lorg/wikipedia/gallery/GalleryItem;->$childSerializers:[Lkotlin/Lazy;

    .line 81
    .line 82
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/lang/String;DLjava/lang/String;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/ImageInfo;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/TextInfo;Ljava/util/List;Lorg/wikipedia/gallery/TextInfo;Lorg/wikipedia/gallery/GalleryItem$Titles;Lorg/wikipedia/gallery/ArtistInfo;Lorg/wikipedia/gallery/ImageLicense;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :cond_0
    iput p2, p0, Lorg/wikipedia/gallery/GalleryItem;->sectionId:I

    .line 10
    .line 11
    and-int/lit8 p2, p1, 0x2

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->entityId:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->entityId:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->audioType:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/gallery/GalleryItem;->audioType:Ljava/lang/String;

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 40
    .line 41
    :goto_2
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    const-string p2, "https://commons.wikimedia.org/"

    .line 46
    .line 47
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->filePage:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/gallery/GalleryItem;->filePage:Ljava/lang/String;

    .line 51
    .line 52
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    const-wide/16 p4, 0x0

    .line 57
    .line 58
    iput-wide p4, p0, Lorg/wikipedia/gallery/GalleryItem;->duration:D

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    iput-wide p7, p0, Lorg/wikipedia/gallery/GalleryItem;->duration:D

    .line 62
    .line 63
    :goto_4
    and-int/lit8 p2, p1, 0x40

    .line 64
    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->type:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_6
    iput-object p9, p0, Lorg/wikipedia/gallery/GalleryItem;->type:Ljava/lang/String;

    .line 71
    .line 72
    :goto_5
    and-int/lit16 p2, p1, 0x80

    .line 73
    .line 74
    if-nez p2, :cond_7

    .line 75
    .line 76
    new-instance p2, Lorg/wikipedia/gallery/ImageInfo;

    .line 77
    .line 78
    invoke-direct {p2}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_7
    iput-object p10, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 85
    .line 86
    :goto_6
    and-int/lit16 p2, p1, 0x100

    .line 87
    .line 88
    if-nez p2, :cond_8

    .line 89
    .line 90
    new-instance p2, Lorg/wikipedia/gallery/ImageInfo;

    .line 91
    .line 92
    invoke-direct {p2}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_8
    iput-object p11, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 99
    .line 100
    :goto_7
    and-int/lit16 p2, p1, 0x200

    .line 101
    .line 102
    if-nez p2, :cond_9

    .line 103
    .line 104
    new-instance p2, Lorg/wikipedia/gallery/TextInfo;

    .line 105
    .line 106
    invoke-direct {p2}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    iput-object p12, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 113
    .line 114
    :goto_8
    and-int/lit16 p2, p1, 0x400

    .line 115
    .line 116
    if-nez p2, :cond_a

    .line 117
    .line 118
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_a
    iput-object p13, p0, Lorg/wikipedia/gallery/GalleryItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 122
    .line 123
    :goto_9
    and-int/lit16 p2, p1, 0x800

    .line 124
    .line 125
    if-nez p2, :cond_b

    .line 126
    .line 127
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    .line 128
    .line 129
    goto :goto_a

    .line 130
    :cond_b
    iput-object p14, p0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    .line 131
    .line 132
    :goto_a
    and-int/lit16 p2, p1, 0x1000

    .line 133
    .line 134
    if-nez p2, :cond_c

    .line 135
    .line 136
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->credit:Lorg/wikipedia/gallery/TextInfo;

    .line 137
    .line 138
    goto :goto_b

    .line 139
    :cond_c
    move-object/from16 p2, p15

    .line 140
    .line 141
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->credit:Lorg/wikipedia/gallery/TextInfo;

    .line 142
    .line 143
    :goto_b
    and-int/lit16 p2, p1, 0x2000

    .line 144
    .line 145
    if-nez p2, :cond_d

    .line 146
    .line 147
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 148
    .line 149
    goto :goto_c

    .line 150
    :cond_d
    move-object/from16 p2, p16

    .line 151
    .line 152
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 153
    .line 154
    :goto_c
    and-int/lit16 p2, p1, 0x4000

    .line 155
    .line 156
    if-nez p2, :cond_e

    .line 157
    .line 158
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->artist:Lorg/wikipedia/gallery/ArtistInfo;

    .line 159
    .line 160
    goto :goto_d

    .line 161
    :cond_e
    move-object/from16 p2, p17

    .line 162
    .line 163
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItem;->artist:Lorg/wikipedia/gallery/ArtistInfo;

    .line 164
    .line 165
    :goto_d
    const p2, 0x8000

    .line 166
    .line 167
    .line 168
    and-int/2addr p1, p2

    .line 169
    if-nez p1, :cond_f

    .line 170
    .line 171
    iput-object p3, p0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    .line 172
    .line 173
    return-void

    .line 174
    :cond_f
    move-object/from16 p1, p18

    .line 175
    .line 176
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    .line 177
    .line 178
    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/gallery/GalleryItem;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/gallery/GalleryItem;->artist:Lorg/wikipedia/gallery/ArtistInfo;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/gallery/GalleryItem;->credit:Lorg/wikipedia/gallery/TextInfo;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/wikipedia/gallery/GalleryItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 18
    .line 19
    iget-object v9, v0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 20
    .line 21
    iget-object v10, v0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 22
    .line 23
    iget-object v11, v0, Lorg/wikipedia/gallery/GalleryItem;->type:Ljava/lang/String;

    .line 24
    .line 25
    iget-wide v12, v0, Lorg/wikipedia/gallery/GalleryItem;->duration:D

    .line 26
    .line 27
    iget-object v14, v0, Lorg/wikipedia/gallery/GalleryItem;->filePage:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v15, v0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 30
    .line 31
    move-object/from16 v16, v3

    .line 32
    .line 33
    iget-object v3, v0, Lorg/wikipedia/gallery/GalleryItem;->audioType:Ljava/lang/String;

    .line 34
    .line 35
    move-object/from16 v17, v4

    .line 36
    .line 37
    iget-object v4, v0, Lorg/wikipedia/gallery/GalleryItem;->entityId:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v18, v5

    .line 40
    .line 41
    iget v5, v0, Lorg/wikipedia/gallery/GalleryItem;->sectionId:I

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 44
    .line 45
    .line 46
    move-result v19

    .line 47
    if-eqz v19, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    if-eqz v5, :cond_1

    .line 51
    .line 52
    :goto_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {v1, v0, v5, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v5, ""

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    :goto_1
    const/4 v0, 0x1

    .line 72
    invoke-virtual {v1, v2, v0, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    :goto_2
    const/4 v0, 0x2

    .line 89
    invoke-virtual {v1, v2, v0, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    if-eqz v15, :cond_7

    .line 100
    .line 101
    :goto_3
    sget-object v0, Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$StructuredData$$serializer;

    .line 102
    .line 103
    const/4 v3, 0x3

    .line 104
    invoke-virtual {v1, v2, v3, v0, v15}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    const-string v0, "https://commons.wikimedia.org/"

    .line 115
    .line 116
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_9

    .line 121
    .line 122
    :goto_4
    const/4 v0, 0x4

    .line 123
    invoke-virtual {v1, v2, v0, v14}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_9
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_a

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_a
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    :goto_5
    const/4 v0, 0x5

    .line 142
    invoke-virtual {v1, v2, v0, v12, v13}, Lkotlin/uuid/UuidKt;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    .line 143
    .line 144
    .line 145
    :cond_b
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_d

    .line 157
    .line 158
    :goto_6
    const/4 v0, 0x6

    .line 159
    invoke-virtual {v1, v2, v0, v11}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_d
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_e

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_e
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo;

    .line 170
    .line 171
    invoke-direct {v0}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_f

    .line 179
    .line 180
    :goto_7
    sget-object v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 181
    .line 182
    const/4 v3, 0x7

    .line 183
    invoke-virtual {v1, v2, v3, v0, v10}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_f
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_10

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_10
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo;

    .line 194
    .line 195
    invoke-direct {v0}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_11

    .line 203
    .line 204
    :goto_8
    sget-object v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 205
    .line 206
    const/16 v3, 0x8

    .line 207
    .line 208
    invoke-virtual {v1, v2, v3, v0, v9}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_11
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_12

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_12
    new-instance v0, Lorg/wikipedia/gallery/TextInfo;

    .line 219
    .line 220
    invoke-direct {v0}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_13

    .line 228
    .line 229
    :goto_9
    sget-object v0, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 230
    .line 231
    const/16 v3, 0x9

    .line 232
    .line 233
    invoke-virtual {v1, v2, v3, v0, v8}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_13
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_14

    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_14
    if-eqz v7, :cond_15

    .line 244
    .line 245
    :goto_a
    sget-object v0, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 246
    .line 247
    const/16 v3, 0xa

    .line 248
    .line 249
    invoke-virtual {v1, v2, v3, v0, v7}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_15
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_16

    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_16
    if-eqz v6, :cond_17

    .line 260
    .line 261
    :goto_b
    sget-object v0, Lorg/wikipedia/gallery/GalleryItem;->$childSerializers:[Lkotlin/Lazy;

    .line 262
    .line 263
    const/16 v3, 0xb

    .line 264
    .line 265
    aget-object v0, v0, v3

    .line 266
    .line 267
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 272
    .line 273
    invoke-virtual {v1, v2, v3, v0, v6}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_17
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_18

    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_18
    if-eqz v18, :cond_19

    .line 284
    .line 285
    :goto_c
    sget-object v0, Lorg/wikipedia/gallery/TextInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/TextInfo$$serializer;

    .line 286
    .line 287
    const/16 v3, 0xc

    .line 288
    .line 289
    move-object/from16 v4, v18

    .line 290
    .line 291
    invoke-virtual {v1, v2, v3, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_19
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_1a

    .line 299
    .line 300
    move-object/from16 v0, p0

    .line 301
    .line 302
    goto :goto_d

    .line 303
    :cond_1a
    move-object/from16 v0, p0

    .line 304
    .line 305
    iget-object v3, v0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 306
    .line 307
    if-eqz v3, :cond_1b

    .line 308
    .line 309
    :goto_d
    sget-object v3, Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;->INSTANCE:Lorg/wikipedia/gallery/GalleryItem$Titles$$serializer;

    .line 310
    .line 311
    iget-object v0, v0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 312
    .line 313
    const/16 v4, 0xd

    .line 314
    .line 315
    invoke-virtual {v1, v2, v4, v3, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_1b
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_1c

    .line 323
    .line 324
    goto :goto_e

    .line 325
    :cond_1c
    if-eqz v17, :cond_1d

    .line 326
    .line 327
    :goto_e
    sget-object v0, Lorg/wikipedia/gallery/ArtistInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ArtistInfo$$serializer;

    .line 328
    .line 329
    const/16 v3, 0xe

    .line 330
    .line 331
    move-object/from16 v4, v17

    .line 332
    .line 333
    invoke-virtual {v1, v2, v3, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :cond_1d
    invoke-virtual/range {p1 .. p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_1e

    .line 341
    .line 342
    goto :goto_f

    .line 343
    :cond_1e
    if-eqz v16, :cond_1f

    .line 344
    .line 345
    :goto_f
    sget-object v0, Lorg/wikipedia/gallery/ImageLicense$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageLicense$$serializer;

    .line 346
    .line 347
    const/16 v3, 0xf

    .line 348
    .line 349
    move-object/from16 v4, v16

    .line 350
    .line 351
    invoke-virtual {v1, v2, v3, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_1f
    return-void
.end method
