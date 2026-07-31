.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState"

    .line 11
    .line 12
    const/4 v3, 0x7

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "totalQuestions"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "currentQuestionIndex"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "answerState"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "currentQuestionState"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "status"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "gamePlayDate"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "lastActiveDate"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3

    .line 1
    sget-object p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 5
    .line 6
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aget-object p0, p0, v2

    .line 16
    .line 17
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    aput-object p0, v0, v2

    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    sget-object v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;

    .line 25
    .line 26
    aput-object v2, v0, p0

    .line 27
    .line 28
    const/4 p0, 0x4

    .line 29
    aput-object v1, v0, p0

    .line 30
    .line 31
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    aput-object p0, v0, v1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    aput-object p0, v0, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 16

    .line 1
    sget-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move v6, v3

    .line 15
    move v8, v4

    .line 16
    move v9, v8

    .line 17
    move v10, v9

    .line 18
    move v13, v10

    .line 19
    move-object v11, v5

    .line 20
    move-object v12, v11

    .line 21
    move-object v14, v12

    .line 22
    move-object v15, v14

    .line 23
    :goto_0
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    packed-switch v7, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 33
    .line 34
    .line 35
    return-object v5

    .line 36
    :pswitch_0
    const/4 v7, 0x6

    .line 37
    invoke-interface {v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    or-int/lit8 v8, v8, 0x40

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v7, 0x5

    .line 45
    invoke-interface {v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    or-int/lit8 v8, v8, 0x20

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    const/4 v7, 0x4

    .line 53
    invoke-interface {v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    or-int/lit8 v8, v8, 0x10

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_3
    sget-object v7, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;

    .line 61
    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-interface {v1, v0, v5, v7, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move-object v12, v5

    .line 68
    check-cast v12, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 69
    .line 70
    or-int/lit8 v8, v8, 0x8

    .line 71
    .line 72
    :goto_1
    const/4 v5, 0x0

    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    const/4 v5, 0x2

    .line 75
    aget-object v7, v2, v5

    .line 76
    .line 77
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 82
    .line 83
    invoke-interface {v1, v0, v5, v7, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    move-object v11, v5

    .line 88
    check-cast v11, Ljava/util/List;

    .line 89
    .line 90
    or-int/lit8 v8, v8, 0x4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_5
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    or-int/lit8 v8, v8, 0x2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_6
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    or-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_7
    move v6, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 113
    .line 114
    invoke-direct/range {v7 .. v15}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;-><init>(IIILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v7

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 7
    .line 8
    iget v0, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 9
    .line 10
    iget v1, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v3, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->$childSerializers:[Lkotlin/Lazy;

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eq v1, v4, :cond_1

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1, v5, v1, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    :goto_1
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x5

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    :goto_2
    if-ge v5, v1, :cond_5

    .line 66
    .line 67
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    :goto_3
    const/4 v0, 0x2

    .line 82
    aget-object v3, v3, v0

    .line 83
    .line 84
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 89
    .line 90
    invoke-virtual {p1, v2, v0, v3, p0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    sget-object p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;

    .line 94
    .line 95
    iget-object v0, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 96
    .line 97
    iget-object v3, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v4, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 100
    .line 101
    iget p2, p2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    invoke-virtual {p1, v2, v5, p0, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_7

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    if-eqz p2, :cond_8

    .line 115
    .line 116
    :goto_4
    const/4 p0, 0x4

    .line 117
    invoke-virtual {p1, p0, p2, v2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    const-string p2, ""

    .line 125
    .line 126
    if-eqz p0, :cond_9

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_9
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_a

    .line 134
    .line 135
    :goto_5
    invoke-virtual {p1, v2, v1, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_b

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_b
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_c

    .line 150
    .line 151
    :goto_6
    const/4 p0, 0x6

    .line 152
    invoke-virtual {p1, v2, p0, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_c
    invoke-virtual {p1, v2}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 156
    .line 157
    .line 158
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
