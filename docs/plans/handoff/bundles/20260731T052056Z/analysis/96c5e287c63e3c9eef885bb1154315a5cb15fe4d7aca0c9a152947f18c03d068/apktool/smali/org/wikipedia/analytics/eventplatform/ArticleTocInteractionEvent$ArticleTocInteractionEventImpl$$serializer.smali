.class public final synthetic Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "/analytics/mobile_apps/android_article_toc_interaction/1.0.0"

    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "meta"

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
    const-string v0, "is_anon"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "app_session_id"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "app_install_id"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "wiki_db"

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "page_id"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "num_opens"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "num_section_clicks"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v0, "total_open_sec"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    const-string v0, "num_sections"

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    sput-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3

    .line 1
    const/16 p0, 0xb

    .line 2
    .line 3
    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object v0, p0, v1

    .line 9
    .line 10
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aput-object v0, p0, v1

    .line 14
    .line 15
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, p0, v2

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    aput-object v0, p0, v1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    aput-object v0, p0, v1

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    aput-object v0, p0, v1

    .line 28
    .line 29
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aput-object v0, p0, v1

    .line 33
    .line 34
    const/4 v1, 0x7

    .line 35
    aput-object v0, p0, v1

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    aput-object v0, p0, v1

    .line 40
    .line 41
    const/16 v1, 0x9

    .line 42
    .line 43
    aput-object v0, p0, v1

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    aput-object v0, p0, v1

    .line 48
    .line 49
    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 19

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v4, 0x0

    .line 12
    move v5, v2

    .line 13
    move v7, v3

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
    move/from16 v18, v12

    .line 20
    .line 21
    move-object v6, v4

    .line 22
    move-object v13, v6

    .line 23
    move-object v14, v13

    .line 24
    move-object v15, v14

    .line 25
    move-object/from16 v16, v15

    .line 26
    .line 27
    :goto_0
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 30
    .line 31
    .line 32
    move-result v17

    .line 33
    packed-switch v17, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :pswitch_0
    const/16 v12, 0xa

    .line 41
    .line 42
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    or-int/lit16 v7, v7, 0x400

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_1
    const/16 v11, 0x9

    .line 50
    .line 51
    invoke-interface {v1, v0, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    or-int/lit16 v7, v7, 0x200

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    const/16 v10, 0x8

    .line 59
    .line 60
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    or-int/lit16 v7, v7, 0x100

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_3
    const/4 v9, 0x7

    .line 68
    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    or-int/lit16 v7, v7, 0x80

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_4
    const/4 v8, 0x6

    .line 76
    invoke-interface {v1, v0, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    or-int/lit8 v7, v7, 0x40

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_5
    const/4 v4, 0x5

    .line 84
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v16

    .line 88
    or-int/lit8 v7, v7, 0x20

    .line 89
    .line 90
    :goto_1
    const/4 v4, 0x0

    .line 91
    goto :goto_0

    .line 92
    :pswitch_6
    const/4 v4, 0x4

    .line 93
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    or-int/lit8 v7, v7, 0x10

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_7
    const/4 v4, 0x3

    .line 101
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    or-int/lit8 v7, v7, 0x8

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_8
    const/4 v4, 0x2

    .line 109
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 110
    .line 111
    .line 112
    move-result v18

    .line 113
    or-int/lit8 v7, v7, 0x4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_9
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    or-int/lit8 v7, v7, 0x2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_a
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;

    .line 124
    .line 125
    invoke-interface {v1, v0, v3, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    move-object v6, v4

    .line 130
    check-cast v6, Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 131
    .line 132
    or-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :pswitch_b
    move v5, v3

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 138
    .line 139
    .line 140
    move-object/from16 v17, v6

    .line 141
    .line 142
    new-instance v6, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 143
    .line 144
    invoke-direct/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/Event$Meta;Z)V

    .line 145
    .line 146
    .line 147
    return-object v6

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2, p1, p0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->write$Self(Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-virtual {p1, p0, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->pageId:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfOpens:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfSectionClicks:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->totalOpenSec:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0xa

    .line 48
    .line 49
    iget p2, p2, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numSections:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 55
    .line 56
    .line 57
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
