.class public final synthetic Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "/analytics/mobile_apps/android_article_link_preview_interaction/1.0.0"

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
    const-string v0, "action"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "source"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "time_spent_ms"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "wiki_db"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "page_id"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v0, "version"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    sput-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    aput-object v1, p0, v2

    .line 33
    .line 34
    const/4 v2, 0x7

    .line 35
    aput-object v1, p0, v2

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    aput-object v0, p0, v2

    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    aput-object v1, p0, v0

    .line 44
    .line 45
    const/16 v0, 0xa

    .line 46
    .line 47
    aput-object v1, p0, v0

    .line 48
    .line 49
    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 19

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    move v10, v7

    .line 15
    move v14, v10

    .line 16
    move v15, v14

    .line 17
    move/from16 v17, v15

    .line 18
    .line 19
    move/from16 v18, v17

    .line 20
    .line 21
    move-object v8, v4

    .line 22
    move-object v9, v8

    .line 23
    move-object v11, v9

    .line 24
    move-object v12, v11

    .line 25
    move-object v13, v12

    .line 26
    move-object/from16 v16, v13

    .line 27
    .line 28
    :goto_0
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    packed-switch v6, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :pswitch_0
    const/16 v6, 0xa

    .line 42
    .line 43
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 44
    .line 45
    .line 46
    move-result v18

    .line 47
    or-int/lit16 v7, v7, 0x400

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v6, 0x9

    .line 51
    .line 52
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 53
    .line 54
    .line 55
    move-result v17

    .line 56
    or-int/lit16 v7, v7, 0x200

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_2
    const/16 v6, 0x8

    .line 60
    .line 61
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    or-int/lit16 v7, v7, 0x100

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_3
    const/4 v6, 0x7

    .line 69
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    or-int/lit16 v7, v7, 0x80

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_4
    const/4 v6, 0x6

    .line 77
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    or-int/lit8 v7, v7, 0x40

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_5
    const/4 v6, 0x5

    .line 85
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    or-int/lit8 v7, v7, 0x20

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_6
    const/4 v6, 0x4

    .line 93
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    or-int/lit8 v7, v7, 0x10

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_7
    const/4 v6, 0x3

    .line 101
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    or-int/lit8 v7, v7, 0x8

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_8
    const/4 v6, 0x2

    .line 109
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    or-int/lit8 v7, v7, 0x4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_9
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    or-int/lit8 v7, v7, 0x2

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_a
    sget-object v6, Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;

    .line 124
    .line 125
    invoke-interface {v1, v0, v3, v6, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    move-object v8, v6

    .line 130
    check-cast v8, Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 131
    .line 132
    or-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    goto :goto_0

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
    new-instance v6, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 141
    .line 142
    invoke-direct/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    return-object v6

    .line 146
    nop

    .line 147
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
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    iget-object v0, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->action:Ljava/lang/String;

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
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->source:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->timeSpentMs:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->pageId:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0xa

    .line 48
    .line 49
    iget p2, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->version:I

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
