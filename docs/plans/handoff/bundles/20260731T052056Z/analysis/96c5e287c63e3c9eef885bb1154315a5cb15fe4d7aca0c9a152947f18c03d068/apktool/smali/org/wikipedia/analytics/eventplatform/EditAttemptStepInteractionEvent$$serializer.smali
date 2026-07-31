.class public final synthetic Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.analytics.eventplatform.EditAttemptStepInteractionEvent"

    .line 11
    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "action"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "app_install_id"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "editing_session_id"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "editor_interface"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "integration"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "mw_version"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "platform"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "user_editcount"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "user_id"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "is_anon"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v0, "user_is_temp"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v0, "version"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    const-string v0, "page_title"

    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    const-string v0, "page_ns"

    .line 88
    .line 89
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "wiki"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    sput-object v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    const/16 p0, 0xf

    .line 2
    .line 3
    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    aput-object v1, p0, v2

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    aput-object v1, p0, v2

    .line 36
    .line 37
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 38
    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    aput-object v2, p0, v3

    .line 42
    .line 43
    const/16 v3, 0xa

    .line 44
    .line 45
    aput-object v2, p0, v3

    .line 46
    .line 47
    const/16 v2, 0xb

    .line 48
    .line 49
    aput-object v1, p0, v2

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    aput-object v0, p0, v2

    .line 54
    .line 55
    const/16 v2, 0xd

    .line 56
    .line 57
    aput-object v1, p0, v2

    .line 58
    .line 59
    const/16 v1, 0xe

    .line 60
    .line 61
    aput-object v0, p0, v1

    .line 62
    .line 63
    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 23

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    move v15, v7

    .line 15
    move/from16 v16, v15

    .line 16
    .line 17
    move/from16 v17, v16

    .line 18
    .line 19
    move/from16 v18, v17

    .line 20
    .line 21
    move/from16 v19, v18

    .line 22
    .line 23
    move/from16 v21, v19

    .line 24
    .line 25
    move-object v8, v4

    .line 26
    move-object v9, v8

    .line 27
    move-object v10, v9

    .line 28
    move-object v11, v10

    .line 29
    move-object v12, v11

    .line 30
    move-object v13, v12

    .line 31
    move-object v14, v13

    .line 32
    move-object/from16 v20, v14

    .line 33
    .line 34
    move-object/from16 v22, v20

    .line 35
    .line 36
    :goto_0
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    packed-switch v6, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 46
    .line 47
    .line 48
    return-object v4

    .line 49
    :pswitch_0
    const/16 v6, 0xe

    .line 50
    .line 51
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v22

    .line 55
    or-int/lit16 v7, v7, 0x4000

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    const/16 v6, 0xd

    .line 59
    .line 60
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 61
    .line 62
    .line 63
    move-result v21

    .line 64
    or-int/lit16 v7, v7, 0x2000

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    const/16 v6, 0xc

    .line 68
    .line 69
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v20

    .line 73
    or-int/lit16 v7, v7, 0x1000

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_3
    const/16 v6, 0xb

    .line 77
    .line 78
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 79
    .line 80
    .line 81
    move-result v19

    .line 82
    or-int/lit16 v7, v7, 0x800

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_4
    const/16 v6, 0xa

    .line 86
    .line 87
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 88
    .line 89
    .line 90
    move-result v18

    .line 91
    or-int/lit16 v7, v7, 0x400

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_5
    const/16 v6, 0x9

    .line 95
    .line 96
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    or-int/lit16 v7, v7, 0x200

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_6
    const/16 v6, 0x8

    .line 104
    .line 105
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    or-int/lit16 v7, v7, 0x100

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_7
    const/4 v6, 0x7

    .line 113
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    or-int/lit16 v7, v7, 0x80

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_8
    const/4 v6, 0x6

    .line 121
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    or-int/lit8 v7, v7, 0x40

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_9
    const/4 v6, 0x5

    .line 129
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    or-int/lit8 v7, v7, 0x20

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_a
    const/4 v6, 0x4

    .line 137
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    or-int/lit8 v7, v7, 0x10

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_b
    const/4 v6, 0x3

    .line 145
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    or-int/lit8 v7, v7, 0x8

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_c
    const/4 v6, 0x2

    .line 153
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    or-int/lit8 v7, v7, 0x4

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_d
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    or-int/lit8 v7, v7, 0x2

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_e
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    or-int/lit8 v7, v7, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_f
    move v5, v3

    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 180
    .line 181
    .line 182
    new-instance v6, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;

    .line 183
    .line 184
    invoke-direct/range {v6 .. v22}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v6

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->action:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p0, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->app_install_id:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editing_session_id:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editor_interface:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->integration:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->mw_version:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->platform:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_editcount:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_id:I

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x9

    .line 68
    .line 69
    iget-boolean v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->is_anon:Z

    .line 70
    .line 71
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0xa

    .line 75
    .line 76
    iget-boolean v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_is_temp:Z

    .line 77
    .line 78
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 79
    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->version:I

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 86
    .line 87
    .line 88
    const/16 v0, 0xc

    .line 89
    .line 90
    iget-object v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_title:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0xd

    .line 96
    .line 97
    iget v1, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_ns:I

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 100
    .line 101
    .line 102
    const/16 v0, 0xe

    .line 103
    .line 104
    iget-object p2, p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->wiki:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, p0, v0, p2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 110
    .line 111
    .line 112
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
