.class public final synthetic Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikimedia.testkitchen.config.StreamConfig"

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "stream"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "canary_events_enabled"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "destination_event_service"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "schema_title"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "producers"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "sample"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "topic_prefixes"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "topics"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 14
    .line 15
    aput-object v3, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    sget-object v1, Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x4

    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    sget-object v1, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x5

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    const/4 v1, 0x6

    .line 46
    aget-object v2, p0, v1

    .line 47
    .line 48
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    aget-object p0, p0, v1

    .line 56
    .line 57
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    aput-object p0, v0, v1

    .line 62
    .line 63
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikimedia/testkitchen/config/StreamConfig;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v3

    .line 14
    move-object v7, v5

    .line 15
    move-object v9, v7

    .line 16
    move-object v11, v9

    .line 17
    move-object v12, v11

    .line 18
    move-object v13, v12

    .line 19
    move-object v14, v13

    .line 20
    move-object v15, v14

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    :goto_0
    if-eqz v6, :cond_0

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
    return-object v5

    .line 36
    :pswitch_0
    const/4 v5, 0x7

    .line 37
    aget-object v16, v2, v5

    .line 38
    .line 39
    invoke-interface/range {v16 .. v16}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v16

    .line 43
    move-object/from16 v4, v16

    .line 44
    .line 45
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    invoke-interface {v1, v0, v5, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object v7, v4

    .line 52
    check-cast v7, Ljava/util/List;

    .line 53
    .line 54
    or-int/lit16 v8, v8, 0x80

    .line 55
    .line 56
    :goto_1
    const/4 v5, 0x0

    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    const/4 v4, 0x6

    .line 59
    aget-object v5, v2, v4

    .line 60
    .line 61
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    invoke-interface {v1, v0, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v15, v4

    .line 72
    check-cast v15, Ljava/util/List;

    .line 73
    .line 74
    or-int/lit8 v8, v8, 0x40

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_2
    sget-object v4, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 78
    .line 79
    const/4 v5, 0x5

    .line 80
    invoke-interface {v1, v0, v5, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    move-object v14, v4

    .line 85
    check-cast v14, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 86
    .line 87
    or-int/lit8 v8, v8, 0x20

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_3
    sget-object v4, Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;

    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    invoke-interface {v1, v0, v5, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    move-object v13, v4

    .line 98
    check-cast v13, Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;

    .line 99
    .line 100
    or-int/lit8 v8, v8, 0x10

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_4
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 104
    .line 105
    const/4 v5, 0x3

    .line 106
    invoke-interface {v1, v0, v5, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    move-object v12, v4

    .line 111
    check-cast v12, Ljava/lang/String;

    .line 112
    .line 113
    or-int/lit8 v8, v8, 0x8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_5
    const/4 v4, 0x2

    .line 117
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    or-int/lit8 v8, v8, 0x4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_6
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    or-int/lit8 v8, v8, 0x2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_7
    const/4 v4, 0x0

    .line 132
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    or-int/lit8 v8, v8, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_8
    const/4 v4, 0x0

    .line 140
    move v6, v4

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 143
    .line 144
    .line 145
    move-object/from16 v16, v7

    .line 146
    .line 147
    new-instance v7, Lorg/wikimedia/testkitchen/config/StreamConfig;

    .line 148
    .line 149
    invoke-direct/range {v7 .. v16}, Lorg/wikimedia/testkitchen/config/StreamConfig;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;Ljava/util/List;Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    return-object v7

    .line 153
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
    sget-object p0, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/config/StreamConfig;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->topics:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->topicPrefixes:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 11
    .line 12
    iget-object v2, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->producerConfig:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;

    .line 13
    .line 14
    iget-object v3, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->schemaTitle:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventServiceKey:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v5, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->canaryEventsEnabled:Z

    .line 19
    .line 20
    iget-object p2, p2, Lorg/wikimedia/testkitchen/config/StreamConfig;->streamName:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v6, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    .line 24
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v7, Lorg/wikimedia/testkitchen/config/StreamConfig;->$childSerializers:[Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v8, ""

    .line 38
    .line 39
    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_1

    .line 44
    .line 45
    :goto_0
    const/4 v8, 0x0

    .line 46
    invoke-virtual {p1, v6, v8, p2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz v5, :cond_3

    .line 57
    .line 58
    :goto_1
    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, v6, p2, v5}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const-string p2, "eventgate-analytics-external"

    .line 70
    .line 71
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    :goto_2
    const/4 p2, 0x2

    .line 78
    invoke-virtual {p1, v6, p2, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    if-eqz v3, :cond_7

    .line 89
    .line 90
    :goto_3
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    invoke-virtual {p1, v6, v4, p2, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_8

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    if-eqz v2, :cond_9

    .line 104
    .line 105
    :goto_4
    sget-object p2, Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig$$serializer;

    .line 106
    .line 107
    const/4 v3, 0x4

    .line 108
    invoke-virtual {p1, v6, v3, p2, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_a

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_a
    if-eqz v1, :cond_b

    .line 119
    .line 120
    :goto_5
    sget-object p2, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 121
    .line 122
    const/4 v2, 0x5

    .line 123
    invoke-virtual {p1, v6, v2, p2, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_b
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 131
    .line 132
    if-eqz p2, :cond_c

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_c
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_d

    .line 140
    .line 141
    :goto_6
    const/4 p2, 0x6

    .line 142
    aget-object v2, v7, p2

    .line 143
    .line 144
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 149
    .line 150
    invoke-virtual {p1, v6, p2, v2, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_e

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-nez p2, :cond_f

    .line 165
    .line 166
    :goto_7
    const/4 p2, 0x7

    .line 167
    aget-object v0, v7, p2

    .line 168
    .line 169
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 174
    .line 175
    invoke-virtual {p1, v6, p2, v0, p0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_f
    invoke-virtual {p1, v6}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 179
    .line 180
    .line 181
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
