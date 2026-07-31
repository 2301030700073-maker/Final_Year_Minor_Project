.class public final synthetic Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/newpipe/app/ComposeActivity;


# direct methods
.method public synthetic constructor <init>(Lnet/newpipe/app/ComposeActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;->f$0:Lnet/newpipe/app/ComposeActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    sget v8, Lnet/newpipe/app/ComposeActivity;->$r8$clinit:I

    .line 28
    .line 29
    and-int/lit8 v8, v7, 0x3

    .line 30
    .line 31
    if-eq v8, v4, :cond_0

    .line 32
    .line 33
    move v4, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v6

    .line 36
    :goto_0
    and-int/2addr v5, v7

    .line 37
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/view/View;

    .line 52
    .line 53
    invoke-static {v1}, Lnet/newpipe/app/theme/ServiceThemeKt;->currentService(Landroidx/compose/runtime/Composer;)Lnet/newpipe/app/theme/Service;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v0, v0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;->f$0:Lnet/newpipe/app/ComposeActivity;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    or-int/2addr v7, v8

    .line 68
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    or-int/2addr v7, v8

    .line 77
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-nez v7, :cond_1

    .line 82
    .line 83
    if-ne v8, v3, :cond_2

    .line 84
    .line 85
    :cond_1
    new-instance v8, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;

    .line 86
    .line 87
    invoke-direct {v8, v6, v0, v4, v5}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 94
    .line 95
    invoke-static {v5, v8, v1}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-object v2

    .line 103
    :pswitch_0
    move-object/from16 v1, p1

    .line 104
    .line 105
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 106
    .line 107
    move-object/from16 v7, p2

    .line 108
    .line 109
    check-cast v7, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    sget v8, Lnet/newpipe/app/ComposeActivity;->$r8$clinit:I

    .line 116
    .line 117
    and-int/lit8 v8, v7, 0x3

    .line 118
    .line 119
    if-eq v8, v4, :cond_4

    .line 120
    .line 121
    move v6, v5

    .line 122
    :cond_4
    and-int/lit8 v4, v7, 0x1

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    invoke-virtual {v1, v4, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    sget-object v7, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 133
    .line 134
    iget-object v0, v0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;->f$0:Lnet/newpipe/app/ComposeActivity;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v6, "SCREEN"

    .line 141
    .line 142
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    sget-object v6, Lnet/newpipe/app/navigation/Destination;->Companion:Lnet/newpipe/app/navigation/Destination$Companion;

    .line 153
    .line 154
    invoke-virtual {v6}, Lnet/newpipe/app/navigation/Destination$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    move-object v12, v6

    .line 159
    check-cast v12, Lkotlinx/serialization/KSerializer;

    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v4}, Lkotlinx/serialization/json/internal/WriteModeKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    new-instance v6, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 169
    .line 170
    invoke-interface {v12}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    const/4 v11, 0x0

    .line 175
    sget-object v8, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 176
    .line 177
    invoke-direct/range {v6 .. v11}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/google/common/base/Joiner;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v12}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V

    .line 185
    .line 186
    .line 187
    check-cast v4, Lnet/newpipe/app/navigation/Destination;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-nez v6, :cond_6

    .line 198
    .line 199
    if-ne v7, v3, :cond_5

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    move-object v10, v0

    .line 203
    goto :goto_3

    .line 204
    :cond_6
    :goto_2
    new-instance v8, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 205
    .line 206
    const/4 v14, 0x0

    .line 207
    const/4 v15, 0x4

    .line 208
    const/4 v9, 0x0

    .line 209
    const-class v11, Lnet/newpipe/app/ComposeActivity;

    .line 210
    .line 211
    const-string v12, "finish"

    .line 212
    .line 213
    const-string v13, "finish()V"

    .line 214
    .line 215
    move-object v10, v0

    .line 216
    invoke-direct/range {v8 .. v15}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    move-object v7, v8

    .line 223
    :goto_3
    check-cast v7, Lkotlin/jvm/internal/FunctionReference;

    .line 224
    .line 225
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 226
    .line 227
    new-instance v0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    invoke-direct {v0, v10, v5}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda0;-><init>(Lnet/newpipe/app/ComposeActivity;I)V

    .line 230
    .line 231
    .line 232
    const v3, -0x3d6d5f98

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const/16 v3, 0x180

    .line 240
    .line 241
    invoke-static {v4, v7, v0, v1, v3}, Lnet/newpipe/app/AppKt;->App(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 246
    .line 247
    .line 248
    :goto_4
    return-object v2

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
