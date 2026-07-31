.class public final synthetic Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

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
    iget v1, v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v0, v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

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
    move-object/from16 v14, p1

    .line 17
    .line 18
    check-cast v14, Landroidx/compose/runtime/GapComposer;

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
    sget v7, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 29
    .line 30
    and-int/lit8 v7, v1, 0x3

    .line 31
    .line 32
    if-eq v7, v5, :cond_0

    .line 33
    .line 34
    move v7, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v7, v4

    .line 37
    :goto_0
    and-int/2addr v1, v6

    .line 38
    invoke-virtual {v14, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_d

    .line 43
    .line 44
    iget-object v1, v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 45
    .line 46
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 51
    .line 52
    iget-object v1, v1, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    .line 54
    invoke-static {v1, v14}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v8, v1

    .line 63
    check-cast v8, Lorg/wikipedia/util/UiState;

    .line 64
    .line 65
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Landroidx/compose/foundation/layout/OffsetKt;->imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 84
    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    if-ne v9, v10, :cond_2

    .line 88
    .line 89
    :cond_1
    new-instance v9, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;

    .line 90
    .line 91
    invoke-direct {v9, v0, v4}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    if-ne v4, v10, :cond_4

    .line 110
    .line 111
    :cond_3
    new-instance v4, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 120
    .line 121
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    if-ne v11, v10, :cond_6

    .line 132
    .line 133
    :cond_5
    new-instance v11, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-direct {v11, v0, v5}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    if-nez v1, :cond_7

    .line 152
    .line 153
    if-ne v12, v10, :cond_8

    .line 154
    .line 155
    :cond_7
    new-instance v12, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/4 v1, 0x3

    .line 158
    invoke-direct {v12, v0, v1}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    if-nez v1, :cond_9

    .line 175
    .line 176
    if-ne v13, v10, :cond_a

    .line 177
    .line 178
    :cond_9
    new-instance v13, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;

    .line 179
    .line 180
    invoke-direct {v13, v0, v6}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 187
    .line 188
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    if-nez v1, :cond_b

    .line 197
    .line 198
    if-ne v6, v10, :cond_c

    .line 199
    .line 200
    :cond_b
    new-instance v6, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;

    .line 201
    .line 202
    invoke-direct {v6, v0, v5}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_c
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 209
    .line 210
    new-instance v0, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 211
    .line 212
    const/16 v1, 0xc

    .line 213
    .line 214
    invoke-direct {v0, v13, v6, v3, v1}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 215
    .line 216
    .line 217
    const/4 v15, 0x0

    .line 218
    move-object v13, v0

    .line 219
    move-object v10, v4

    .line 220
    invoke-static/range {v7 .. v15}, Lokhttp3/Cookie$Companion;->LanguagesListScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Landroidx/compose/runtime/GapComposer;I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 225
    .line 226
    .line 227
    :goto_1
    return-object v2

    .line 228
    :pswitch_0
    move-object/from16 v1, p1

    .line 229
    .line 230
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 231
    .line 232
    move-object/from16 v7, p2

    .line 233
    .line 234
    check-cast v7, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    sget v8, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 241
    .line 242
    and-int/lit8 v8, v7, 0x3

    .line 243
    .line 244
    if-eq v8, v5, :cond_e

    .line 245
    .line 246
    move v4, v6

    .line 247
    :cond_e
    and-int/lit8 v5, v7, 0x1

    .line 248
    .line 249
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_f

    .line 254
    .line 255
    new-instance v4, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;

    .line 256
    .line 257
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 258
    .line 259
    .line 260
    const v0, -0xcdd00e1

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const/16 v4, 0x30

    .line 268
    .line 269
    invoke-static {v3, v0, v1, v4, v6}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 274
    .line 275
    .line 276
    :goto_2
    return-object v2

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
