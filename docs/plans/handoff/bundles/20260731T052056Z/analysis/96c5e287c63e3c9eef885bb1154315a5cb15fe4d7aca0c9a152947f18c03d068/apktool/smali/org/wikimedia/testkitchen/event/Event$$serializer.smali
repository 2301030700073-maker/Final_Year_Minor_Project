.class public final synthetic Lorg/wikimedia/testkitchen/event/Event$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikimedia/testkitchen/event/Event$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/event/Event$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/event/Event$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikimedia.testkitchen.event.Event"

    .line 11
    .line 12
    const/16 v3, 0x13

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "$schema"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "dt"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "meta"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "instrument_name"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "agent"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "page"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "mediawiki"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "performer"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "action"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "action_subtype"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "action_source"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string v0, "action_context"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v0, "element_id"

    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v0, "element_friendly_name"

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    const-string v0, "funnel_name"

    .line 90
    .line 91
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    const-string v0, "funnel_entry_token"

    .line 95
    .line 96
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    const-string v0, "funnel_event_sequence_position"

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    const-string v0, "experiment"

    .line 105
    .line 106
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const-string v0, "sample"

    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    sput-object v1, Lorg/wikimedia/testkitchen/event/Event$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 19

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

    .line 12
    .line 13
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PageData$$serializer;

    .line 18
    .line 19
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;

    .line 24
    .line 25
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    sget-object v6, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

    .line 30
    .line 31
    invoke-static {v6}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    sget-object v15, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 68
    .line 69
    invoke-static {v15}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    sget-object v16, Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;

    .line 74
    .line 75
    invoke-static/range {v16 .. v16}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    sget-object v17, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 80
    .line 81
    invoke-static/range {v17 .. v17}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 82
    .line 83
    .line 84
    move-result-object v17

    .line 85
    move-object/from16 p0, v0

    .line 86
    .line 87
    const/16 v0, 0x13

    .line 88
    .line 89
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    aput-object p0, v0, v18

    .line 94
    .line 95
    const/16 v18, 0x1

    .line 96
    .line 97
    aput-object v1, v0, v18

    .line 98
    .line 99
    sget-object v1, Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;

    .line 100
    .line 101
    const/16 v18, 0x2

    .line 102
    .line 103
    aput-object v1, v0, v18

    .line 104
    .line 105
    const/4 v1, 0x3

    .line 106
    aput-object v2, v0, v1

    .line 107
    .line 108
    const/4 v1, 0x4

    .line 109
    aput-object v3, v0, v1

    .line 110
    .line 111
    const/4 v1, 0x5

    .line 112
    aput-object v4, v0, v1

    .line 113
    .line 114
    const/4 v1, 0x6

    .line 115
    aput-object v5, v0, v1

    .line 116
    .line 117
    const/4 v1, 0x7

    .line 118
    aput-object v6, v0, v1

    .line 119
    .line 120
    const/16 v1, 0x8

    .line 121
    .line 122
    aput-object v7, v0, v1

    .line 123
    .line 124
    const/16 v1, 0x9

    .line 125
    .line 126
    aput-object v8, v0, v1

    .line 127
    .line 128
    const/16 v1, 0xa

    .line 129
    .line 130
    aput-object v9, v0, v1

    .line 131
    .line 132
    const/16 v1, 0xb

    .line 133
    .line 134
    aput-object v10, v0, v1

    .line 135
    .line 136
    const/16 v1, 0xc

    .line 137
    .line 138
    aput-object v11, v0, v1

    .line 139
    .line 140
    const/16 v1, 0xd

    .line 141
    .line 142
    aput-object v12, v0, v1

    .line 143
    .line 144
    const/16 v1, 0xe

    .line 145
    .line 146
    aput-object v13, v0, v1

    .line 147
    .line 148
    const/16 v1, 0xf

    .line 149
    .line 150
    aput-object v14, v0, v1

    .line 151
    .line 152
    const/16 v1, 0x10

    .line 153
    .line 154
    aput-object v15, v0, v1

    .line 155
    .line 156
    const/16 v1, 0x11

    .line 157
    .line 158
    aput-object v16, v0, v1

    .line 159
    .line 160
    const/16 v1, 0x12

    .line 161
    .line 162
    aput-object v17, v0, v1

    .line 163
    .line 164
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 27

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/event/Event$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/16 v18, 0x0

    .line 28
    .line 29
    const/16 v19, 0x0

    .line 30
    .line 31
    const/16 v20, 0x0

    .line 32
    .line 33
    const/16 v21, 0x0

    .line 34
    .line 35
    const/16 v22, 0x0

    .line 36
    .line 37
    const/16 v23, 0x0

    .line 38
    .line 39
    :goto_0
    if-eqz v17, :cond_0

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 42
    .line 43
    .line 44
    move-result v24

    .line 45
    packed-switch v24, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    invoke-static/range {v24 .. v24}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_0
    move-object/from16 v24, v14

    .line 53
    .line 54
    sget-object v14, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 55
    .line 56
    move-object/from16 v25, v15

    .line 57
    .line 58
    const/16 v15, 0x12

    .line 59
    .line 60
    invoke-interface {v1, v0, v15, v14, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    check-cast v13, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 65
    .line 66
    const/high16 v14, 0x40000

    .line 67
    .line 68
    :goto_1
    or-int/2addr v7, v14

    .line 69
    :goto_2
    move-object/from16 v14, v24

    .line 70
    .line 71
    move-object/from16 v15, v25

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_1
    move-object/from16 v24, v14

    .line 75
    .line 76
    move-object/from16 v25, v15

    .line 77
    .line 78
    sget-object v14, Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;

    .line 79
    .line 80
    const/16 v15, 0x11

    .line 81
    .line 82
    invoke-interface {v1, v0, v15, v14, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    check-cast v12, Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    .line 87
    .line 88
    const/high16 v14, 0x20000

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_2
    move-object/from16 v24, v14

    .line 92
    .line 93
    move-object/from16 v25, v15

    .line 94
    .line 95
    sget-object v14, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 96
    .line 97
    const/16 v15, 0x10

    .line 98
    .line 99
    invoke-interface {v1, v0, v15, v14, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    check-cast v11, Ljava/lang/Integer;

    .line 104
    .line 105
    const/high16 v14, 0x10000

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_3
    move-object/from16 v24, v14

    .line 109
    .line 110
    move-object/from16 v25, v15

    .line 111
    .line 112
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 113
    .line 114
    const/16 v15, 0xf

    .line 115
    .line 116
    invoke-interface {v1, v0, v15, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/lang/String;

    .line 121
    .line 122
    const v14, 0x8000

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    move-object/from16 v24, v14

    .line 127
    .line 128
    move-object/from16 v25, v15

    .line 129
    .line 130
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 131
    .line 132
    const/16 v15, 0xe

    .line 133
    .line 134
    invoke-interface {v1, v0, v15, v14, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Ljava/lang/String;

    .line 139
    .line 140
    or-int/lit16 v7, v7, 0x4000

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_5
    move-object/from16 v24, v14

    .line 144
    .line 145
    move-object/from16 v25, v15

    .line 146
    .line 147
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 148
    .line 149
    const/16 v15, 0xd

    .line 150
    .line 151
    invoke-interface {v1, v0, v15, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Ljava/lang/String;

    .line 156
    .line 157
    or-int/lit16 v7, v7, 0x2000

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :pswitch_6
    move-object/from16 v24, v14

    .line 161
    .line 162
    move-object/from16 v25, v15

    .line 163
    .line 164
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 165
    .line 166
    const/16 v15, 0xc

    .line 167
    .line 168
    invoke-interface {v1, v0, v15, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Ljava/lang/String;

    .line 173
    .line 174
    or-int/lit16 v7, v7, 0x1000

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_7
    move-object/from16 v24, v14

    .line 178
    .line 179
    move-object/from16 v25, v15

    .line 180
    .line 181
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 182
    .line 183
    const/16 v15, 0xb

    .line 184
    .line 185
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/lang/String;

    .line 190
    .line 191
    or-int/lit16 v7, v7, 0x800

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :pswitch_8
    move-object/from16 v24, v14

    .line 195
    .line 196
    move-object/from16 v25, v15

    .line 197
    .line 198
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 199
    .line 200
    const/16 v15, 0xa

    .line 201
    .line 202
    invoke-interface {v1, v0, v15, v14, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Ljava/lang/String;

    .line 207
    .line 208
    or-int/lit16 v7, v7, 0x400

    .line 209
    .line 210
    goto/16 :goto_2

    .line 211
    .line 212
    :pswitch_9
    move-object/from16 v24, v14

    .line 213
    .line 214
    move-object/from16 v25, v15

    .line 215
    .line 216
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 217
    .line 218
    const/16 v15, 0x9

    .line 219
    .line 220
    invoke-interface {v1, v0, v15, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Ljava/lang/String;

    .line 225
    .line 226
    or-int/lit16 v7, v7, 0x200

    .line 227
    .line 228
    goto/16 :goto_2

    .line 229
    .line 230
    :pswitch_a
    move-object/from16 v24, v14

    .line 231
    .line 232
    move-object/from16 v25, v15

    .line 233
    .line 234
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 235
    .line 236
    const/16 v15, 0x8

    .line 237
    .line 238
    invoke-interface {v1, v0, v15, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Ljava/lang/String;

    .line 243
    .line 244
    or-int/lit16 v7, v7, 0x100

    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :pswitch_b
    move-object/from16 v24, v14

    .line 249
    .line 250
    move-object/from16 v25, v15

    .line 251
    .line 252
    sget-object v14, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

    .line 253
    .line 254
    const/4 v15, 0x7

    .line 255
    move-object/from16 v26, v2

    .line 256
    .line 257
    move-object/from16 v2, v25

    .line 258
    .line 259
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    move-object v15, v2

    .line 264
    check-cast v15, Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 265
    .line 266
    or-int/lit16 v7, v7, 0x80

    .line 267
    .line 268
    move-object/from16 v14, v24

    .line 269
    .line 270
    :goto_3
    move-object/from16 v2, v26

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :pswitch_c
    move-object/from16 v26, v2

    .line 275
    .line 276
    move-object/from16 v24, v14

    .line 277
    .line 278
    move-object v2, v15

    .line 279
    sget-object v14, Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;

    .line 280
    .line 281
    const/4 v15, 0x6

    .line 282
    move-object/from16 v25, v2

    .line 283
    .line 284
    move-object/from16 v2, v24

    .line 285
    .line 286
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    move-object v14, v2

    .line 291
    check-cast v14, Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 292
    .line 293
    or-int/lit8 v7, v7, 0x40

    .line 294
    .line 295
    :goto_4
    move-object/from16 v15, v25

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :pswitch_d
    move-object/from16 v26, v2

    .line 299
    .line 300
    move-object v2, v14

    .line 301
    move-object/from16 v25, v15

    .line 302
    .line 303
    sget-object v14, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PageData$$serializer;

    .line 304
    .line 305
    const/4 v15, 0x5

    .line 306
    move-object/from16 v24, v2

    .line 307
    .line 308
    move-object/from16 v2, v23

    .line 309
    .line 310
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    move-object/from16 v23, v2

    .line 315
    .line 316
    check-cast v23, Lorg/wikimedia/testkitchen/context/PageData;

    .line 317
    .line 318
    or-int/lit8 v7, v7, 0x20

    .line 319
    .line 320
    :goto_5
    move-object/from16 v14, v24

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :pswitch_e
    move-object/from16 v26, v2

    .line 324
    .line 325
    move-object/from16 v24, v14

    .line 326
    .line 327
    move-object/from16 v25, v15

    .line 328
    .line 329
    move-object/from16 v2, v23

    .line 330
    .line 331
    sget-object v14, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

    .line 332
    .line 333
    const/4 v15, 0x4

    .line 334
    move-object/from16 v2, v22

    .line 335
    .line 336
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    move-object/from16 v22, v2

    .line 341
    .line 342
    check-cast v22, Lorg/wikimedia/testkitchen/context/AgentData;

    .line 343
    .line 344
    or-int/lit8 v7, v7, 0x10

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :pswitch_f
    move-object/from16 v26, v2

    .line 348
    .line 349
    move-object/from16 v24, v14

    .line 350
    .line 351
    move-object/from16 v25, v15

    .line 352
    .line 353
    move-object/from16 v2, v22

    .line 354
    .line 355
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 356
    .line 357
    const/4 v15, 0x3

    .line 358
    move-object/from16 v2, v21

    .line 359
    .line 360
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    move-object/from16 v21, v2

    .line 365
    .line 366
    check-cast v21, Ljava/lang/String;

    .line 367
    .line 368
    or-int/lit8 v7, v7, 0x8

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :pswitch_10
    move-object/from16 v26, v2

    .line 372
    .line 373
    move-object/from16 v24, v14

    .line 374
    .line 375
    move-object/from16 v25, v15

    .line 376
    .line 377
    move-object/from16 v2, v21

    .line 378
    .line 379
    sget-object v14, Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;

    .line 380
    .line 381
    const/4 v15, 0x2

    .line 382
    move-object/from16 v2, v20

    .line 383
    .line 384
    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    move-object/from16 v20, v2

    .line 389
    .line 390
    check-cast v20, Lorg/wikimedia/testkitchen/event/Event$Meta;

    .line 391
    .line 392
    or-int/lit8 v7, v7, 0x4

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :pswitch_11
    move-object/from16 v26, v2

    .line 396
    .line 397
    move-object/from16 v24, v14

    .line 398
    .line 399
    move-object/from16 v25, v15

    .line 400
    .line 401
    move-object/from16 v2, v20

    .line 402
    .line 403
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 404
    .line 405
    move-object/from16 v16, v2

    .line 406
    .line 407
    move-object/from16 v15, v19

    .line 408
    .line 409
    const/4 v2, 0x1

    .line 410
    invoke-interface {v1, v0, v2, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v14

    .line 414
    move-object/from16 v19, v14

    .line 415
    .line 416
    check-cast v19, Ljava/lang/String;

    .line 417
    .line 418
    or-int/lit8 v7, v7, 0x2

    .line 419
    .line 420
    move-object/from16 v20, v16

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :pswitch_12
    move-object/from16 v26, v2

    .line 424
    .line 425
    move-object/from16 v24, v14

    .line 426
    .line 427
    move-object/from16 v25, v15

    .line 428
    .line 429
    move-object/from16 v15, v19

    .line 430
    .line 431
    move-object/from16 v16, v20

    .line 432
    .line 433
    const/4 v2, 0x1

    .line 434
    const/4 v14, 0x0

    .line 435
    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v18

    .line 439
    or-int/lit8 v7, v7, 0x1

    .line 440
    .line 441
    goto :goto_5

    .line 442
    :pswitch_13
    move-object/from16 v26, v2

    .line 443
    .line 444
    move-object/from16 v24, v14

    .line 445
    .line 446
    move-object/from16 v25, v15

    .line 447
    .line 448
    move-object/from16 v15, v19

    .line 449
    .line 450
    move-object/from16 v16, v20

    .line 451
    .line 452
    const/4 v2, 0x1

    .line 453
    const/4 v14, 0x0

    .line 454
    move/from16 v17, v14

    .line 455
    .line 456
    goto/16 :goto_5

    .line 457
    .line 458
    :cond_0
    move-object/from16 v26, v2

    .line 459
    .line 460
    move-object/from16 v24, v14

    .line 461
    .line 462
    move-object/from16 v25, v15

    .line 463
    .line 464
    move-object/from16 v15, v19

    .line 465
    .line 466
    move-object/from16 v16, v20

    .line 467
    .line 468
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 469
    .line 470
    .line 471
    move-object/from16 v2, v16

    .line 472
    .line 473
    move-object/from16 v16, v6

    .line 474
    .line 475
    new-instance v6, Lorg/wikimedia/testkitchen/event/Event;

    .line 476
    .line 477
    move-object/from16 v14, v22

    .line 478
    .line 479
    move-object/from16 v22, v9

    .line 480
    .line 481
    move-object v9, v15

    .line 482
    move-object/from16 v15, v25

    .line 483
    .line 484
    move-object/from16 v25, v12

    .line 485
    .line 486
    move-object v12, v14

    .line 487
    move-object/from16 v17, v4

    .line 488
    .line 489
    move-object/from16 v20, v5

    .line 490
    .line 491
    move-object/from16 v14, v24

    .line 492
    .line 493
    move-object/from16 v19, v26

    .line 494
    .line 495
    move-object/from16 v24, v11

    .line 496
    .line 497
    move-object/from16 v26, v13

    .line 498
    .line 499
    move-object/from16 v11, v21

    .line 500
    .line 501
    move-object/from16 v13, v23

    .line 502
    .line 503
    move-object/from16 v21, v8

    .line 504
    .line 505
    move-object/from16 v23, v10

    .line 506
    .line 507
    move-object/from16 v8, v18

    .line 508
    .line 509
    move-object v10, v2

    .line 510
    move-object/from16 v18, v3

    .line 511
    .line 512
    invoke-direct/range {v6 .. v26}, Lorg/wikimedia/testkitchen/event/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/event/Event$Meta;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/AgentData;Lorg/wikimedia/testkitchen/context/PageData;Lorg/wikimedia/testkitchen/context/MediawikiData;Lorg/wikimedia/testkitchen/context/PerformerData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/wikimedia/testkitchen/event/Event$EventExperiment;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;)V

    .line 513
    .line 514
    .line 515
    return-object v6

    .line 516
    nop

    .line 517
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
    sget-object p0, Lorg/wikimedia/testkitchen/event/Event$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/event/Event;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->timestamp:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->schema:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lorg/wikimedia/testkitchen/event/Event$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v2, ""

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v1, v2, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :goto_1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p1, v1, v2, v0, p0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    sget-object p0, Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$Meta$$serializer;

    .line 51
    .line 52
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->meta:Lorg/wikimedia/testkitchen/event/Event$Meta;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->instrumentName:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    :goto_2
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 70
    .line 71
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->instrumentName:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 85
    .line 86
    if-eqz p0, :cond_7

    .line 87
    .line 88
    :goto_3
    sget-object p0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

    .line 89
    .line 90
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 91
    .line 92
    const/4 v2, 0x4

    .line 93
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_8

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 104
    .line 105
    if-eqz p0, :cond_9

    .line 106
    .line 107
    :goto_4
    sget-object p0, Lorg/wikimedia/testkitchen/context/PageData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PageData$$serializer;

    .line 108
    .line 109
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 110
    .line 111
    const/4 v2, 0x5

    .line 112
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_a

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_a
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 123
    .line 124
    if-eqz p0, :cond_b

    .line 125
    .line 126
    :goto_5
    sget-object p0, Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/MediawikiData$$serializer;

    .line 127
    .line 128
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_c

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_c
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 142
    .line 143
    if-eqz p0, :cond_d

    .line 144
    .line 145
    :goto_6
    sget-object p0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

    .line 146
    .line 147
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 148
    .line 149
    const/4 v2, 0x7

    .line 150
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_e

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->action:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz p0, :cond_f

    .line 163
    .line 164
    :goto_7
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 165
    .line 166
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->action:Ljava/lang/String;

    .line 167
    .line 168
    const/16 v2, 0x8

    .line 169
    .line 170
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_f
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_10

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_10
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionSubtype:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz p0, :cond_11

    .line 183
    .line 184
    :goto_8
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 185
    .line 186
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionSubtype:Ljava/lang/String;

    .line 187
    .line 188
    const/16 v2, 0x9

    .line 189
    .line 190
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_11
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_12

    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_12
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionSource:Ljava/lang/String;

    .line 201
    .line 202
    if-eqz p0, :cond_13

    .line 203
    .line 204
    :goto_9
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 205
    .line 206
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionSource:Ljava/lang/String;

    .line 207
    .line 208
    const/16 v2, 0xa

    .line 209
    .line 210
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_13
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_14

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_14
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionContext:Ljava/lang/String;

    .line 221
    .line 222
    if-eqz p0, :cond_15

    .line 223
    .line 224
    :goto_a
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 225
    .line 226
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->actionContext:Ljava/lang/String;

    .line 227
    .line 228
    const/16 v2, 0xb

    .line 229
    .line 230
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_15
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-eqz p0, :cond_16

    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_16
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->elementId:Ljava/lang/String;

    .line 241
    .line 242
    if-eqz p0, :cond_17

    .line 243
    .line 244
    :goto_b
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 245
    .line 246
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->elementId:Ljava/lang/String;

    .line 247
    .line 248
    const/16 v2, 0xc

    .line 249
    .line 250
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_17
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    if-eqz p0, :cond_18

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_18
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->elementFriendlyName:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz p0, :cond_19

    .line 263
    .line 264
    :goto_c
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 265
    .line 266
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->elementFriendlyName:Ljava/lang/String;

    .line 267
    .line 268
    const/16 v2, 0xd

    .line 269
    .line 270
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_19
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_1a

    .line 278
    .line 279
    goto :goto_d

    .line 280
    :cond_1a
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelName:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz p0, :cond_1b

    .line 283
    .line 284
    :goto_d
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 285
    .line 286
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelName:Ljava/lang/String;

    .line 287
    .line 288
    const/16 v2, 0xe

    .line 289
    .line 290
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_1b
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    if-eqz p0, :cond_1c

    .line 298
    .line 299
    goto :goto_e

    .line 300
    :cond_1c
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelEntryToken:Ljava/lang/String;

    .line 301
    .line 302
    if-eqz p0, :cond_1d

    .line 303
    .line 304
    :goto_e
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 305
    .line 306
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelEntryToken:Ljava/lang/String;

    .line 307
    .line 308
    const/16 v2, 0xf

    .line 309
    .line 310
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_1d
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_1e

    .line 318
    .line 319
    goto :goto_f

    .line 320
    :cond_1e
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelEventSequencePosition:Ljava/lang/Integer;

    .line 321
    .line 322
    if-eqz p0, :cond_1f

    .line 323
    .line 324
    :goto_f
    sget-object p0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 325
    .line 326
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->funnelEventSequencePosition:Ljava/lang/Integer;

    .line 327
    .line 328
    const/16 v2, 0x10

    .line 329
    .line 330
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_1f
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-eqz p0, :cond_20

    .line 338
    .line 339
    goto :goto_10

    .line 340
    :cond_20
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    .line 341
    .line 342
    if-eqz p0, :cond_21

    .line 343
    .line 344
    :goto_10
    sget-object p0, Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$EventExperiment$$serializer;

    .line 345
    .line 346
    iget-object v0, p2, Lorg/wikimedia/testkitchen/event/Event;->experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    .line 347
    .line 348
    const/16 v2, 0x11

    .line 349
    .line 350
    invoke-virtual {p1, v1, v2, p0, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_21
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    if-eqz p0, :cond_22

    .line 358
    .line 359
    goto :goto_11

    .line 360
    :cond_22
    iget-object p0, p2, Lorg/wikimedia/testkitchen/event/Event;->sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 361
    .line 362
    if-eqz p0, :cond_23

    .line 363
    .line 364
    :goto_11
    sget-object p0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$$serializer;

    .line 365
    .line 366
    iget-object p2, p2, Lorg/wikimedia/testkitchen/event/Event;->sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 367
    .line 368
    const/16 v0, 0x12

    .line 369
    .line 370
    invoke-virtual {p1, v1, v0, p0, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_23
    invoke-virtual {p1, v1}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 374
    .line 375
    .line 376
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
