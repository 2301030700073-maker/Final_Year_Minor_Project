.class public final synthetic Lorg/wikipedia/analytics/SessionData$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/analytics/SessionData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/SessionData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/SessionData$$serializer;->INSTANCE:Lorg/wikipedia/analytics/SessionData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.analytics.SessionData"

    .line 11
    .line 12
    const/16 v3, 0xc

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "total_pages"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "page_load_latency_ms"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "from_search"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "from_random"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "from_lang_link"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "from_internal"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "from_external"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "from_history"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "from_reading_list"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "from_back"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "no_description"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string v0, "from_suggested_edits"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    sput-object v1, Lorg/wikipedia/analytics/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 1
    const/16 p0, 0xc

    .line 2
    .line 3
    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object v0, p0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aput-object v0, p0, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    aput-object v0, p0, v1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aput-object v0, p0, v1

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    aput-object v0, p0, v1

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    aput-object v0, p0, v1

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    aput-object v0, p0, v1

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    aput-object v0, p0, v1

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    aput-object v0, p0, v1

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    aput-object v0, p0, v1

    .line 38
    .line 39
    const/16 v1, 0xa

    .line 40
    .line 41
    aput-object v0, p0, v1

    .line 42
    .line 43
    const/16 v1, 0xb

    .line 44
    .line 45
    aput-object v0, p0, v1

    .line 46
    .line 47
    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    move v4, v2

    .line 12
    move v6, v3

    .line 13
    move v7, v6

    .line 14
    move v8, v7

    .line 15
    move v9, v8

    .line 16
    move v10, v9

    .line 17
    move v11, v10

    .line 18
    move v12, v11

    .line 19
    move v13, v12

    .line 20
    move v14, v13

    .line 21
    move v15, v14

    .line 22
    move/from16 v16, v15

    .line 23
    .line 24
    :goto_0
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    packed-switch v5, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0

    .line 38
    :pswitch_0
    const/16 v5, 0xb

    .line 39
    .line 40
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 41
    .line 42
    .line 43
    move-result v16

    .line 44
    or-int/lit16 v6, v6, 0x800

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    const/16 v5, 0xa

    .line 48
    .line 49
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 50
    .line 51
    .line 52
    move-result v15

    .line 53
    or-int/lit16 v6, v6, 0x400

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    const/16 v5, 0x9

    .line 57
    .line 58
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    or-int/lit16 v6, v6, 0x200

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_3
    const/16 v5, 0x8

    .line 66
    .line 67
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    or-int/lit16 v6, v6, 0x100

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    const/4 v5, 0x7

    .line 75
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    or-int/lit16 v6, v6, 0x80

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_5
    const/4 v5, 0x6

    .line 83
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    or-int/lit8 v6, v6, 0x40

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_6
    const/4 v5, 0x5

    .line 91
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    or-int/lit8 v6, v6, 0x20

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_7
    const/4 v5, 0x4

    .line 99
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    or-int/lit8 v6, v6, 0x10

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_8
    const/4 v5, 0x3

    .line 107
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    or-int/lit8 v6, v6, 0x8

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_9
    const/4 v5, 0x2

    .line 115
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    or-int/lit8 v6, v6, 0x4

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_a
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 123
    .line 124
    .line 125
    or-int/lit8 v6, v6, 0x2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_b
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 129
    .line 130
    .line 131
    or-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_c
    move v4, v3

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 137
    .line 138
    .line 139
    new-instance v5, Lorg/wikipedia/analytics/SessionData;

    .line 140
    .line 141
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/analytics/SessionData;-><init>(IIIIIIIIIII)V

    .line 142
    .line 143
    .line 144
    return-object v5

    .line 145
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/analytics/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lorg/wikipedia/analytics/SessionData;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikipedia/analytics/SessionData;->pageLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/analytics/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lorg/wikipedia/analytics/SessionData;->getTotalPages()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2}, Lorg/wikipedia/analytics/SessionData;->getTotalPages()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget v1, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    move-wide v4, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-wide v4, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    .line 51
    .line 52
    int-to-double v6, v1

    .line 53
    div-double/2addr v4, v6

    .line 54
    :goto_1
    double-to-int v1, v4

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    :goto_2
    iget v1, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    iget-wide v2, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    .line 63
    .line 64
    int-to-double v4, v1

    .line 65
    div-double/2addr v2, v4

    .line 66
    :goto_3
    double-to-int p0, v2

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_6
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 79
    .line 80
    if-eqz p0, :cond_7

    .line 81
    .line 82
    :goto_4
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_8

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_8
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 96
    .line 97
    if-eqz p0, :cond_9

    .line 98
    .line 99
    :goto_5
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 103
    .line 104
    .line 105
    :cond_9
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_a

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 113
    .line 114
    if-eqz p0, :cond_b

    .line 115
    .line 116
    :goto_6
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 117
    .line 118
    const/4 v1, 0x4

    .line 119
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 120
    .line 121
    .line 122
    :cond_b
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_c

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_c
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 130
    .line 131
    if-eqz p0, :cond_d

    .line 132
    .line 133
    :goto_7
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 134
    .line 135
    const/4 v1, 0x5

    .line 136
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 137
    .line 138
    .line 139
    :cond_d
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_e

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_e
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 147
    .line 148
    if-eqz p0, :cond_f

    .line 149
    .line 150
    :goto_8
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 151
    .line 152
    const/4 v1, 0x6

    .line 153
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 154
    .line 155
    .line 156
    :cond_f
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_10

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_10
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 164
    .line 165
    if-eqz p0, :cond_11

    .line 166
    .line 167
    :goto_9
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 168
    .line 169
    const/4 v1, 0x7

    .line 170
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 171
    .line 172
    .line 173
    :cond_11
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_12

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_12
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 181
    .line 182
    if-eqz p0, :cond_13

    .line 183
    .line 184
    :goto_a
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 185
    .line 186
    const/16 v1, 0x8

    .line 187
    .line 188
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 189
    .line 190
    .line 191
    :cond_13
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_14

    .line 196
    .line 197
    goto :goto_b

    .line 198
    :cond_14
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 199
    .line 200
    if-eqz p0, :cond_15

    .line 201
    .line 202
    :goto_b
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 203
    .line 204
    const/16 v1, 0x9

    .line 205
    .line 206
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 207
    .line 208
    .line 209
    :cond_15
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_16

    .line 214
    .line 215
    goto :goto_c

    .line 216
    :cond_16
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 217
    .line 218
    if-eqz p0, :cond_17

    .line 219
    .line 220
    :goto_c
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 221
    .line 222
    const/16 v1, 0xa

    .line 223
    .line 224
    invoke-virtual {p1, v1, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 225
    .line 226
    .line 227
    :cond_17
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_18

    .line 232
    .line 233
    goto :goto_d

    .line 234
    :cond_18
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 235
    .line 236
    if-eqz p0, :cond_19

    .line 237
    .line 238
    :goto_d
    iget p0, p2, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 239
    .line 240
    const/16 p2, 0xb

    .line 241
    .line 242
    invoke-virtual {p1, p2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 243
    .line 244
    .line 245
    :cond_19
    invoke-virtual {p1, v0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 246
    .line 247
    .line 248
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
