.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v15, p1

    .line 17
    .line 18
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    and-int/lit8 v7, v1, 0x3

    .line 29
    .line 30
    if-eq v7, v5, :cond_0

    .line 31
    .line 32
    move v7, v6

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v7, v4

    .line 35
    :goto_0
    and-int/2addr v1, v6

    .line 36
    invoke-virtual {v15, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_f

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    .line 48
    invoke-static {v1, v15}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v7, v1

    .line 57
    check-cast v7, Lorg/wikipedia/util/Resource;

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-boolean v8, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->fromSettings:Z

    .line 64
    .line 65
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    if-ne v9, v10, :cond_2

    .line 78
    .line 79
    :cond_1
    new-instance v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;

    .line 80
    .line 81
    invoke-direct {v9, v0, v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    if-ne v4, v10, :cond_4

    .line 100
    .line 101
    :cond_3
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;

    .line 102
    .line 103
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 110
    .line 111
    new-instance v1, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 112
    .line 113
    const/16 v11, 0xc

    .line 114
    .line 115
    invoke-direct {v1, v9, v4, v3, v11}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    if-ne v4, v10, :cond_6

    .line 129
    .line 130
    :cond_5
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 131
    .line 132
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 139
    .line 140
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    if-ne v5, v10, :cond_8

    .line 151
    .line 152
    :cond_7
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;

    .line 153
    .line 154
    const/4 v3, 0x3

    .line 155
    invoke-direct {v5, v0, v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    move-object v11, v5

    .line 162
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 163
    .line 164
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-nez v3, :cond_9

    .line 173
    .line 174
    if-ne v5, v10, :cond_a

    .line 175
    .line 176
    :cond_9
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;

    .line 177
    .line 178
    const/4 v3, 0x4

    .line 179
    invoke-direct {v5, v0, v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    move-object v12, v5

    .line 186
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 187
    .line 188
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-nez v3, :cond_b

    .line 197
    .line 198
    if-ne v5, v10, :cond_c

    .line 199
    .line 200
    :cond_b
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

    .line 201
    .line 202
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_c
    move-object v13, v5

    .line 209
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 210
    .line 211
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    if-nez v3, :cond_d

    .line 220
    .line 221
    if-ne v5, v10, :cond_e

    .line 222
    .line 223
    :cond_d
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;

    .line 224
    .line 225
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_e
    move-object v14, v5

    .line 232
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    move-object v9, v1

    .line 237
    move-object v10, v4

    .line 238
    invoke-static/range {v7 .. v16}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->RecommendedReadingListInterestsScreen(Lorg/wikipedia/util/Resource;ZLorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 243
    .line 244
    .line 245
    :goto_1
    return-object v2

    .line 246
    :pswitch_0
    move-object/from16 v1, p1

    .line 247
    .line 248
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 249
    .line 250
    move-object/from16 v7, p2

    .line 251
    .line 252
    check-cast v7, Ljava/lang/Integer;

    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    and-int/lit8 v8, v7, 0x3

    .line 259
    .line 260
    if-eq v8, v5, :cond_10

    .line 261
    .line 262
    move v4, v6

    .line 263
    :cond_10
    and-int/lit8 v5, v7, 0x1

    .line 264
    .line 265
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_11

    .line 270
    .line 271
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;

    .line 272
    .line 273
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V

    .line 274
    .line 275
    .line 276
    const v0, -0x5421bd3e

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const/16 v4, 0x30

    .line 284
    .line 285
    invoke-static {v3, v0, v1, v4, v6}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 290
    .line 291
    .line 292
    :goto_2
    return-object v2

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
