.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v14, p1

    .line 19
    .line 20
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    and-int/lit8 v8, v1, 0x3

    .line 31
    .line 32
    if-eq v8, v4, :cond_0

    .line 33
    .line 34
    move v4, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v4, v6

    .line 37
    :goto_0
    and-int/2addr v1, v7

    .line 38
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->uiSourceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 49
    .line 50
    invoke-static {v1, v14}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v8, v1

    .line 59
    check-cast v8, Lorg/wikipedia/util/Resource;

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-boolean v9, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->fromSettings:Z

    .line 66
    .line 67
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 76
    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    if-ne v4, v10, :cond_2

    .line 80
    .line 81
    :cond_1
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    if-ne v6, v10, :cond_4

    .line 102
    .line 103
    :cond_3
    new-instance v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2;

    .line 104
    .line 105
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 112
    .line 113
    new-instance v1, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 114
    .line 115
    const/16 v7, 0xc

    .line 116
    .line 117
    invoke-direct {v1, v4, v6, v3, v7}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    or-int/2addr v3, v4

    .line 129
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez v3, :cond_5

    .line 134
    .line 135
    if-ne v4, v10, :cond_6

    .line 136
    .line 137
    :cond_5
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;

    .line 138
    .line 139
    invoke-direct {v4, v5, v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    move-object v11, v4

    .line 146
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 147
    .line 148
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    or-int/2addr v3, v4

    .line 157
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-nez v3, :cond_7

    .line 162
    .line 163
    if-ne v4, v10, :cond_8

    .line 164
    .line 165
    :cond_7
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;

    .line 166
    .line 167
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    move-object v12, v4

    .line 174
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 175
    .line 176
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    or-int/2addr v3, v4

    .line 185
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    if-ne v4, v10, :cond_a

    .line 192
    .line 193
    :cond_9
    new-instance v4, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    const/4 v3, 0x3

    .line 196
    invoke-direct {v4, v3, v5, v0}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_a
    move-object v13, v4

    .line 203
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 204
    .line 205
    const/4 v15, 0x0

    .line 206
    move-object v10, v1

    .line 207
    invoke-static/range {v8 .. v15}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceSelectionScreen(Lorg/wikipedia/util/Resource;ZLorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    :goto_1
    return-object v2

    .line 215
    :pswitch_0
    move-object/from16 v1, p1

    .line 216
    .line 217
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 218
    .line 219
    move-object/from16 v8, p2

    .line 220
    .line 221
    check-cast v8, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    and-int/lit8 v9, v8, 0x3

    .line 228
    .line 229
    if-eq v9, v4, :cond_c

    .line 230
    .line 231
    move v6, v7

    .line 232
    :cond_c
    and-int/lit8 v4, v8, 0x1

    .line 233
    .line 234
    invoke-virtual {v1, v4, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_d

    .line 239
    .line 240
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;

    .line 241
    .line 242
    invoke-direct {v4, v0, v5, v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;Ljava/lang/String;I)V

    .line 243
    .line 244
    .line 245
    const v0, 0x2d17f9fe

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const/16 v4, 0x30

    .line 253
    .line 254
    invoke-static {v3, v0, v1, v4, v7}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 259
    .line 260
    .line 261
    :goto_2
    return-object v2

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
