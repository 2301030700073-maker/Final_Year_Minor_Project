.class public abstract Landroidx/work/Operation$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static _delete:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _send:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final AccountOAuthView(Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v6, p5

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x65dd0602

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v6, 0x6

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    move-object/from16 v3, p0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x2

    .line 37
    :goto_0
    or-int/2addr v0, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v0, v6

    .line 40
    :goto_1
    and-int/lit8 v4, v6, 0x30

    .line 41
    .line 42
    const/16 v5, 0x20

    .line 43
    .line 44
    if-nez v4, :cond_4

    .line 45
    .line 46
    and-int/lit8 v4, v6, 0x40

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    :goto_2
    if-eqz v4, :cond_3

    .line 60
    .line 61
    move v4, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v4, 0x10

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v4

    .line 66
    :cond_4
    or-int/lit16 v4, v0, 0x180

    .line 67
    .line 68
    and-int/lit8 v8, p6, 0x8

    .line 69
    .line 70
    if-eqz v8, :cond_6

    .line 71
    .line 72
    or-int/lit16 v4, v0, 0xd80

    .line 73
    .line 74
    :cond_5
    move/from16 v0, p3

    .line 75
    .line 76
    :goto_4
    move v9, v4

    .line 77
    goto :goto_6

    .line 78
    :cond_6
    and-int/lit16 v0, v6, 0xc00

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    move/from16 v0, p3

    .line 83
    .line 84
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_7

    .line 89
    .line 90
    const/16 v9, 0x800

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    const/16 v9, 0x400

    .line 94
    .line 95
    :goto_5
    or-int/2addr v4, v9

    .line 96
    goto :goto_4

    .line 97
    :goto_6
    and-int/lit16 v4, v9, 0x493

    .line 98
    .line 99
    const/16 v10, 0x492

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x1

    .line 103
    if-eq v4, v10, :cond_8

    .line 104
    .line 105
    move v4, v12

    .line 106
    goto :goto_7

    .line 107
    :cond_8
    move v4, v11

    .line 108
    :goto_7
    and-int/lit8 v10, v9, 0x1

    .line 109
    .line 110
    invoke-virtual {v7, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_15

    .line 115
    .line 116
    if-eqz v8, :cond_9

    .line 117
    .line 118
    move v8, v12

    .line 119
    goto :goto_8

    .line 120
    :cond_9
    move v8, v0

    .line 121
    :goto_8
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 122
    .line 123
    const/4 v4, 0x6

    .line 124
    invoke-direct {v0, v4}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 125
    .line 126
    .line 127
    and-int/lit8 v10, v9, 0x70

    .line 128
    .line 129
    if-eq v10, v5, :cond_b

    .line 130
    .line 131
    and-int/lit8 v5, v9, 0x40

    .line 132
    .line 133
    if-eqz v5, :cond_a

    .line 134
    .line 135
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_a

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_a
    move v5, v11

    .line 143
    goto :goto_a

    .line 144
    :cond_b
    :goto_9
    move v5, v12

    .line 145
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 150
    .line 151
    if-nez v5, :cond_c

    .line 152
    .line 153
    if-ne v10, v13, :cond_d

    .line 154
    .line 155
    :cond_c
    new-instance v10, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/16 v5, 0x16

    .line 158
    .line 159
    invoke-direct {v10, v5, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_d
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 166
    .line 167
    invoke-static {v0, v10, v7}, Landroidx/room/util/DBUtil;->rememberLauncherForActivityResult(Lcom/fsck/k9/sasl/OAuthBearer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    shr-int/lit8 v5, v9, 0x3

    .line 172
    .line 173
    move-object v10, v1

    .line 174
    check-cast v10, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;

    .line 175
    .line 176
    iget-object v14, v10, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 177
    .line 178
    invoke-static {v14, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    and-int/lit8 v15, v5, 0xe

    .line 183
    .line 184
    xor-int/2addr v15, v4

    .line 185
    if-le v15, v2, :cond_e

    .line 186
    .line 187
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-nez v15, :cond_10

    .line 192
    .line 193
    :cond_e
    and-int/2addr v4, v5

    .line 194
    if-ne v4, v2, :cond_f

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :cond_f
    move v12, v11

    .line 198
    :cond_10
    :goto_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-nez v12, :cond_11

    .line 203
    .line 204
    if-ne v2, v13, :cond_12

    .line 205
    .line 206
    :cond_11
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 207
    .line 208
    invoke-direct {v2, v1, v11}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_12
    move-object v11, v2

    .line 215
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 216
    .line 217
    iget-object v10, v10, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 218
    .line 219
    move-object v4, v0

    .line 220
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    const/16 v5, 0xf

    .line 224
    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-static {v7, v10, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 242
    .line 243
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-nez v1, :cond_13

    .line 252
    .line 253
    if-ne v2, v13, :cond_14

    .line 254
    .line 255
    :cond_13
    new-instance v2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 256
    .line 257
    const/4 v1, 0x7

    .line 258
    invoke-direct {v2, v1, v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 265
    .line 266
    and-int/lit16 v1, v9, 0x1f80

    .line 267
    .line 268
    invoke-static {v0, v2, v8, v7, v1}, Lkotlin/math/MathKt;->AccountOAuthContent(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    .line 269
    .line 270
    .line 271
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 272
    .line 273
    move-object v3, v0

    .line 274
    move v4, v8

    .line 275
    goto :goto_c

    .line 276
    :cond_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 277
    .line 278
    .line 279
    move-object/from16 v3, p2

    .line 280
    .line 281
    move v4, v0

    .line 282
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    if-eqz v7, :cond_16

    .line 287
    .line 288
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;

    .line 289
    .line 290
    move-object/from16 v1, p0

    .line 291
    .line 292
    move-object/from16 v2, p1

    .line 293
    .line 294
    move v5, v6

    .line 295
    move/from16 v6, p6

    .line 296
    .line 297
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroidx/compose/ui/Modifier;ZII)V

    .line 298
    .line 299
    .line 300
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    :cond_16
    return-void
.end method

.method public static final CircularArrowProgressIndicator-RPmYEkk(Landroidx/compose/material3/internal/FloatProducer;JLandroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p1

    .line 4
    .line 5
    move/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x50adbae4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x4

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, v7

    .line 28
    invoke-virtual {v11, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/16 v6, 0x20

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v5, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v5

    .line 41
    and-int/lit8 v5, v0, 0x13

    .line 42
    .line 43
    const/16 v8, 0x12

    .line 44
    .line 45
    const/4 v15, 0x1

    .line 46
    if-eq v5, v8, :cond_2

    .line 47
    .line 48
    move v5, v15

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v5, 0x0

    .line 51
    :goto_2
    and-int/lit8 v8, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {v11, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_c

    .line 58
    .line 59
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 64
    .line 65
    if-ne v5, v8, :cond_3

    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v15}, Landroidx/compose/ui/graphics/AndroidPath;->setFillType-oQ8Xj4U(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    check-cast v5, Landroidx/compose/ui/graphics/AndroidPath;

    .line 78
    .line 79
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const/4 v10, 0x6

    .line 84
    if-ne v9, v8, :cond_4

    .line 85
    .line 86
    new-instance v9, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 87
    .line 88
    invoke-direct {v9, v10, v1}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    check-cast v9, Landroidx/compose/runtime/State;

    .line 99
    .line 100
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Ljava/lang/Number;

    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 111
    .line 112
    invoke-static {v12, v11}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    move-object v13, v8

    .line 117
    move v8, v9

    .line 118
    move-object v9, v12

    .line 119
    const/4 v12, 0x0

    .line 120
    move-object/from16 v16, v13

    .line 121
    .line 122
    const/16 v13, 0x1c

    .line 123
    .line 124
    move/from16 v17, v10

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    move-object/from16 v14, v16

    .line 128
    .line 129
    move/from16 v15, v17

    .line 130
    .line 131
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    and-int/lit8 v9, v0, 0xe

    .line 136
    .line 137
    if-eq v9, v2, :cond_5

    .line 138
    .line 139
    const/4 v10, 0x0

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    const/4 v10, 0x1

    .line 142
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    if-nez v10, :cond_6

    .line 147
    .line 148
    if-ne v12, v14, :cond_7

    .line 149
    .line 150
    :cond_6
    new-instance v12, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {v12, v15, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    new-instance v10, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;

    .line 161
    .line 162
    invoke-direct {v10, v12}, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 163
    .line 164
    .line 165
    const/high16 v12, 0x41800000    # 16.0f

    .line 166
    .line 167
    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    if-eq v9, v2, :cond_8

    .line 172
    .line 173
    const/4 v2, 0x0

    .line 174
    goto :goto_4

    .line 175
    :cond_8
    const/4 v2, 0x1

    .line 176
    :goto_4
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    or-int/2addr v2, v9

    .line 181
    and-int/lit8 v0, v0, 0x70

    .line 182
    .line 183
    if-ne v0, v6, :cond_9

    .line 184
    .line 185
    const/4 v15, 0x1

    .line 186
    goto :goto_5

    .line 187
    :cond_9
    const/4 v15, 0x0

    .line 188
    :goto_5
    or-int v0, v2, v15

    .line 189
    .line 190
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    or-int/2addr v0, v2

    .line 195
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-nez v0, :cond_a

    .line 200
    .line 201
    if-ne v2, v14, :cond_b

    .line 202
    .line 203
    :cond_a
    new-instance v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    const/4 v6, 0x2

    .line 206
    move-object v2, v8

    .line 207
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    move-object v2, v0

    .line 214
    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    invoke-static {v0, v11, v10, v2}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 222
    .line 223
    .line 224
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_d

    .line 229
    .line 230
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;

    .line 231
    .line 232
    invoke-direct {v2, v1, v3, v4, v7}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/material3/internal/FloatProducer;JI)V

    .line 233
    .line 234
    .line 235
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 236
    .line 237
    :cond_d
    return-void
.end method

.method public static final ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentType;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/ui/autofill/AndroidContentType;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static Density$default()Landroidx/compose/ui/unit/DensityImpl;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final FeatureLauncherNavHost(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/app/common/feature/MessageListLauncher;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v13, p12

    .line 10
    .line 11
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x5c50836d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p13, v0

    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    const v1, 0x12492580

    .line 45
    .line 46
    .line 47
    or-int/2addr v0, v1

    .line 48
    const v1, 0x12492493

    .line 49
    .line 50
    .line 51
    and-int/2addr v1, v0

    .line 52
    const v4, 0x12492492

    .line 53
    .line 54
    .line 55
    if-ne v1, v4, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v1, 0x1

    .line 60
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v13, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1a

    .line 67
    .line 68
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 69
    .line 70
    .line 71
    and-int/lit8 v1, p13, 0x1

    .line 72
    .line 73
    const v4, -0x7ffffc01

    .line 74
    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 89
    .line 90
    .line 91
    and-int/2addr v0, v4

    .line 92
    move-object/from16 v14, p2

    .line 93
    .line 94
    move-object/from16 v10, p3

    .line 95
    .line 96
    move-object/from16 v6, p4

    .line 97
    .line 98
    move-object/from16 v5, p6

    .line 99
    .line 100
    move-object/from16 v3, p7

    .line 101
    .line 102
    move-object/from16 v9, p9

    .line 103
    .line 104
    move-object/from16 v4, p10

    .line 105
    .line 106
    move-object/from16 v1, p11

    .line 107
    .line 108
    move v11, v0

    .line 109
    move-object v15, v7

    .line 110
    move-object/from16 v7, p5

    .line 111
    .line 112
    move-object/from16 v0, p8

    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_4
    :goto_3
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    or-int/2addr v9, v10

    .line 129
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    if-nez v9, :cond_5

    .line 134
    .line 135
    if-ne v10, v8, :cond_6

    .line 136
    .line 137
    :cond_5
    const-class v9, Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 138
    .line 139
    invoke-static {v9, v1, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    :cond_6
    move-object v1, v10

    .line 144
    check-cast v1, Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 145
    .line 146
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    or-int/2addr v10, v11

    .line 159
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    if-nez v10, :cond_7

    .line 164
    .line 165
    if-ne v11, v8, :cond_8

    .line 166
    .line 167
    :cond_7
    const-class v10, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 168
    .line 169
    invoke-static {v10, v9, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    :cond_8
    move-object v9, v11

    .line 174
    check-cast v9, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 175
    .line 176
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    or-int/2addr v11, v14

    .line 189
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    if-nez v11, :cond_9

    .line 194
    .line 195
    if-ne v14, v8, :cond_a

    .line 196
    .line 197
    :cond_9
    const-class v11, Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 198
    .line 199
    invoke-static {v11, v10, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    :cond_a
    move-object v10, v14

    .line 204
    check-cast v10, Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 205
    .line 206
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    or-int/2addr v14, v15

    .line 219
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    if-nez v14, :cond_b

    .line 224
    .line 225
    if-ne v15, v8, :cond_c

    .line 226
    .line 227
    :cond_b
    const-class v14, Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 228
    .line 229
    invoke-static {v14, v11, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    :cond_c
    move-object v11, v15

    .line 234
    check-cast v11, Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 235
    .line 236
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v16

    .line 248
    or-int v15, v15, v16

    .line 249
    .line 250
    move/from16 p12, v4

    .line 251
    .line 252
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    if-nez v15, :cond_d

    .line 257
    .line 258
    if-ne v4, v8, :cond_e

    .line 259
    .line 260
    :cond_d
    const-class v4, Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 261
    .line 262
    invoke-static {v4, v14, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    :cond_e
    check-cast v4, Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 267
    .line 268
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 269
    .line 270
    .line 271
    move-result-object v14

    .line 272
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v16

    .line 280
    or-int v15, v15, v16

    .line 281
    .line 282
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    if-nez v15, :cond_f

    .line 287
    .line 288
    if-ne v5, v8, :cond_10

    .line 289
    .line 290
    :cond_f
    const-class v5, Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 291
    .line 292
    invoke-static {v5, v14, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    :cond_10
    check-cast v5, Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 297
    .line 298
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v17

    .line 310
    or-int v15, v15, v17

    .line 311
    .line 312
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    if-nez v15, :cond_11

    .line 317
    .line 318
    if-ne v6, v8, :cond_12

    .line 319
    .line 320
    :cond_11
    const-class v6, Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 321
    .line 322
    invoke-static {v6, v14, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    :cond_12
    check-cast v6, Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 327
    .line 328
    and-int v0, v0, p12

    .line 329
    .line 330
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 331
    .line 332
    .line 333
    move-result-object v14

    .line 334
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v18

    .line 342
    or-int v15, v15, v18

    .line 343
    .line 344
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    if-nez v15, :cond_13

    .line 349
    .line 350
    if-ne v3, v8, :cond_14

    .line 351
    .line 352
    :cond_13
    const-class v3, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 353
    .line 354
    invoke-static {v3, v14, v7, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    :cond_14
    check-cast v3, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 359
    .line 360
    invoke-static {v13}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v18

    .line 372
    or-int v15, v15, v18

    .line 373
    .line 374
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    if-nez v15, :cond_16

    .line 379
    .line 380
    if-ne v7, v8, :cond_15

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_15
    const/4 v15, 0x0

    .line 384
    goto :goto_5

    .line 385
    :cond_16
    :goto_4
    const-class v7, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 386
    .line 387
    const/4 v15, 0x0

    .line 388
    invoke-static {v7, v14, v15, v15, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    :goto_5
    check-cast v7, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 393
    .line 394
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 395
    .line 396
    move-object/from16 v24, v11

    .line 397
    .line 398
    move v11, v0

    .line 399
    move-object v0, v5

    .line 400
    move-object/from16 v5, v24

    .line 401
    .line 402
    move-object/from16 v24, v10

    .line 403
    .line 404
    move-object v10, v1

    .line 405
    move-object v1, v7

    .line 406
    move-object/from16 v7, v24

    .line 407
    .line 408
    move-object/from16 v24, v4

    .line 409
    .line 410
    move-object v4, v3

    .line 411
    move-object/from16 v3, v24

    .line 412
    .line 413
    move-object/from16 v24, v9

    .line 414
    .line 415
    move-object v9, v6

    .line 416
    move-object/from16 v6, v24

    .line 417
    .line 418
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 419
    .line 420
    .line 421
    sget-object v15, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 422
    .line 423
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v15

    .line 427
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    check-cast v15, Landroidx/activity/ComponentActivity;

    .line 431
    .line 432
    move-object/from16 p2, v14

    .line 433
    .line 434
    new-instance v14, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 435
    .line 436
    const/4 v2, 0x0

    .line 437
    invoke-direct {v14, v2}, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    move-object/from16 v18, v1

    .line 445
    .line 446
    and-int/lit8 v1, v11, 0x70

    .line 447
    .line 448
    move/from16 p3, v2

    .line 449
    .line 450
    const/16 v2, 0x20

    .line 451
    .line 452
    if-ne v1, v2, :cond_17

    .line 453
    .line 454
    const/16 v16, 0x1

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_17
    const/16 v16, 0x0

    .line 458
    .line 459
    :goto_7
    or-int v1, p3, v16

    .line 460
    .line 461
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    or-int/2addr v1, v2

    .line 466
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    or-int/2addr v1, v2

    .line 471
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    or-int/2addr v1, v2

    .line 476
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    or-int/2addr v1, v2

    .line 481
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    or-int/2addr v1, v2

    .line 486
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    or-int/2addr v1, v2

    .line 491
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    or-int/2addr v1, v2

    .line 496
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    or-int/2addr v1, v2

    .line 501
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    or-int/2addr v1, v2

    .line 506
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    or-int/2addr v1, v2

    .line 511
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    if-nez v1, :cond_18

    .line 516
    .line 517
    if-ne v2, v8, :cond_19

    .line 518
    .line 519
    :cond_18
    move-object v8, v0

    .line 520
    goto :goto_8

    .line 521
    :cond_19
    move-object/from16 v22, v0

    .line 522
    .line 523
    move-object v12, v3

    .line 524
    move-object/from16 v17, v4

    .line 525
    .line 526
    move-object/from16 v19, v5

    .line 527
    .line 528
    move-object/from16 v20, v6

    .line 529
    .line 530
    move-object/from16 v21, v7

    .line 531
    .line 532
    move-object/from16 v23, v9

    .line 533
    .line 534
    move-object/from16 v16, v10

    .line 535
    .line 536
    move v15, v11

    .line 537
    goto :goto_9

    .line 538
    :goto_8
    new-instance v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;

    .line 539
    .line 540
    move-object v1, v15

    .line 541
    move v15, v11

    .line 542
    move-object v11, v1

    .line 543
    move-object/from16 v2, p1

    .line 544
    .line 545
    move-object/from16 v1, v18

    .line 546
    .line 547
    invoke-direct/range {v0 .. v12}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;Landroidx/navigation/NavHostController;)V

    .line 548
    .line 549
    .line 550
    move-object v12, v3

    .line 551
    move-object/from16 v17, v4

    .line 552
    .line 553
    move-object/from16 v19, v5

    .line 554
    .line 555
    move-object/from16 v20, v6

    .line 556
    .line 557
    move-object/from16 v21, v7

    .line 558
    .line 559
    move-object/from16 v22, v8

    .line 560
    .line 561
    move-object/from16 v23, v9

    .line 562
    .line 563
    move-object/from16 v16, v10

    .line 564
    .line 565
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    move-object v2, v0

    .line 569
    :goto_9
    move-object v9, v2

    .line 570
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 571
    .line 572
    and-int/lit16 v11, v15, 0x38e

    .line 573
    .line 574
    const/4 v3, 0x0

    .line 575
    const/4 v4, 0x0

    .line 576
    const/4 v5, 0x0

    .line 577
    const/4 v6, 0x0

    .line 578
    const/4 v7, 0x0

    .line 579
    const/4 v8, 0x0

    .line 580
    move-object/from16 v0, p0

    .line 581
    .line 582
    move-object/from16 v2, p2

    .line 583
    .line 584
    move-object v10, v13

    .line 585
    move-object v1, v14

    .line 586
    invoke-static/range {v0 .. v11}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->NavHost(Landroidx/navigation/NavHostController;Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 587
    .line 588
    .line 589
    move-object v3, v2

    .line 590
    move-object v0, v10

    .line 591
    move-object v8, v12

    .line 592
    move-object/from16 v4, v16

    .line 593
    .line 594
    move-object/from16 v11, v17

    .line 595
    .line 596
    move-object/from16 v12, v18

    .line 597
    .line 598
    move-object/from16 v7, v19

    .line 599
    .line 600
    move-object/from16 v5, v20

    .line 601
    .line 602
    move-object/from16 v6, v21

    .line 603
    .line 604
    move-object/from16 v9, v22

    .line 605
    .line 606
    move-object/from16 v10, v23

    .line 607
    .line 608
    goto :goto_a

    .line 609
    :cond_1a
    move-object v10, v13

    .line 610
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 611
    .line 612
    .line 613
    move-object/from16 v3, p2

    .line 614
    .line 615
    move-object/from16 v4, p3

    .line 616
    .line 617
    move-object/from16 v5, p4

    .line 618
    .line 619
    move-object/from16 v6, p5

    .line 620
    .line 621
    move-object/from16 v7, p6

    .line 622
    .line 623
    move-object/from16 v8, p7

    .line 624
    .line 625
    move-object/from16 v9, p8

    .line 626
    .line 627
    move-object/from16 v11, p10

    .line 628
    .line 629
    move-object/from16 v12, p11

    .line 630
    .line 631
    move-object v0, v10

    .line 632
    move-object/from16 v10, p9

    .line 633
    .line 634
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 635
    .line 636
    .line 637
    move-result-object v14

    .line 638
    if-eqz v14, :cond_1b

    .line 639
    .line 640
    new-instance v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;

    .line 641
    .line 642
    move-object/from16 v1, p0

    .line 643
    .line 644
    move-object/from16 v2, p1

    .line 645
    .line 646
    move/from16 v13, p13

    .line 647
    .line 648
    invoke-direct/range {v0 .. v13}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/app/common/feature/MessageListLauncher;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;I)V

    .line 649
    .line 650
    .line 651
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 652
    .line 653
    :cond_1b
    return-void
.end method

.method public static final GridItemSpan(I)J
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-string v0, "The span value should be higher than 0"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    int-to-long v0, p0

    .line 14
    return-wide v0
.end method

.method public static final NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p6

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v1, 0xca30901

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v1, v7, 0x6

    .line 19
    .line 20
    move-object/from16 v8, p0

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x2

    .line 33
    :goto_0
    or-int/2addr v1, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v7

    .line 36
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 37
    .line 38
    move/from16 v9, p1

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v2, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v1, v2

    .line 54
    :cond_3
    and-int/lit16 v2, v7, 0x180

    .line 55
    .line 56
    move-object/from16 v10, p2

    .line 57
    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const/16 v2, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v2, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v1, v2

    .line 72
    :cond_5
    and-int/lit16 v2, v7, 0xc00

    .line 73
    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    const/16 v2, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v2, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v1, v2

    .line 88
    :cond_7
    and-int/lit16 v2, v7, 0x6000

    .line 89
    .line 90
    move-object/from16 v12, p4

    .line 91
    .line 92
    if-nez v2, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    const/16 v2, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v2, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v1, v2

    .line 106
    :cond_9
    and-int/lit8 v2, p8, 0x20

    .line 107
    .line 108
    const/high16 v3, 0x30000

    .line 109
    .line 110
    if-eqz v2, :cond_b

    .line 111
    .line 112
    or-int/2addr v1, v3

    .line 113
    :cond_a
    move-object/from16 v3, p5

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_b
    and-int/2addr v3, v7

    .line 117
    if-nez v3, :cond_a

    .line 118
    .line 119
    move-object/from16 v3, p5

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_c

    .line 126
    .line 127
    const/high16 v5, 0x20000

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_c
    const/high16 v5, 0x10000

    .line 131
    .line 132
    :goto_6
    or-int/2addr v1, v5

    .line 133
    :goto_7
    const v5, 0x12493

    .line 134
    .line 135
    .line 136
    and-int/2addr v5, v1

    .line 137
    const v6, 0x12492

    .line 138
    .line 139
    .line 140
    if-eq v5, v6, :cond_d

    .line 141
    .line 142
    const/4 v5, 0x1

    .line 143
    goto :goto_8

    .line 144
    :cond_d
    const/4 v5, 0x0

    .line 145
    :goto_8
    and-int/lit8 v6, v1, 0x1

    .line 146
    .line 147
    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_f

    .line 152
    .line 153
    if-eqz v2, :cond_e

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    move-object v13, v2

    .line 157
    goto :goto_9

    .line 158
    :cond_e
    move-object v13, v3

    .line 159
    :goto_9
    sget-object v2, Landroidx/compose/material3/NavigationDrawerItemDefaults;->ItemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 160
    .line 161
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const v2, 0x7e3fe

    .line 172
    .line 173
    .line 174
    and-int v17, v1, v2

    .line 175
    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    move-object/from16 v16, v0

    .line 179
    .line 180
    invoke-static/range {v8 .. v17}, Landroidx/compose/material3/NavigationDrawerKt;->NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DefaultDrawerItemsColor;Landroidx/compose/runtime/Composer;I)V

    .line 181
    .line 182
    .line 183
    move-object v6, v13

    .line 184
    goto :goto_a

    .line 185
    :cond_f
    move-object/from16 v16, v0

    .line 186
    .line 187
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 188
    .line 189
    .line 190
    move-object v6, v3

    .line 191
    :goto_a
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-eqz v9, :cond_10

    .line 196
    .line 197
    new-instance v0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    move-object/from16 v1, p0

    .line 200
    .line 201
    move/from16 v2, p1

    .line 202
    .line 203
    move-object/from16 v3, p2

    .line 204
    .line 205
    move-object/from16 v5, p4

    .line 206
    .line 207
    move/from16 v8, p8

    .line 208
    .line 209
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 210
    .line 211
    .line 212
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 213
    .line 214
    :cond_10
    return-void
.end method

.method public static final NavigationDrawerItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move/from16 v4, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/GapComposer;

    const v0, 0x6960ac37

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    and-int/lit8 v1, v4, 0x30

    const/4 v6, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v4, 0xc00

    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-nez v1, :cond_7

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v4, 0x6000

    move-object/from16 v3, p2

    if-nez v1, :cond_9

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v11, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 216
    new-instance v1, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    const v5, -0x5ae658e

    invoke-static {v5, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    and-int/lit8 v1, v0, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v0, v2

    or-int v12, v1, v0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v9, v3

    .line 217
    invoke-static/range {v5 .. v13}, Landroidx/work/Operation$State;->NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    .line 218
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 219
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    const/16 v5, 0x11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;II)V

    .line 220
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final OutgoingServerSettingsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v7, p4

    .line 13
    .line 14
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v0, -0x12845280

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    move-object/from16 v4, p0

    .line 23
    .line 24
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v6, 0x4

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    move v0, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p5, v0

    .line 35
    .line 36
    move-object/from16 v2, p1

    .line 37
    .line 38
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/16 v3, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v3, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v3

    .line 50
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    const/16 v3, 0x100

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v3, 0x80

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v3

    .line 62
    or-int/lit16 v0, v0, 0xc00

    .line 63
    .line 64
    and-int/lit16 v3, v0, 0x493

    .line 65
    .line 66
    const/16 v5, 0x492

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x1

    .line 70
    if-eq v3, v5, :cond_3

    .line 71
    .line 72
    move v3, v9

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v3, v8

    .line 75
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 76
    .line 77
    invoke-virtual {v7, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_d

    .line 82
    .line 83
    shr-int/lit8 v0, v0, 0x6

    .line 84
    .line 85
    iget-object v3, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 86
    .line 87
    invoke-static {v3, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    and-int/lit8 v3, v0, 0xe

    .line 92
    .line 93
    xor-int/lit8 v3, v3, 0x6

    .line 94
    .line 95
    if-le v3, v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    :cond_4
    and-int/lit8 v0, v0, 0x6

    .line 104
    .line 105
    if-ne v0, v6, :cond_6

    .line 106
    .line 107
    :cond_5
    move v0, v9

    .line 108
    goto :goto_4

    .line 109
    :cond_6
    move v0, v8

    .line 110
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const/4 v11, 0x3

    .line 115
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    if-ne v3, v12, :cond_8

    .line 120
    .line 121
    :cond_7
    new-instance v3, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 122
    .line 123
    invoke-direct {v3, v1, v11}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_8
    move-object v13, v3

    .line 130
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    iget-object v14, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 133
    .line 134
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;

    .line 135
    .line 136
    const/4 v5, 0x2

    .line 137
    const/4 v2, 0x0

    .line 138
    move-object/from16 v3, p1

    .line 139
    .line 140
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 141
    .line 142
    .line 143
    move-object v15, v1

    .line 144
    invoke-static {v7, v14, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-nez v0, :cond_9

    .line 162
    .line 163
    if-ne v1, v12, :cond_a

    .line 164
    .line 165
    :cond_9
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 166
    .line 167
    invoke-direct {v1, v11, v2, v13}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 174
    .line 175
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 176
    .line 177
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v0, :cond_b

    .line 189
    .line 190
    if-ne v1, v12, :cond_c

    .line 191
    .line 192
    :cond_b
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 193
    .line 194
    const/16 v0, 0xf

    .line 195
    .line 196
    invoke-direct {v1, v0, v13}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 203
    .line 204
    invoke-static {v8, v1, v7, v8, v9}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 208
    .line 209
    invoke-static {v7}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 214
    .line 215
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 216
    .line 217
    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 222
    .line 223
    const/16 v2, 0x19

    .line 224
    .line 225
    invoke-direct {v1, v2, v15, v13}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    const v2, -0x585a79c4

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    new-instance v2, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    invoke-direct {v2, v11, v13}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 238
    .line 239
    .line 240
    const v3, 0x69d4619b

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    new-instance v3, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 248
    .line 249
    invoke-direct {v3, v15, v10, v13, v6}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    const v4, 0x3f26e474

    .line 253
    .line 254
    .line 255
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const v8, 0x1801b0

    .line 260
    .line 261
    .line 262
    const/16 v9, 0x38

    .line 263
    .line 264
    const/4 v3, 0x0

    .line 265
    const/4 v4, 0x0

    .line 266
    const/4 v5, 0x0

    .line 267
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 268
    .line 269
    .line 270
    move-object v4, v12

    .line 271
    goto :goto_5

    .line 272
    :cond_d
    move-object v15, v1

    .line 273
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 274
    .line 275
    .line 276
    move-object/from16 v4, p3

    .line 277
    .line 278
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    if-eqz v7, :cond_e

    .line 283
    .line 284
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    const/4 v6, 0x7

    .line 287
    move-object/from16 v1, p0

    .line 288
    .line 289
    move-object/from16 v2, p1

    .line 290
    .line 291
    move/from16 v5, p5

    .line 292
    .line 293
    move-object v3, v15

    .line 294
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 295
    .line 296
    .line 297
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 298
    .line 299
    :cond_e
    return-void
.end method

.method public static final PullToRefreshBox(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 2
    .line 3
    check-cast p6, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x1fbac127

    .line 6
    .line 7
    .line 8
    invoke-virtual {p6, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p7, 0x6

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    :goto_0
    or-int/2addr v1, p7

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, p7

    .line 27
    :goto_1
    and-int/lit8 v2, p7, 0x30

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v2, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v1, v2

    .line 43
    :cond_3
    and-int/lit16 v2, p7, 0x180

    .line 44
    .line 45
    if-nez v2, :cond_5

    .line 46
    .line 47
    invoke-virtual {p6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    const/16 v2, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v2, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v1, v2

    .line 59
    :cond_5
    and-int/lit16 v2, p7, 0xc00

    .line 60
    .line 61
    if-nez v2, :cond_7

    .line 62
    .line 63
    invoke-virtual {p6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    const/16 v2, 0x800

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const/16 v2, 0x400

    .line 73
    .line 74
    :goto_4
    or-int/2addr v1, v2

    .line 75
    :cond_7
    and-int/lit16 v2, p7, 0x6000

    .line 76
    .line 77
    if-nez v2, :cond_9

    .line 78
    .line 79
    invoke-virtual {p6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    const/16 v2, 0x4000

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_8
    const/16 v2, 0x2000

    .line 89
    .line 90
    :goto_5
    or-int/2addr v1, v2

    .line 91
    :cond_9
    const/high16 v2, 0x30000

    .line 92
    .line 93
    and-int/2addr v2, p7

    .line 94
    if-nez v2, :cond_b

    .line 95
    .line 96
    invoke-virtual {p6, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_a

    .line 101
    .line 102
    const/high16 v2, 0x20000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_a
    const/high16 v2, 0x10000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v1, v2

    .line 108
    :cond_b
    const/high16 v2, 0x180000

    .line 109
    .line 110
    and-int/2addr v2, p7

    .line 111
    if-nez v2, :cond_d

    .line 112
    .line 113
    invoke-virtual {p6, p5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_c

    .line 118
    .line 119
    const/high16 v2, 0x100000

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_c
    const/high16 v2, 0x80000

    .line 123
    .line 124
    :goto_7
    or-int/2addr v1, v2

    .line 125
    :cond_d
    const v2, 0x92493

    .line 126
    .line 127
    .line 128
    and-int/2addr v2, v1

    .line 129
    const v3, 0x92492

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x1

    .line 134
    if-eq v2, v3, :cond_e

    .line 135
    .line 136
    move v2, v5

    .line 137
    goto :goto_8

    .line 138
    :cond_e
    move v2, v4

    .line 139
    :goto_8
    and-int/lit8 v3, v1, 0x1

    .line 140
    .line 141
    invoke-virtual {p6, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_14

    .line 146
    .line 147
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 148
    .line 149
    .line 150
    and-int/lit8 v2, p7, 0x1

    .line 151
    .line 152
    if-eqz v2, :cond_10

    .line 153
    .line 154
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_f

    .line 159
    .line 160
    goto :goto_9

    .line 161
    :cond_f
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    :cond_10
    :goto_9
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 165
    .line 166
    .line 167
    sget v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->PositionalThreshold:F

    .line 168
    .line 169
    new-instance v3, Landroidx/compose/material3/pulltorefresh/PullToRefreshElement;

    .line 170
    .line 171
    invoke-direct {v3, p0, p1, p3, v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshElement;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;F)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {p6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-static {p6, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 200
    .line 201
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 202
    .line 203
    .line 204
    iget-boolean v7, p6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 205
    .line 206
    if-eqz v7, :cond_11

    .line 207
    .line 208
    invoke-virtual {p6, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 209
    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_11
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 213
    .line 214
    .line 215
    :goto_a
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 216
    .line 217
    invoke-static {p6, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 221
    .line 222
    invoke-static {p6, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 223
    .line 224
    .line 225
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 226
    .line 227
    iget-boolean v4, p6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 228
    .line 229
    if-nez v4, :cond_12

    .line 230
    .line 231
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-nez v4, :cond_13

    .line 244
    .line 245
    :cond_12
    invoke-static {v3, p6, v3, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 246
    .line 247
    .line 248
    :cond_13
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 249
    .line 250
    invoke-static {p6, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    shr-int/lit8 v0, v1, 0xf

    .line 254
    .line 255
    and-int/lit8 v0, v0, 0x70

    .line 256
    .line 257
    const/4 v2, 0x6

    .line 258
    or-int/2addr v0, v2

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 264
    .line 265
    invoke-virtual {p5, v3, p6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    shr-int/lit8 v0, v1, 0xc

    .line 269
    .line 270
    and-int/lit8 v0, v0, 0x70

    .line 271
    .line 272
    or-int/2addr v0, v2

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {p4, v3, p6, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p6, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_14
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 285
    .line 286
    .line 287
    :goto_b
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 288
    .line 289
    .line 290
    move-result-object p6

    .line 291
    if-eqz p6, :cond_15

    .line 292
    .line 293
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 294
    .line 295
    move v1, p0

    .line 296
    move-object v2, p1

    .line 297
    move-object v3, p2

    .line 298
    move-object v4, p3

    .line 299
    move-object v5, p4

    .line 300
    move-object v6, p5

    .line 301
    move v7, p7

    .line 302
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 303
    .line 304
    .line 305
    iput-object v0, p6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 306
    .line 307
    :cond_15
    return-void
.end method

.method public static final Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v4, p4

    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p4, 0x67bdb79f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    const/4 p4, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p4, 0x2

    .line 22
    :goto_0
    or-int/2addr p4, p5

    .line 23
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v0, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr p4, v0

    .line 35
    or-int/lit16 p4, p4, 0xd80

    .line 36
    .line 37
    and-int/lit16 v0, p4, 0x493

    .line 38
    .line 39
    const/16 v1, 0x492

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    move v0, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_2
    and-int/lit8 v1, p4, 0x1

    .line 48
    .line 49
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    and-int/lit16 p2, p4, 0x3fe

    .line 56
    .line 57
    or-int/lit16 v5, p2, 0x6000

    .line 58
    .line 59
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    move v0, p0

    .line 63
    move-object v1, p1

    .line 64
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;I)V

    .line 65
    .line 66
    .line 67
    move p1, v0

    .line 68
    move-object p3, v2

    .line 69
    move p4, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object v1, p1

    .line 72
    move p1, p0

    .line 73
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    move p4, p3

    .line 77
    move-object p3, p2

    .line 78
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    new-instance p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    move-object p2, v1

    .line 87
    invoke-direct/range {p0 .. p5}, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZI)V

    .line 88
    .line 89
    .line 90
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 91
    .line 92
    :cond_4
    return-void
.end method

.method public static final TextDisplayMediumAutoResize-OxOnQKw(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 22

    .line 1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p3

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v1, -0x305b8c17

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p5

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    :goto_0
    or-int v1, p0, v1

    .line 26
    .line 27
    or-int/lit16 v1, v1, 0xdb0

    .line 28
    .line 29
    and-int/lit16 v2, v1, 0x493

    .line 30
    .line 31
    const/16 v4, 0x492

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    move v2, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 40
    .line 41
    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 48
    .line 49
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 56
    .line 57
    iget-object v4, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->displayMedium:Landroidx/compose/ui/text/TextStyle;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 64
    .line 65
    if-ne v6, v7, :cond_2

    .line 66
    .line 67
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    if-ne v8, v7, :cond_3

    .line 83
    .line 84
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-ne v4, v7, :cond_4

    .line 98
    .line 99
    new-instance v4, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/16 v9, 0x8

    .line 102
    .line 103
    invoke-direct {v4, v6, v9}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    invoke-static {v9, v4}, Landroidx/compose/ui/draw/ClipKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    move-object/from16 v16, v10

    .line 122
    .line 123
    check-cast v16, Landroidx/compose/ui/text/TextStyle;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    if-ne v10, v7, :cond_5

    .line 130
    .line 131
    new-instance v10, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;

    .line 132
    .line 133
    invoke-direct {v10, v8, v6, v5}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingContentKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    move-object v15, v10

    .line 140
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    and-int/lit16 v1, v1, 0x38e

    .line 143
    .line 144
    const v19, 0x180c06

    .line 145
    .line 146
    .line 147
    const v20, 0xdbf8

    .line 148
    .line 149
    .line 150
    move/from16 v18, v1

    .line 151
    .line 152
    move-object v1, v4

    .line 153
    const-wide/16 v4, 0x0

    .line 154
    .line 155
    const-wide/16 v6, 0x0

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    move-object v11, v9

    .line 159
    const-wide/16 v9, 0x0

    .line 160
    .line 161
    move-object v12, v11

    .line 162
    const/4 v11, 0x0

    .line 163
    move-object v13, v12

    .line 164
    const/4 v12, 0x0

    .line 165
    move-object v14, v13

    .line 166
    const/4 v13, 0x0

    .line 167
    move-object/from16 v17, v14

    .line 168
    .line 169
    const/4 v14, 0x0

    .line 170
    move-object/from16 v21, v17

    .line 171
    .line 172
    move-object/from16 v17, v0

    .line 173
    .line 174
    move-object/from16 v0, p5

    .line 175
    .line 176
    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 177
    .line 178
    .line 179
    move-wide v5, v2

    .line 180
    move-object/from16 v4, v21

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move-object/from16 v17, v0

    .line 184
    .line 185
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    move-wide/from16 v5, p1

    .line 189
    .line 190
    move-object/from16 v4, p4

    .line 191
    .line 192
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda14;

    .line 199
    .line 200
    move/from16 v7, p0

    .line 201
    .line 202
    move-object/from16 v3, p5

    .line 203
    .line 204
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JI)V

    .line 205
    .line 206
    .line 207
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    :cond_7
    return-void
.end method

.method public static buildQuirkSettings(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/camera/core/impl/QuirkSettings;
    .locals 4

    .line 1
    const-string v0, "androidx.camera.core.quirks.DEFAULT_QUIRK_ENABLED"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "androidx.camera.core.quirks.FORCE_ENABLED"

    .line 9
    .line 10
    invoke-static {p0, p1, v1}, Landroidx/work/Operation$State;->loadQuirks(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "androidx.camera.core.quirks.FORCE_DISABLED"

    .line 15
    .line 16
    invoke-static {p0, p1, v2}, Landroidx/work/Operation$State;->loadQuirks(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "Loaded quirk settings from metadata:"

    .line 21
    .line 22
    const-string v2, "QuirkSettingsLoader"

    .line 23
    .line 24
    invoke-static {v2, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "  KEY_DEFAULT_QUIRK_ENABLED = "

    .line 30
    .line 31
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v2, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "  KEY_QUIRK_FORCE_ENABLED = "

    .line 47
    .line 48
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "  KEY_QUIRK_FORCE_DISABLED = "

    .line 68
    .line 69
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Landroidx/work/Operation$State;->resolveQuirkNames([Ljava/lang/String;)Ljava/util/HashSet;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v1, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Landroidx/work/Operation$State;->resolveQuirkNames([Ljava/lang/String;)Ljava/util/HashSet;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance p1, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    new-instance p0, Landroidx/camera/core/impl/QuirkSettings;

    .line 105
    .line 106
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/core/impl/QuirkSettings;-><init>(ZLjava/util/HashSet;Ljava/util/HashSet;)V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public static checkBoundsIndexes$kotlin_stdlib(III)V
    .locals 3

    .line 1
    const-string v0, "startIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > endIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", endIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static checkRangeIndexes$kotlin_stdlib(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", toIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static createAndInitRegistry(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/Registry;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 8
    .line 9
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v4, v4, Lcom/bumptech/glide/GlideContext;->experiments:Lcom/bumptech/glide/GlideExperiments;

    .line 14
    .line 15
    new-instance v6, Lcom/bumptech/glide/Registry;

    .line 16
    .line 17
    invoke-direct {v6}, Lcom/bumptech/glide/Registry;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v7, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    .line 21
    .line 22
    const-string v8, "BitmapDrawable"

    .line 23
    .line 24
    const-class v9, Ljava/lang/String;

    .line 25
    .line 26
    const-string v10, "legacy_append"

    .line 27
    .line 28
    const-class v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 29
    .line 30
    const-string v12, "Animation"

    .line 31
    .line 32
    const-class v13, [B

    .line 33
    .line 34
    const-class v14, Ljava/lang/Integer;

    .line 35
    .line 36
    const-class v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    const-string v0, "Bitmap"

    .line 39
    .line 40
    const-class v1, Ljava/io/File;

    .line 41
    .line 42
    move-object/from16 v16, v13

    .line 43
    .line 44
    const-class v13, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    move-object/from16 v17, v9

    .line 47
    .line 48
    const-class v9, Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    move-object/from16 v18, v14

    .line 51
    .line 52
    const-class v14, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    move-object/from16 v19, v1

    .line 55
    .line 56
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    move-object/from16 v20, v10

    .line 59
    .line 60
    const-class v10, Landroid/graphics/Bitmap;

    .line 61
    .line 62
    move-object/from16 v21, v7

    .line 63
    .line 64
    const-class v7, Landroid/net/Uri;

    .line 65
    .line 66
    move-object/from16 v22, v7

    .line 67
    .line 68
    const-class v7, Ljava/io/InputStream;

    .line 69
    .line 70
    move-object/from16 v23, v11

    .line 71
    .line 72
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    move-object/from16 v24, v8

    .line 78
    .line 79
    iget-object v8, v6, Lcom/bumptech/glide/Registry;->imageHeaderParserRegistry:Lokhttp3/Headers$Builder;

    .line 80
    .line 81
    monitor-enter v8

    .line 82
    move-object/from16 v25, v15

    .line 83
    .line 84
    :try_start_0
    iget-object v15, v8, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit v8

    .line 90
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v11, 0x1b

    .line 93
    .line 94
    if-lt v8, v11, :cond_0

    .line 95
    .line 96
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    .line 97
    .line 98
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v11}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    move-object/from16 v26, v11

    .line 113
    .line 114
    new-instance v11, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    .line 115
    .line 116
    invoke-direct {v11, v5, v15, v2, v3}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v27, v11

    .line 120
    .line 121
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 122
    .line 123
    move-object/from16 v28, v9

    .line 124
    .line 125
    new-instance v9, Lcom/bumptech/glide/GlideBuilder$1;

    .line 126
    .line 127
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-direct {v11, v2, v9}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    .line 131
    .line 132
    .line 133
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 134
    .line 135
    move-object/from16 v29, v11

    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    move-object/from16 v30, v13

    .line 142
    .line 143
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-direct {v9, v11, v13, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 148
    .line 149
    .line 150
    const/4 v13, 0x2

    .line 151
    const/16 v11, 0x1c

    .line 152
    .line 153
    if-lt v8, v11, :cond_1

    .line 154
    .line 155
    const-class v11, Landroidx/room/util/SchemaInfoUtilKt;

    .line 156
    .line 157
    iget-object v4, v4, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_1

    .line 164
    .line 165
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;

    .line 166
    .line 167
    invoke-direct {v4, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;

    .line 171
    .line 172
    const/4 v13, 0x1

    .line 173
    invoke-direct {v11, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;-><init>(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_1
    const/4 v13, 0x1

    .line 178
    new-instance v11, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    .line 179
    .line 180
    invoke-direct {v11, v13, v9}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance v4, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 184
    .line 185
    const/4 v13, 0x3

    .line 186
    invoke-direct {v4, v13, v9, v3}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :goto_0
    const/16 v13, 0x1c

    .line 190
    .line 191
    if-lt v8, v13, :cond_2

    .line 192
    .line 193
    new-instance v13, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;

    .line 194
    .line 195
    move/from16 v31, v8

    .line 196
    .line 197
    new-instance v8, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    .line 198
    .line 199
    invoke-direct {v8, v15, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v32, v2

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    invoke-direct {v13, v8, v2}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v12, v7, v1, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;

    .line 212
    .line 213
    new-instance v8, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;

    .line 214
    .line 215
    invoke-direct {v8, v15, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 216
    .line 217
    .line 218
    const/4 v13, 0x1

    .line 219
    invoke-direct {v2, v8, v13}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v12, v14, v1, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    move-object/from16 v32, v2

    .line 227
    .line 228
    move/from16 v31, v8

    .line 229
    .line 230
    const/4 v13, 0x1

    .line 231
    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    .line 232
    .line 233
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 237
    .line 238
    invoke-direct {v8, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 239
    .line 240
    .line 241
    new-instance v13, Lokio/PriorityQueue;

    .line 242
    .line 243
    invoke-direct {v13}, Lokio/PriorityQueue;-><init>()V

    .line 244
    .line 245
    .line 246
    move-object/from16 v33, v13

    .line 247
    .line 248
    new-instance v13, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    .line 249
    .line 250
    move-object/from16 v34, v5

    .line 251
    .line 252
    const/4 v5, 0x1

    .line 253
    invoke-direct {v13, v5}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    move-object/from16 v35, v13

    .line 261
    .line 262
    new-instance v13, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 263
    .line 264
    move-object/from16 v36, v5

    .line 265
    .line 266
    const/4 v5, 0x0

    .line 267
    invoke-direct {v13, v5}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v14, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 271
    .line 272
    .line 273
    new-instance v5, Landroidx/work/Configuration$Builder;

    .line 274
    .line 275
    const/16 v13, 0x10

    .line 276
    .line 277
    invoke-direct {v5, v13, v3}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v7, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v0, v14, v10, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v0, v7, v10, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 287
    .line 288
    .line 289
    const-string v5, "robolectric"

    .line 290
    .line 291
    sget-object v13, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-nez v5, :cond_3

    .line 298
    .line 299
    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    .line 300
    .line 301
    move-object/from16 v37, v13

    .line 302
    .line 303
    const/4 v13, 0x2

    .line 304
    invoke-direct {v5, v13, v9}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v9, v30

    .line 308
    .line 309
    invoke-virtual {v6, v0, v9, v10, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_3
    move-object/from16 v37, v13

    .line 314
    .line 315
    move-object/from16 v9, v30

    .line 316
    .line 317
    :goto_2
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 318
    .line 319
    new-instance v13, Lcom/jcraft/jzlib/Adler32;

    .line 320
    .line 321
    move-object/from16 v30, v1

    .line 322
    .line 323
    const/16 v1, 0xf

    .line 324
    .line 325
    invoke-direct {v13, v1}, Lcom/jcraft/jzlib/Adler32;-><init>(I)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v1, v32

    .line 329
    .line 330
    invoke-direct {v5, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v13, v28

    .line 334
    .line 335
    invoke-virtual {v6, v0, v13, v10, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 336
    .line 337
    .line 338
    move-object/from16 v5, v29

    .line 339
    .line 340
    invoke-virtual {v6, v0, v9, v10, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 341
    .line 342
    .line 343
    sget-object v13, Lcom/bumptech/glide/load/model/ByteBufferEncoder;->FACTORY:Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 344
    .line 345
    invoke-virtual {v6, v10, v10, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v29, v2

    .line 349
    .line 350
    new-instance v2, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    .line 351
    .line 352
    move-object/from16 v32, v13

    .line 353
    .line 354
    const/4 v13, 0x1

    .line 355
    invoke-direct {v2, v13}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6, v0, v10, v10, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v10, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 362
    .line 363
    .line 364
    new-instance v2, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 365
    .line 366
    move-object/from16 v13, v26

    .line 367
    .line 368
    invoke-direct {v2, v13, v11}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 369
    .line 370
    .line 371
    move-object/from16 v11, v24

    .line 372
    .line 373
    move-object/from16 v24, v0

    .line 374
    .line 375
    move-object/from16 v0, v25

    .line 376
    .line 377
    invoke-virtual {v6, v11, v14, v0, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 378
    .line 379
    .line 380
    new-instance v2, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 381
    .line 382
    invoke-direct {v2, v13, v4}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v11, v7, v0, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 386
    .line 387
    .line 388
    new-instance v2, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 389
    .line 390
    invoke-direct {v2, v13, v5}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v11, v9, v0, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 394
    .line 395
    .line 396
    new-instance v2, Lcom/beetstra/jutf7/Base64Util;

    .line 397
    .line 398
    const/16 v4, 0x12

    .line 399
    .line 400
    invoke-direct {v2, v4, v1, v8}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v0, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 404
    .line 405
    .line 406
    new-instance v2, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    .line 407
    .line 408
    move-object/from16 v4, v27

    .line 409
    .line 410
    invoke-direct {v2, v15, v4, v3}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v5, v23

    .line 414
    .line 415
    invoke-virtual {v6, v12, v7, v5, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v12, v14, v5, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 419
    .line 420
    .line 421
    new-instance v2, Landroidx/transition/Transition$1;

    .line 422
    .line 423
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v6, v5, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 427
    .line 428
    .line 429
    move-object/from16 v2, v21

    .line 430
    .line 431
    move-object/from16 v4, v32

    .line 432
    .line 433
    invoke-virtual {v6, v2, v2, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 434
    .line 435
    .line 436
    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    .line 437
    .line 438
    const/4 v11, 0x0

    .line 439
    invoke-direct {v8, v11, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(ILjava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v11, v24

    .line 443
    .line 444
    invoke-virtual {v6, v11, v2, v10, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v2, v20

    .line 448
    .line 449
    move-object/from16 v11, v22

    .line 450
    .line 451
    move-object/from16 v12, v29

    .line 452
    .line 453
    move-object/from16 v8, v30

    .line 454
    .line 455
    invoke-virtual {v6, v2, v11, v8, v12}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 456
    .line 457
    .line 458
    new-instance v15, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 459
    .line 460
    const/4 v5, 0x2

    .line 461
    invoke-direct {v15, v5, v12, v1}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v6, v2, v11, v10, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 465
    .line 466
    .line 467
    new-instance v12, Lcom/bumptech/glide/load/data/DataRewinderRegistry$1;

    .line 468
    .line 469
    invoke-direct {v12, v5}, Lcom/bumptech/glide/load/data/DataRewinderRegistry$1;-><init>(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6, v12}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 473
    .line 474
    .line 475
    new-instance v5, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 476
    .line 477
    const/4 v12, 0x6

    .line 478
    invoke-direct {v5, v12}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v15, v19

    .line 482
    .line 483
    invoke-virtual {v6, v15, v14, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 484
    .line 485
    .line 486
    new-instance v5, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    .line 487
    .line 488
    new-instance v12, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 489
    .line 490
    move-object/from16 v32, v1

    .line 491
    .line 492
    const/16 v1, 0x9

    .line 493
    .line 494
    invoke-direct {v12, v1}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 495
    .line 496
    .line 497
    const/4 v1, 0x7

    .line 498
    invoke-direct {v5, v1, v12}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v15, v7, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 502
    .line 503
    .line 504
    new-instance v5, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    .line 505
    .line 506
    const/4 v12, 0x0

    .line 507
    invoke-direct {v5, v12}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6, v2, v15, v15, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 511
    .line 512
    .line 513
    new-instance v5, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    .line 514
    .line 515
    new-instance v12, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 516
    .line 517
    const/16 v0, 0x8

    .line 518
    .line 519
    invoke-direct {v12, v0}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 520
    .line 521
    .line 522
    invoke-direct {v5, v1, v12}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6, v15, v9, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v15, v15, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 529
    .line 530
    .line 531
    new-instance v5, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    .line 532
    .line 533
    invoke-direct {v5, v3}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 537
    .line 538
    .line 539
    const-string v3, "robolectric"

    .line 540
    .line 541
    move-object/from16 v5, v37

    .line 542
    .line 543
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-nez v3, :cond_4

    .line 548
    .line 549
    new-instance v3, Lcom/bumptech/glide/load/data/DataRewinderRegistry$1;

    .line 550
    .line 551
    const/4 v5, 0x1

    .line 552
    invoke-direct {v3, v5}, Lcom/bumptech/glide/load/data/DataRewinderRegistry$1;-><init>(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 556
    .line 557
    .line 558
    :cond_4
    new-instance v3, Landroidx/navigation/internal/NavContext;

    .line 559
    .line 560
    const/4 v5, 0x5

    .line 561
    move-object/from16 v12, v34

    .line 562
    .line 563
    invoke-direct {v3, v12, v5}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 564
    .line 565
    .line 566
    new-instance v5, Landroidx/navigation/internal/NavContext;

    .line 567
    .line 568
    const/4 v1, 0x3

    .line 569
    invoke-direct {v5, v12, v1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 570
    .line 571
    .line 572
    new-instance v1, Landroidx/navigation/internal/NavContext;

    .line 573
    .line 574
    const/4 v0, 0x4

    .line 575
    invoke-direct {v1, v12, v0}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 576
    .line 577
    .line 578
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 579
    .line 580
    invoke-virtual {v6, v0, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v26, v10

    .line 584
    .line 585
    move-object/from16 v10, v18

    .line 586
    .line 587
    invoke-virtual {v6, v10, v7, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 588
    .line 589
    .line 590
    move-object/from16 v3, v28

    .line 591
    .line 592
    invoke-virtual {v6, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v6, v10, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6, v0, v8, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v6, v10, v8, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 602
    .line 603
    .line 604
    new-instance v1, Landroidx/navigation/internal/NavContext;

    .line 605
    .line 606
    const/16 v5, 0x8

    .line 607
    .line 608
    invoke-direct {v1, v12, v5}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v6, v11, v7, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 612
    .line 613
    .line 614
    new-instance v1, Landroidx/navigation/internal/NavContext;

    .line 615
    .line 616
    const/4 v5, 0x7

    .line 617
    invoke-direct {v1, v12, v5}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v6, v11, v3, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    .line 624
    .line 625
    const/4 v5, 0x0

    .line 626
    invoke-direct {v1, v5, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(ILandroid/content/res/Resources;)V

    .line 627
    .line 628
    .line 629
    new-instance v5, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    .line 630
    .line 631
    move-object/from16 v18, v2

    .line 632
    .line 633
    const/4 v2, 0x1

    .line 634
    invoke-direct {v5, v2, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(ILandroid/content/res/Resources;)V

    .line 635
    .line 636
    .line 637
    new-instance v2, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    .line 638
    .line 639
    move-object/from16 v30, v8

    .line 640
    .line 641
    const/4 v8, 0x2

    .line 642
    invoke-direct {v2, v8, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(ILandroid/content/res/Resources;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6, v10, v11, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v6, v0, v11, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v6, v10, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v6, v0, v3, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v6, v10, v7, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v6, v0, v7, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 661
    .line 662
    .line 663
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 664
    .line 665
    const/16 v1, 0xe

    .line 666
    .line 667
    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(I)V

    .line 668
    .line 669
    .line 670
    move-object/from16 v2, v17

    .line 671
    .line 672
    invoke-virtual {v6, v2, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 673
    .line 674
    .line 675
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 676
    .line 677
    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 681
    .line 682
    .line 683
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 684
    .line 685
    const/16 v5, 0xd

    .line 686
    .line 687
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v6, v2, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 691
    .line 692
    .line 693
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 694
    .line 695
    const/16 v5, 0xc

    .line 696
    .line 697
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6, v2, v9, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 704
    .line 705
    const/16 v8, 0xb

    .line 706
    .line 707
    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6, v2, v3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 711
    .line 712
    .line 713
    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 714
    .line 715
    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    const/4 v8, 0x0

    .line 720
    invoke-direct {v0, v2, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 724
    .line 725
    .line 726
    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 727
    .line 728
    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    const/4 v8, 0x1

    .line 733
    invoke-direct {v0, v2, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6, v11, v3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 737
    .line 738
    .line 739
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 740
    .line 741
    const/16 v2, 0x9

    .line 742
    .line 743
    invoke-direct {v0, v12, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 747
    .line 748
    .line 749
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 750
    .line 751
    const/16 v2, 0xa

    .line 752
    .line 753
    invoke-direct {v0, v12, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 757
    .line 758
    .line 759
    const/16 v0, 0x1d

    .line 760
    .line 761
    move/from16 v2, v31

    .line 762
    .line 763
    if-lt v2, v0, :cond_5

    .line 764
    .line 765
    new-instance v0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    .line 766
    .line 767
    invoke-direct {v0, v12, v7}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 771
    .line 772
    .line 773
    new-instance v0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    .line 774
    .line 775
    invoke-direct {v0, v12, v9}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v6, v11, v9, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 779
    .line 780
    .line 781
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 782
    .line 783
    move-object/from16 v2, v36

    .line 784
    .line 785
    const/4 v8, 0x0

    .line 786
    invoke-direct {v0, v2, v8}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;I)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 790
    .line 791
    .line 792
    new-instance v0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 793
    .line 794
    const/4 v8, 0x2

    .line 795
    invoke-direct {v0, v2, v8}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v11, v9, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 799
    .line 800
    .line 801
    new-instance v0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 802
    .line 803
    const/4 v8, 0x1

    .line 804
    invoke-direct {v0, v2, v8}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v6, v11, v3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 808
    .line 809
    .line 810
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 811
    .line 812
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v6, v11, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 816
    .line 817
    .line 818
    const-class v0, Ljava/net/URL;

    .line 819
    .line 820
    new-instance v1, Landroidx/collection/internal/Lock;

    .line 821
    .line 822
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v6, v0, v7, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 826
    .line 827
    .line 828
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 829
    .line 830
    const/4 v1, 0x6

    .line 831
    invoke-direct {v0, v12, v1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v6, v11, v15, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 835
    .line 836
    .line 837
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 838
    .line 839
    new-instance v1, Landroidx/work/Configuration$Builder;

    .line 840
    .line 841
    const/16 v2, 0x11

    .line 842
    .line 843
    invoke-direct {v1, v2}, Landroidx/work/Configuration$Builder;-><init>(I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v6, v0, v7, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 847
    .line 848
    .line 849
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 850
    .line 851
    const/4 v1, 0x3

    .line 852
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v2, v16

    .line 856
    .line 857
    invoke-virtual {v6, v2, v14, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 858
    .line 859
    .line 860
    new-instance v0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 861
    .line 862
    const/4 v3, 0x5

    .line 863
    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v6, v2, v7, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v6, v11, v11, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 870
    .line 871
    .line 872
    move-object/from16 v8, v30

    .line 873
    .line 874
    invoke-virtual {v6, v8, v8, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 875
    .line 876
    .line 877
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    .line 878
    .line 879
    const/4 v3, 0x2

    .line 880
    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>(I)V

    .line 881
    .line 882
    .line 883
    move-object/from16 v3, v18

    .line 884
    .line 885
    invoke-virtual {v6, v3, v8, v8, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 886
    .line 887
    .line 888
    new-instance v0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    .line 889
    .line 890
    invoke-direct {v0, v1, v13}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(ILandroid/content/res/Resources;)V

    .line 891
    .line 892
    .line 893
    move-object/from16 v1, v25

    .line 894
    .line 895
    move-object/from16 v3, v26

    .line 896
    .line 897
    invoke-virtual {v6, v3, v1, v0}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 898
    .line 899
    .line 900
    move-object/from16 v0, v33

    .line 901
    .line 902
    invoke-virtual {v6, v3, v2, v0}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 903
    .line 904
    .line 905
    new-instance v4, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 906
    .line 907
    move-object/from16 v7, v32

    .line 908
    .line 909
    move-object/from16 v9, v35

    .line 910
    .line 911
    invoke-direct {v4, v7, v0, v9, v5}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v6, v8, v2, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 915
    .line 916
    .line 917
    move-object/from16 v5, v23

    .line 918
    .line 919
    invoke-virtual {v6, v5, v2, v9}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 920
    .line 921
    .line 922
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 923
    .line 924
    new-instance v2, Lokio/Path$Companion;

    .line 925
    .line 926
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 927
    .line 928
    .line 929
    invoke-direct {v0, v7, v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    .line 930
    .line 931
    .line 932
    const-string v2, "legacy_append"

    .line 933
    .line 934
    invoke-virtual {v6, v2, v14, v3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 935
    .line 936
    .line 937
    new-instance v2, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 938
    .line 939
    invoke-direct {v2, v13, v0}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 940
    .line 941
    .line 942
    const-string v0, "legacy_append"

    .line 943
    .line 944
    invoke-virtual {v6, v0, v14, v1, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 945
    .line 946
    .line 947
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    if-nez v1, :cond_7

    .line 956
    .line 957
    if-eqz p2, :cond_6

    .line 958
    .line 959
    move-object/from16 v0, p0

    .line 960
    .line 961
    move-object/from16 v1, p2

    .line 962
    .line 963
    invoke-virtual {v1, v12, v0, v6}, Lorg/jsoup/helper/Validate;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 964
    .line 965
    .line 966
    :cond_6
    return-object v6

    .line 967
    :cond_7
    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    throw v0

    .line 972
    :catchall_0
    move-exception v0

    .line 973
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    throw v0
.end method

.method public static final drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/animation/FlingCalculator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 16
    .line 17
    .line 18
    const/high16 v4, 0x41200000    # 10.0f

    .line 19
    .line 20
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iget v7, v3, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 25
    .line 26
    mul-float/2addr v6, v7

    .line 27
    const/high16 v8, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v6, v8

    .line 30
    const/high16 v9, 0x40a00000    # 5.0f

    .line 31
    .line 32
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    mul-float/2addr v9, v7

    .line 37
    invoke-virtual {v1, v6, v9}, Landroidx/compose/ui/graphics/AndroidPath;->lineTo(FF)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    mul-float/2addr v6, v7

    .line 45
    invoke-virtual {v1, v6, v5}, Landroidx/compose/ui/graphics/AndroidPath;->lineTo(FF)V

    .line 46
    .line 47
    .line 48
    iget v5, v2, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 49
    .line 50
    iget v6, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 51
    .line 52
    sub-float/2addr v5, v6

    .line 53
    iget v6, v2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 54
    .line 55
    iget v9, v2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 56
    .line 57
    sub-float/2addr v6, v9

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    div-float/2addr v5, v8

    .line 63
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    mul-float/2addr v4, v7

    .line 68
    div-float/2addr v4, v8

    .line 69
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    const/16 v8, 0x20

    .line 74
    .line 75
    shr-long/2addr v6, v8

    .line 76
    long-to-int v6, v6

    .line 77
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    add-float/2addr v6, v5

    .line 82
    sub-float/2addr v6, v4

    .line 83
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    const-wide v9, 0xffffffffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    and-long/2addr v4, v9

    .line 93
    long-to-int v2, v4

    .line 94
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/high16 v4, 0x40200000    # 2.5f

    .line 99
    .line 100
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    sub-float/2addr v2, v5

    .line 105
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    int-to-long v5, v5

    .line 110
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    int-to-long v11, v2

    .line 115
    shl-long/2addr v5, v8

    .line 116
    and-long v7, v11, v9

    .line 117
    .line 118
    or-long/2addr v5, v7

    .line 119
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/graphics/AndroidPath;->translate-k-4lQ0M(J)V

    .line 120
    .line 121
    .line 122
    iget v2, v3, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 123
    .line 124
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    sub-float/2addr v2, v3

    .line 129
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    invoke-virtual {v7}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 146
    .line 147
    .line 148
    :try_start_0
    iget-object v3, v7, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v3, Landroidx/camera/view/PreviewView$1;

    .line 151
    .line 152
    invoke-virtual {v3, v2, v5, v6}, Landroidx/camera/view/PreviewView$1;->rotate-Uv8p0NA(FJ)V

    .line 153
    .line 154
    .line 155
    new-instance v10, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 156
    .line 157
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    const/4 v14, 0x0

    .line 162
    const/16 v15, 0x1e

    .line 163
    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v13, 0x0

    .line 166
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 167
    .line 168
    .line 169
    const/16 v6, 0x30

    .line 170
    .line 171
    move-wide/from16 v2, p3

    .line 172
    .line 173
    move/from16 v4, p5

    .line 174
    .line 175
    move-object v5, v10

    .line 176
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    invoke-static {v7, v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    invoke-static {v7, v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public static extract(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v0, v3}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    move v6, v3

    .line 16
    move v7, v6

    .line 17
    move v9, v7

    .line 18
    move v10, v9

    .line 19
    move v11, v10

    .line 20
    move v12, v11

    .line 21
    move v13, v12

    .line 22
    const/4 v8, 0x1

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v14

    .line 27
    if-ge v6, v14, :cond_c

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    add-int/lit8 v15, v7, 0x1

    .line 34
    .line 35
    const/16 v5, 0xa

    .line 36
    .line 37
    if-eqz v8, :cond_9

    .line 38
    .line 39
    if-eq v14, v5, :cond_5

    .line 40
    .line 41
    const/16 v5, 0x20

    .line 42
    .line 43
    if-eq v14, v5, :cond_4

    .line 44
    .line 45
    const/16 v5, 0x3e

    .line 46
    .line 47
    if-eq v14, v5, :cond_2

    .line 48
    .line 49
    sub-int v13, v7, v9

    .line 50
    .line 51
    if-eq v10, v11, :cond_1

    .line 52
    .line 53
    iget-object v5, v2, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->build()Lcom/fsck/k9/message/html/EmailSection;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    new-instance v2, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 71
    .line 72
    invoke-direct {v2, v0, v11}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    move v8, v3

    .line 76
    move v10, v11

    .line 77
    move v12, v13

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v8, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-nez v10, :cond_3

    .line 82
    .line 83
    if-nez v11, :cond_3

    .line 84
    .line 85
    add-int/lit8 v5, v4, 0x1

    .line 86
    .line 87
    if-eq v12, v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {v2, v3, v12, v5}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 93
    .line 94
    move v9, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    if-eq v10, v11, :cond_7

    .line 100
    .line 101
    iget-object v5, v2, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->build()Lcom/fsck/k9/message/html/EmailSection;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_6
    new-instance v2, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 119
    .line 120
    invoke-direct {v2, v0, v11}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sub-int v12, v7, v9

    .line 124
    .line 125
    move v10, v11

    .line 126
    :cond_7
    if-lez v11, :cond_8

    .line 127
    .line 128
    sub-int v5, v7, v9

    .line 129
    .line 130
    iget-object v3, v2, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 135
    .line 136
    invoke-direct {v0, v5, v15}, Lcom/fsck/k9/message/html/EmailSection$Segment;-><init>(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_8
    :goto_1
    const/16 v0, 0xa

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_9
    move v0, v5

    .line 146
    if-ne v14, v0, :cond_a

    .line 147
    .line 148
    if-lez v11, :cond_a

    .line 149
    .line 150
    invoke-virtual {v2, v9, v13, v15}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 151
    .line 152
    .line 153
    :cond_a
    :goto_2
    if-ne v14, v0, :cond_b

    .line 154
    .line 155
    move v4, v7

    .line 156
    const/4 v8, 0x1

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    move-object/from16 v0, p0

    .line 163
    .line 164
    move v7, v15

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_c
    if-nez v10, :cond_d

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    const/4 v3, 0x0

    .line 174
    invoke-virtual {v2, v3, v12, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_d
    if-nez v8, :cond_e

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {v2, v9, v13, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->addSegment(III)V

    .line 185
    .line 186
    .line 187
    :cond_e
    :goto_3
    iget-object v0, v2, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_f

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->build()Lcom/fsck/k9/message/html/EmailSection;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_f
    return-object v1
.end method

.method public static findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x190

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move p1, v1

    .line 19
    :goto_1
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 22
    .line 23
    .line 24
    move v6, v1

    .line 25
    :goto_2
    if-ge v6, v3, :cond_5

    .line 26
    .line 27
    aget-object v7, p0, v6

    .line 28
    .line 29
    iget v8, v7, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 30
    .line 31
    sub-int/2addr v8, v0

    .line 32
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    mul-int/lit8 v8, v8, 0x2

    .line 37
    .line 38
    iget-boolean v9, v7, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 39
    .line 40
    if-ne v9, p1, :cond_2

    .line 41
    .line 42
    move v9, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    move v9, v2

    .line 45
    :goto_3
    add-int/2addr v8, v9

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    if-le v5, v8, :cond_4

    .line 49
    .line 50
    :cond_3
    move-object v4, v7

    .line 51
    move v5, v8

    .line 52
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    return-object v4
.end method

.method public static findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Stack;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p0}, Landroidx/work/Operation$State;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of p0, v2, Lcom/fsck/k9/mail/Multipart;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 45
    .line 46
    iget-object p0, v2, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    :goto_1
    if-ltz p0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 p0, p0, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object v0
.end method

.method public static findPgpInlineParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Stack;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p0}, Landroidx/work/Operation$State;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of p0, v2, Lcom/fsck/k9/mail/Multipart;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 45
    .line 46
    iget-object p0, v2, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    :goto_1
    if-ltz p0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 p0, p0, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object v0
.end method

.method public static findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "multipart/alternative"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    instance-of p0, v0, Lcom/fsck/k9/mail/Multipart;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    .line 18
    .line 19
    iget-object p0, v0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroidx/work/Operation$State;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static final getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/compose/ui/autofill/AndroidContentType;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidContentType;->androidAutofillHints:Ljava/util/Set;

    .line 7
    .line 8
    check-cast p0, Ljava/util/Collection;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/navigation/NavControllerViewModelKt;->FACTORY:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lokhttp3/Dispatcher;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0, v1}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 17
    .line 18
    .line 19
    const-class p0, Landroidx/navigation/NavControllerViewModel;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0, p0}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/navigation/NavControllerViewModel;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 45
    .line 46
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static final getInt-impl(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    const v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method public static getLegacyControlPoint(I[Ljava/lang/String;)F
    .locals 2

    .line 1
    aget-object p0, p1, p0

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p0, p1

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static final getSavedState-impl(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static final getSend()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/work/Operation$State;->_send:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "AutoMirrored.Outlined.Send"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v0, v2}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const v2, 0x408051ec    # 4.01f

    .line 43
    .line 44
    .line 45
    const v4, 0x40c0f5c3    # 6.03f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 49
    .line 50
    .line 51
    const v2, 0x404e147b    # 3.22f

    .line 52
    .line 53
    .line 54
    const v4, 0x40f051ec    # 7.51f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 58
    .line 59
    .line 60
    const v2, -0x3f0f5c29    # -7.52f

    .line 61
    .line 62
    .line 63
    const/high16 v5, -0x40800000    # -1.0f

    .line 64
    .line 65
    invoke-virtual {v0, v2, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 66
    .line 67
    .line 68
    const v2, 0x3c23d70a    # 0.01f

    .line 69
    .line 70
    .line 71
    const v6, -0x3ff1eb85    # -2.22f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 75
    .line 76
    .line 77
    const/high16 v7, 0x40f00000    # 7.5f

    .line 78
    .line 79
    const v8, 0x410b851f    # 8.72f

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v7, v8}, Lokhttp3/Headers$Builder;->moveToRelative(FF)V

    .line 83
    .line 84
    .line 85
    const/high16 v7, 0x40800000    # 4.0f

    .line 86
    .line 87
    const v8, 0x418fc28f    # 17.97f

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v7, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v6}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 97
    .line 98
    .line 99
    const v4, 0x4000a3d7    # 2.01f

    .line 100
    .line 101
    .line 102
    const/high16 v5, 0x40400000    # 3.0f

    .line 103
    .line 104
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 105
    .line 106
    .line 107
    const/high16 v6, 0x41200000    # 10.0f

    .line 108
    .line 109
    const/high16 v7, 0x40000000    # 2.0f

    .line 110
    .line 111
    invoke-virtual {v0, v7, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 112
    .line 113
    .line 114
    const/high16 v6, 0x41700000    # 15.0f

    .line 115
    .line 116
    invoke-virtual {v0, v6, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 117
    .line 118
    .line 119
    const/high16 v6, -0x3e900000    # -15.0f

    .line 120
    .line 121
    invoke-virtual {v0, v6, v7}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 122
    .line 123
    .line 124
    const/high16 v6, 0x40e00000    # 7.0f

    .line 125
    .line 126
    invoke-virtual {v0, v2, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 127
    .line 128
    .line 129
    const/high16 v2, 0x41b80000    # 23.0f

    .line 130
    .line 131
    const/high16 v6, 0x41400000    # 12.0f

    .line 132
    .line 133
    invoke-virtual {v0, v2, v6}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 143
    .line 144
    const/high16 v4, 0x3f800000    # 1.0f

    .line 145
    .line 146
    const/high16 v5, 0x3f800000    # 1.0f

    .line 147
    .line 148
    const/high16 v6, 0x3f800000    # 1.0f

    .line 149
    .line 150
    const/4 v7, 0x2

    .line 151
    const/high16 v8, 0x3f800000    # 1.0f

    .line 152
    .line 153
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Landroidx/work/Operation$State;->_send:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 161
    .line 162
    return-object v0
.end method

.method public static final getString-impl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static final getStringArray-impl(Ljava/lang/String;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static final isBackwardCompatible(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "robolectric"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "CXCP"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const-string p0, "isBackwardCompatible method returns true because robolectric build detected."

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [I

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 56
    .line 57
    .line 58
    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return p0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return v0

    .line 63
    :goto_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    const-string v0, "Error while accessing metadata for cameraID: "

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_3
    new-instance p1, Landroidx/camera/core/InitializationException;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, ")"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "multipart/encrypted"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "protocol"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "application/pgp-encrypted"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const-string p0, "Part is not multipart/encrypted!"

    .line 31
    .line 32
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final isNull-impl(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "multipart/encrypted"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v2, "protocol"

    .line 45
    .line 46
    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    move v3, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v3, v1

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    return v1

    .line 82
    :cond_5
    :goto_2
    return v2
.end method

.method public static isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "multipart/signed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v2, "protocol"

    .line 45
    .line 46
    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    move v3, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v3, v1

    .line 64
    :goto_0
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    return v1

    .line 82
    :cond_5
    :goto_2
    return v2
.end method

.method public static isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "text/plain"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string v1, "application/pgp"

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :goto_0
    return v0

    .line 22
    :cond_1
    const-wide/16 v1, 0x24

    .line 23
    .line 24
    invoke-static {p0, v1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "-----BEGIN PGP MESSAGE-----"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_3
    :goto_1
    return v0
.end method

.method public static isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z
    .locals 4

    .line 1
    const-string v0, "text/plain"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "application/pgp"

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v2, 0x24

    .line 20
    .line 21
    invoke-static {p0, v2, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "-----BEGIN PGP MESSAGE-----"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    const-string v0, "-----BEGIN PGP SIGNED MESSAGE-----"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    return v1

    .line 56
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_4
    :goto_2
    return v1
.end method

.method public static loadQuirks(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Ljava/lang/String;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v2, "QuirkSettingsLoader"

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const-string p0, "Resource ID not found for key: "

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v2, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-array p0, v1, [Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "Quirk class names resource not found: "

    .line 45
    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    new-array p0, v1, [Ljava/lang/String;

    .line 60
    .line 61
    return-object p0
.end method

.method public static final putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static resolveQuirkNames([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    const-string v4, "QuirkSettingsLoader"

    .line 13
    .line 14
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const-class v6, Landroidx/camera/core/impl/Quirk;

    .line 19
    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v6, " does not implement the Quirk interface."

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v7, "Class not found: "

    .line 52
    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v4, v3, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    const/4 v5, 0x0

    .line 67
    :goto_2
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-object v0
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroidx/work/OperationKt;->resolve(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    return p2
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_6

    .line 23
    .line 24
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v3, "cubic-bezier"

    .line 31
    .line 32
    invoke-static {p1, v3}, Landroidx/work/Operation$State;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const-string v5, "path"

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    invoke-static {p1, v5}, Landroidx/work/Operation$State;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    :goto_0
    invoke-static {p1, v3}, Landroidx/work/Operation$State;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    sub-int/2addr p0, v2

    .line 65
    const/16 v0, 0xd

    .line 66
    .line 67
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, ","

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    array-length p1, p0

    .line 78
    const/4 v0, 0x4

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-static {p1, p0}, Landroidx/work/Operation$State;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {v2, p0}, Landroidx/work/Operation$State;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-static {v0, p0}, Landroidx/work/Operation$State;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v1, p0}, Landroidx/work/Operation$State;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 100
    .line 101
    invoke-direct {v1, p1, p2, v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_3
    const-string p1, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    .line 106
    .line 107
    array-length p0, p0

    .line 108
    invoke-static {p1, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    return-object p2

    .line 112
    :cond_4
    invoke-static {p1, v5}, Landroidx/work/Operation$State;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    sub-int/2addr p0, v2

    .line 123
    const/4 v0, 0x5

    .line 124
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 129
    .line 130
    new-instance v0, Landroid/graphics/Path;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lkotlin/math/MathKt;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :try_start_0
    invoke-static {v1, v0}, Lkotlin/math/MathKt;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    const-string v0, "Error in parsing "

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0, p1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    return-object p2

    .line 157
    :cond_5
    const-string p0, "Invalid motion easing type: "

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object p2

    .line 167
    :cond_6
    const-string p0, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    .line 168
    .line 169
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object p2
.end method

.method public static resolveThemeSpringForce(Landroid/content/Context;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f040449

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->resolve(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialSpring:[I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const v3, 0x7f130182

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    cmpl-float v4, v3, v2

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    cmpl-float v2, v1, v2

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v1, "A MaterialSpring style must have a damping value."

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v1, "A MaterialSpring style must have stiffness value."

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 17
    .line 18
    if-ne v0, p0, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    sget-object p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 34
    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final setupActionBarWithNavController(Lcom/fsck/k9/ui/base/BaseActivity;Landroidx/navigation/NavHostController;Landroidx/fragment/app/Fragment$7;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;-><init>(Lcom/fsck/k9/ui/base/BaseActivity;Landroidx/fragment/app/Fragment$7;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 34
    .line 35
    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p0, p2, p1}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavHostController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public static final stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroid/content/res/Resources;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 22
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toMap-impl(Landroid/os/Bundle;)Lkotlin/collections/builders/MapBuilder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v2, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public abstract createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
.end method

.method public createFromFontInfoWithFallback(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "createFromFontInfoWithFallback must only be called on API 29+"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/work/OperationKt;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0, p2, p3}, Landroidx/work/OperationKt;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public abstract onFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onLoaded(Lokhttp3/Dispatcher;)V
.end method
