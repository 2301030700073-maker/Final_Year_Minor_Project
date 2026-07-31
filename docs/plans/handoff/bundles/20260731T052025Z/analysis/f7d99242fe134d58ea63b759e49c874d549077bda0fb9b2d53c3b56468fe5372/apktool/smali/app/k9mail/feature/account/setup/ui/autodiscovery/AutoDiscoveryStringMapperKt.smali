.class public abstract Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$223280969:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, 0xd4eff49

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->lambda$223280969:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final AccountAutoDiscoveryContent(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move-object/from16 v7, p4

    .line 2
    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    move/from16 v9, p9

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-object/from16 v10, p8

    .line 26
    .line 27
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    const v0, 0x2b5eec82

    .line 30
    .line 31
    .line 32
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v0, v9, 0x6

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    and-int/lit8 v0, v9, 0x8

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v0, 0x2

    .line 57
    :goto_1
    or-int/2addr v0, v9

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v0, v9

    .line 60
    :goto_2
    and-int/lit8 v1, v9, 0x30

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const/16 v1, 0x20

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/16 v1, 0x10

    .line 74
    .line 75
    :goto_3
    or-int/2addr v0, v1

    .line 76
    :cond_4
    and-int/lit16 v1, v9, 0x180

    .line 77
    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    const/16 v1, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/16 v1, 0x80

    .line 90
    .line 91
    :goto_4
    or-int/2addr v0, v1

    .line 92
    :cond_6
    and-int/lit16 v1, v9, 0xc00

    .line 93
    .line 94
    move-object/from16 v6, p3

    .line 95
    .line 96
    if-nez v1, :cond_8

    .line 97
    .line 98
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    const/16 v1, 0x800

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    const/16 v1, 0x400

    .line 108
    .line 109
    :goto_5
    or-int/2addr v0, v1

    .line 110
    :cond_8
    and-int/lit16 v1, v9, 0x6000

    .line 111
    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    const v1, 0x8000

    .line 115
    .line 116
    .line 117
    and-int/2addr v1, v9

    .line 118
    if-nez v1, :cond_9

    .line 119
    .line 120
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto :goto_6

    .line 125
    :cond_9
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    :goto_6
    if-eqz v1, :cond_a

    .line 130
    .line 131
    const/16 v1, 0x4000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_a
    const/16 v1, 0x2000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v0, v1

    .line 137
    :cond_b
    const/high16 v1, 0x30000

    .line 138
    .line 139
    and-int/2addr v1, v9

    .line 140
    move-object/from16 v4, p5

    .line 141
    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_c

    .line 149
    .line 150
    const/high16 v1, 0x20000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_c
    const/high16 v1, 0x10000

    .line 154
    .line 155
    :goto_8
    or-int/2addr v0, v1

    .line 156
    :cond_d
    const/high16 v1, 0x180000

    .line 157
    .line 158
    and-int/2addr v1, v9

    .line 159
    if-nez v1, :cond_f

    .line 160
    .line 161
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_e

    .line 166
    .line 167
    const/high16 v1, 0x100000

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_e
    const/high16 v1, 0x80000

    .line 171
    .line 172
    :goto_9
    or-int/2addr v0, v1

    .line 173
    :cond_f
    const/high16 v1, 0xc00000

    .line 174
    .line 175
    or-int/2addr v0, v1

    .line 176
    const v1, 0x492493

    .line 177
    .line 178
    .line 179
    and-int/2addr v1, v0

    .line 180
    const v2, 0x492492

    .line 181
    .line 182
    .line 183
    const/4 v11, 0x0

    .line 184
    const/4 v5, 0x1

    .line 185
    if-eq v1, v2, :cond_10

    .line 186
    .line 187
    move v1, v5

    .line 188
    goto :goto_a

    .line 189
    :cond_10
    move v1, v11

    .line 190
    :goto_a
    and-int/2addr v0, v5

    .line 191
    invoke-virtual {v10, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_11

    .line 196
    .line 197
    invoke-static {v10}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 202
    .line 203
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 212
    .line 213
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v2, "AccountAutoDiscoveryContent"

    .line 218
    .line 219
    invoke-static {v0, v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    move-object v3, p0

    .line 226
    move-object v2, p1

    .line 227
    move-object v5, p2

    .line 228
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;)V

    .line 229
    .line 230
    .line 231
    const v1, 0x5fbb1f02

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const/16 v1, 0x30

    .line 239
    .line 240
    invoke-static {v12, v0, v10, v1, v11}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 244
    .line 245
    goto :goto_b

    .line 246
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 247
    .line 248
    .line 249
    move-object/from16 v0, p7

    .line 250
    .line 251
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    if-eqz v10, :cond_12

    .line 256
    .line 257
    move-object v8, v0

    .line 258
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;

    .line 259
    .line 260
    move-object v1, p0

    .line 261
    move-object v2, p1

    .line 262
    move-object v3, p2

    .line 263
    move-object/from16 v4, p3

    .line 264
    .line 265
    move-object/from16 v5, p4

    .line 266
    .line 267
    move-object/from16 v6, p5

    .line 268
    .line 269
    move-object/from16 v7, p6

    .line 270
    .line 271
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;I)V

    .line 272
    .line 273
    .line 274
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 275
    .line 276
    :cond_12
    return-void
.end method

.method public static final AccountAutoDiscoveryScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v5, p4

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
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-object/from16 v7, p7

    .line 22
    .line 23
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    const v0, -0x763672a4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p0

    .line 32
    .line 33
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x4

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x2

    .line 43
    :goto_0
    or-int v0, p8, v0

    .line 44
    .line 45
    move-object/from16 v3, p1

    .line 46
    .line 47
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const/16 v4, 0x20

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/16 v4, 0x10

    .line 57
    .line 58
    :goto_1
    or-int/2addr v0, v4

    .line 59
    move-object/from16 v6, p2

    .line 60
    .line 61
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/16 v4, 0x80

    .line 71
    .line 72
    :goto_2
    or-int/2addr v0, v4

    .line 73
    move-object/from16 v8, p3

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    const/16 v4, 0x800

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    const/16 v4, 0x400

    .line 85
    .line 86
    :goto_3
    or-int/2addr v0, v4

    .line 87
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    const/16 v4, 0x4000

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    const/16 v4, 0x2000

    .line 97
    .line 98
    :goto_4
    or-int/2addr v0, v4

    .line 99
    move-object/from16 v9, p5

    .line 100
    .line 101
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    const/high16 v4, 0x20000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    const/high16 v4, 0x10000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v0, v4

    .line 113
    const/high16 v4, 0x180000

    .line 114
    .line 115
    or-int/2addr v0, v4

    .line 116
    const v4, 0x92493

    .line 117
    .line 118
    .line 119
    and-int/2addr v4, v0

    .line 120
    const v10, 0x92492

    .line 121
    .line 122
    .line 123
    const/4 v11, 0x0

    .line 124
    const/4 v12, 0x1

    .line 125
    if-eq v4, v10, :cond_6

    .line 126
    .line 127
    move v4, v12

    .line 128
    goto :goto_6

    .line 129
    :cond_6
    move v4, v11

    .line 130
    :goto_6
    and-int/lit8 v10, v0, 0x1

    .line 131
    .line 132
    invoke-virtual {v7, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_e

    .line 137
    .line 138
    shr-int/lit8 v0, v0, 0xc

    .line 139
    .line 140
    iget-object v4, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 141
    .line 142
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    and-int/lit8 v4, v0, 0xe

    .line 147
    .line 148
    xor-int/lit8 v4, v4, 0x6

    .line 149
    .line 150
    if-le v4, v2, :cond_7

    .line 151
    .line 152
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    :cond_7
    and-int/lit8 v0, v0, 0x6

    .line 159
    .line 160
    if-ne v0, v2, :cond_9

    .line 161
    .line 162
    :cond_8
    move v0, v12

    .line 163
    goto :goto_7

    .line 164
    :cond_9
    move v0, v11

    .line 165
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 170
    .line 171
    if-nez v0, :cond_a

    .line 172
    .line 173
    if-ne v2, v13, :cond_b

    .line 174
    .line 175
    :cond_a
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 176
    .line 177
    const/4 v0, 0x7

    .line 178
    invoke-direct {v2, v5, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_b
    move-object v14, v2

    .line 185
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 186
    .line 187
    iget-object v15, v5, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 188
    .line 189
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    const/4 v5, 0x1

    .line 193
    move-object v4, v1

    .line 194
    move-object/from16 v1, p4

    .line 195
    .line 196
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v7, v15, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-nez v0, :cond_c

    .line 217
    .line 218
    if-ne v1, v13, :cond_d

    .line 219
    .line 220
    :cond_c
    new-instance v1, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 221
    .line 222
    const/4 v0, 0x3

    .line 223
    invoke-direct {v1, v0, v14}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 230
    .line 231
    invoke-static {v11, v1, v7, v11, v12}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    move-object/from16 v5, p4

    .line 237
    .line 238
    move-object v3, v6

    .line 239
    move-object v4, v8

    .line 240
    move-object v6, v9

    .line 241
    move-object v1, v10

    .line 242
    move-object v2, v14

    .line 243
    invoke-direct/range {v0 .. v6}, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;)V

    .line 244
    .line 245
    .line 246
    const v1, -0x733a5518

    .line 247
    .line 248
    .line 249
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const v8, 0x180006

    .line 254
    .line 255
    .line 256
    const/16 v9, 0x3e

    .line 257
    .line 258
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 259
    .line 260
    const/4 v1, 0x0

    .line 261
    const/4 v2, 0x0

    .line 262
    const/4 v3, 0x0

    .line 263
    const/4 v4, 0x0

    .line 264
    const/4 v5, 0x0

    .line 265
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 270
    .line 271
    .line 272
    move-object/from16 v0, p6

    .line 273
    .line 274
    :goto_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    if-eqz v9, :cond_f

    .line 279
    .line 280
    move-object v7, v0

    .line 281
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda2;

    .line 282
    .line 283
    move-object/from16 v1, p0

    .line 284
    .line 285
    move-object/from16 v2, p1

    .line 286
    .line 287
    move-object/from16 v3, p2

    .line 288
    .line 289
    move-object/from16 v4, p3

    .line 290
    .line 291
    move-object/from16 v5, p4

    .line 292
    .line 293
    move-object/from16 v6, p5

    .line 294
    .line 295
    move/from16 v8, p8

    .line 296
    .line 297
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;I)V

    .line 298
    .line 299
    .line 300
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    :cond_f
    return-void
.end method

.method public static final AutoDiscoveryContent(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v6, p6

    .line 17
    .line 18
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v0, 0x738a6907

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int v0, p7, v0

    .line 36
    .line 37
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v0, v2

    .line 49
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v3, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v3

    .line 61
    move-object/from16 v3, p3

    .line 62
    .line 63
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    const/16 v4, 0x800

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v4, 0x400

    .line 73
    .line 74
    :goto_3
    or-int/2addr v0, v4

    .line 75
    move-object/from16 v4, p4

    .line 76
    .line 77
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    const/16 v5, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/16 v5, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v0, v5

    .line 89
    const/high16 v5, 0x30000

    .line 90
    .line 91
    or-int v8, v0, v5

    .line 92
    .line 93
    const v0, 0x12493

    .line 94
    .line 95
    .line 96
    and-int/2addr v0, v8

    .line 97
    const v5, 0x12492

    .line 98
    .line 99
    .line 100
    if-eq v0, v5, :cond_5

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    const/4 v0, 0x0

    .line 105
    :goto_5
    and-int/lit8 v5, v8, 0x1

    .line 106
    .line 107
    invoke-virtual {v6, v5, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 114
    .line 115
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v5, v0

    .line 120
    check-cast v5, Landroid/content/res/Resources;

    .line 121
    .line 122
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 123
    .line 124
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    .line 126
    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 131
    .line 132
    const/16 v11, 0xe

    .line 133
    .line 134
    invoke-direct {v0, v11, v5, p1}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 135
    .line 136
    .line 137
    const v12, -0x34847008    # -1.6486392E7f

    .line 138
    .line 139
    .line 140
    invoke-static {v12, v0, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    new-instance v0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    move-object v1, p1

    .line 147
    move-object v2, p2

    .line 148
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroid/content/res/Resources;)V

    .line 149
    .line 150
    .line 151
    const v1, -0x37e7892e

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const v0, 0x301b8

    .line 159
    .line 160
    .line 161
    and-int/lit8 v1, v8, 0xe

    .line 162
    .line 163
    or-int/2addr v0, v1

    .line 164
    sget-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->lambda$223280969:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    const/4 v4, 0x0

    .line 167
    move v7, v0

    .line 168
    move-object v3, v10

    .line 169
    move-object v2, v12

    .line 170
    move-object v0, p0

    .line 171
    invoke-static/range {v0 .. v7}, Lcom/fsck/k9/sasl/OAuthBearer;->ContentLoadingErrorView(Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 176
    .line 177
    .line 178
    move-object/from16 v9, p5

    .line 179
    .line 180
    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    if-eqz v10, :cond_7

    .line 185
    .line 186
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;

    .line 187
    .line 188
    const/4 v8, 0x1

    .line 189
    move-object v1, p0

    .line 190
    move-object v2, p1

    .line 191
    move-object v3, p2

    .line 192
    move-object/from16 v4, p3

    .line 193
    .line 194
    move-object/from16 v5, p4

    .line 195
    .line 196
    move/from16 v7, p7

    .line 197
    .line 198
    move-object v6, v9

    .line 199
    invoke-direct/range {v0 .. v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 200
    .line 201
    .line 202
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 203
    .line 204
    :cond_7
    return-void
.end method

.method public static final ContentView(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroid/content/res/Resources;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v0, p5

    .line 12
    .line 13
    move/from16 v12, p8

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v6, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    iget-object v7, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 21
    .line 22
    iget-object v8, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 23
    .line 24
    iget-object v9, v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-object/from16 v10, p7

    .line 42
    .line 43
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    const v11, -0x2ede0c76

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    .line 51
    and-int/lit8 v11, v12, 0x6

    .line 52
    .line 53
    if-nez v11, :cond_2

    .line 54
    .line 55
    and-int/lit8 v11, v12, 0x8

    .line 56
    .line 57
    if-nez v11, :cond_0

    .line 58
    .line 59
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    :goto_0
    if-eqz v11, :cond_1

    .line 69
    .line 70
    const/4 v11, 0x4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v11, 0x2

    .line 73
    :goto_1
    or-int/2addr v11, v12

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v11, v12

    .line 76
    :goto_2
    and-int/lit8 v15, v12, 0x30

    .line 77
    .line 78
    if-nez v15, :cond_4

    .line 79
    .line 80
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    if-eqz v15, :cond_3

    .line 85
    .line 86
    const/16 v15, 0x20

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const/16 v15, 0x10

    .line 90
    .line 91
    :goto_3
    or-int/2addr v11, v15

    .line 92
    :cond_4
    and-int/lit16 v15, v12, 0x180

    .line 93
    .line 94
    if-nez v15, :cond_6

    .line 95
    .line 96
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    if-eqz v15, :cond_5

    .line 101
    .line 102
    const/16 v15, 0x100

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/16 v15, 0x80

    .line 106
    .line 107
    :goto_4
    or-int/2addr v11, v15

    .line 108
    :cond_6
    and-int/lit16 v15, v12, 0xc00

    .line 109
    .line 110
    if-nez v15, :cond_8

    .line 111
    .line 112
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-eqz v15, :cond_7

    .line 117
    .line 118
    const/16 v15, 0x800

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    const/16 v15, 0x400

    .line 122
    .line 123
    :goto_5
    or-int/2addr v11, v15

    .line 124
    :cond_8
    and-int/lit16 v15, v12, 0x6000

    .line 125
    .line 126
    if-nez v15, :cond_b

    .line 127
    .line 128
    const v15, 0x8000

    .line 129
    .line 130
    .line 131
    and-int/2addr v15, v12

    .line 132
    if-nez v15, :cond_9

    .line 133
    .line 134
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    goto :goto_6

    .line 139
    :cond_9
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    :goto_6
    if-eqz v15, :cond_a

    .line 144
    .line 145
    const/16 v15, 0x4000

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_a
    const/16 v15, 0x2000

    .line 149
    .line 150
    :goto_7
    or-int/2addr v11, v15

    .line 151
    :cond_b
    const/high16 v15, 0x30000

    .line 152
    .line 153
    and-int/2addr v15, v12

    .line 154
    if-nez v15, :cond_d

    .line 155
    .line 156
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-eqz v15, :cond_c

    .line 161
    .line 162
    const/high16 v15, 0x20000

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_c
    const/high16 v15, 0x10000

    .line 166
    .line 167
    :goto_8
    or-int/2addr v11, v15

    .line 168
    :cond_d
    const/high16 v15, 0x180000

    .line 169
    .line 170
    or-int/2addr v11, v15

    .line 171
    const v15, 0x92493

    .line 172
    .line 173
    .line 174
    and-int/2addr v15, v11

    .line 175
    const v13, 0x92492

    .line 176
    .line 177
    .line 178
    move/from16 v22, v11

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    if-eq v15, v13, :cond_e

    .line 182
    .line 183
    const/4 v13, 0x1

    .line 184
    goto :goto_9

    .line 185
    :cond_e
    move v13, v11

    .line 186
    :goto_9
    and-int/lit8 v15, v22, 0x1

    .line 187
    .line 188
    invoke-virtual {v10, v15, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-eqz v13, :cond_29

    .line 193
    .line 194
    sget-object v13, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 195
    .line 196
    sget-object v15, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 197
    .line 198
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v17

    .line 202
    check-cast v17, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 203
    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const/16 v17, 0x20

    .line 208
    .line 209
    const/high16 v14, 0x42000000    # 32.0f

    .line 210
    .line 211
    invoke-static {v13, v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 216
    .line 217
    invoke-interface {v13, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 222
    .line 223
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 224
    .line 225
    invoke-static {v5, v12, v10, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 230
    .line 231
    ushr-long v18, v11, v17

    .line 232
    .line 233
    xor-long v11, v11, v18

    .line 234
    .line 235
    long-to-int v11, v11

    .line 236
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-static {v10, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 245
    .line 246
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    move/from16 v18, v11

    .line 250
    .line 251
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 252
    .line 253
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 254
    .line 255
    .line 256
    iget-boolean v1, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 257
    .line 258
    if-eqz v1, :cond_f

    .line 259
    .line 260
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 261
    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 265
    .line 266
    .line 267
    :goto_a
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 268
    .line 269
    invoke-static {v10, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 270
    .line 271
    .line 272
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 273
    .line 274
    invoke-static {v10, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    .line 276
    .line 277
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 282
    .line 283
    invoke-static {v10, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 284
    .line 285
    .line 286
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 287
    .line 288
    invoke-static {v10, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 289
    .line 290
    .line 291
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 292
    .line 293
    invoke-static {v10, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    .line 295
    .line 296
    sget-object v1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->EMAIL_ADDRESS:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 297
    .line 298
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 299
    .line 300
    const/4 v12, 0x0

    .line 301
    if-eq v9, v1, :cond_17

    .line 302
    .line 303
    const v1, 0x1f122db

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 307
    .line 308
    .line 309
    and-int/lit8 v1, v22, 0x70

    .line 310
    .line 311
    move/from16 v13, v17

    .line 312
    .line 313
    if-ne v1, v13, :cond_10

    .line 314
    .line 315
    const/4 v13, 0x1

    .line 316
    goto :goto_b

    .line 317
    :cond_10
    const/4 v13, 0x0

    .line 318
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    if-nez v13, :cond_11

    .line 323
    .line 324
    if-ne v5, v11, :cond_12

    .line 325
    .line 326
    :cond_11
    new-instance v5, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 327
    .line 328
    const/4 v13, 0x2

    .line 329
    invoke-direct {v5, v13, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 336
    .line 337
    const/4 v13, 0x0

    .line 338
    invoke-static {v8, v5, v12, v10, v13}, Landroidx/work/Data$Companion;->AutoDiscoveryResultView(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 339
    .line 340
    .line 341
    if-eqz v8, :cond_16

    .line 342
    .line 343
    iget-boolean v5, v8, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 344
    .line 345
    if-nez v5, :cond_16

    .line 346
    .line 347
    const v5, 0x1f57b1a

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 351
    .line 352
    .line 353
    const/16 v13, 0x20

    .line 354
    .line 355
    if-ne v1, v13, :cond_13

    .line 356
    .line 357
    const/4 v1, 0x1

    .line 358
    goto :goto_c

    .line 359
    :cond_13
    const/4 v1, 0x0

    .line 360
    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-nez v1, :cond_14

    .line 365
    .line 366
    if-ne v5, v11, :cond_15

    .line 367
    .line 368
    :cond_14
    new-instance v5, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 369
    .line 370
    const/4 v1, 0x6

    .line 371
    invoke-direct {v5, v1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 378
    .line 379
    const/4 v1, 0x0

    .line 380
    invoke-static {v7, v5, v10, v1}, Landroidx/appcompat/app/ActionBar;->AutoDiscoveryResultApprovalView(Lnet/thunderbird/core/validation/input/BooleanInputField;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_d

    .line 387
    :cond_16
    const/4 v1, 0x0

    .line 388
    const/16 v13, 0x20

    .line 389
    .line 390
    const v5, 0x1f8e202

    .line 391
    .line 392
    .line 393
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    :goto_d
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    const/high16 v5, 0x41800000    # 16.0f

    .line 409
    .line 410
    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v12

    .line 414
    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 418
    .line 419
    .line 420
    goto :goto_e

    .line 421
    :cond_17
    move/from16 v13, v17

    .line 422
    .line 423
    const/4 v1, 0x0

    .line 424
    const v5, 0x1fa2782

    .line 425
    .line 426
    .line 427
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    :goto_e
    iget-object v1, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    new-instance v5, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;

    .line 440
    .line 441
    const/4 v12, 0x1

    .line 442
    invoke-direct {v5, v3, v4, v12}, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 443
    .line 444
    .line 445
    const v12, -0x130020a8

    .line 446
    .line 447
    .line 448
    invoke-static {v12, v5, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 449
    .line 450
    .line 451
    move-result-object v18

    .line 452
    const v20, 0x180006

    .line 453
    .line 454
    .line 455
    const/16 v21, 0x1e

    .line 456
    .line 457
    move-object v5, v14

    .line 458
    const/4 v14, 0x0

    .line 459
    move-object v12, v15

    .line 460
    const/4 v15, 0x0

    .line 461
    const/16 v16, 0x0

    .line 462
    .line 463
    const/16 v17, 0x0

    .line 464
    .line 465
    move-object/from16 v19, v10

    .line 466
    .line 467
    move v10, v13

    .line 468
    move v13, v1

    .line 469
    const/4 v1, 0x4

    .line 470
    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v13, v19

    .line 474
    .line 475
    iget-object v15, v6, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 476
    .line 477
    iget-object v6, v6, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 478
    .line 479
    if-eqz v6, :cond_18

    .line 480
    .line 481
    invoke-static {v6, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->toAutoDiscoveryValidationErrorString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    move-object/from16 v16, v6

    .line 486
    .line 487
    goto :goto_f

    .line 488
    :cond_18
    const/16 v16, 0x0

    .line 489
    .line 490
    :goto_f
    const/4 v6, 0x3

    .line 491
    const/4 v14, 0x0

    .line 492
    invoke-static {v6, v14}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 493
    .line 494
    .line 495
    move-result-object v18

    .line 496
    const-string v14, "account_setup_email_address_input"

    .line 497
    .line 498
    invoke-static {v5, v14}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 499
    .line 500
    .line 501
    move-result-object v14

    .line 502
    and-int/lit8 v1, v22, 0x70

    .line 503
    .line 504
    if-ne v1, v10, :cond_19

    .line 505
    .line 506
    const/16 v17, 0x1

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_19
    const/16 v17, 0x0

    .line 510
    .line 511
    :goto_10
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    if-nez v17, :cond_1a

    .line 516
    .line 517
    if-ne v10, v11, :cond_1b

    .line 518
    .line 519
    :cond_1a
    new-instance v10, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 520
    .line 521
    invoke-direct {v10, v6, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    :cond_1b
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 528
    .line 529
    const/16 v17, 0x0

    .line 530
    .line 531
    const v20, 0x30030

    .line 532
    .line 533
    .line 534
    move-object/from16 v19, v13

    .line 535
    .line 536
    move-object v13, v10

    .line 537
    const/4 v10, 0x0

    .line 538
    invoke-static/range {v13 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->EmailAddressInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;I)V

    .line 539
    .line 540
    .line 541
    move-object/from16 v13, v19

    .line 542
    .line 543
    sget-object v14, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->PASSWORD:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 544
    .line 545
    if-ne v9, v14, :cond_20

    .line 546
    .line 547
    const v7, 0x2079863

    .line 548
    .line 549
    .line 550
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 558
    .line 559
    const/high16 v8, 0x41800000    # 16.0f

    .line 560
    .line 561
    invoke-static {v7, v5, v8, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v7, p0

    .line 565
    .line 566
    iget-object v8, v7, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 567
    .line 568
    iget-object v9, v8, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 569
    .line 570
    iget-object v8, v8, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 571
    .line 572
    if-eqz v8, :cond_1c

    .line 573
    .line 574
    invoke-static {v8, v0}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->toAutoDiscoveryValidationErrorString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v12

    .line 578
    move-object/from16 v19, v12

    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_1c
    const/16 v19, 0x0

    .line 582
    .line 583
    :goto_11
    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 584
    .line 585
    .line 586
    move-result-object v15

    .line 587
    const-string v6, "account_setup_password_input"

    .line 588
    .line 589
    invoke-static {v5, v6}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 590
    .line 591
    .line 592
    move-result-object v17

    .line 593
    const/16 v10, 0x20

    .line 594
    .line 595
    if-ne v1, v10, :cond_1d

    .line 596
    .line 597
    const/4 v1, 0x1

    .line 598
    goto :goto_12

    .line 599
    :cond_1d
    const/4 v1, 0x0

    .line 600
    :goto_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v6

    .line 604
    if-nez v1, :cond_1e

    .line 605
    .line 606
    if-ne v6, v11, :cond_1f

    .line 607
    .line 608
    :cond_1e
    new-instance v6, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 609
    .line 610
    const/4 v1, 0x4

    .line 611
    invoke-direct {v6, v1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    :cond_1f
    move-object/from16 v20, v6

    .line 618
    .line 619
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 620
    .line 621
    move-object/from16 v16, v13

    .line 622
    .line 623
    const v13, 0x30030

    .line 624
    .line 625
    .line 626
    const/16 v14, 0x8

    .line 627
    .line 628
    const/16 v21, 0x0

    .line 629
    .line 630
    move-object/from16 v18, v9

    .line 631
    .line 632
    invoke-static/range {v13 .. v21}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->PasswordInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 633
    .line 634
    .line 635
    move-object/from16 v6, v16

    .line 636
    .line 637
    const/4 v13, 0x0

    .line 638
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 639
    .line 640
    .line 641
    move-object v1, v5

    .line 642
    move-object v9, v6

    .line 643
    const/4 v12, 0x1

    .line 644
    goto/16 :goto_18

    .line 645
    .line 646
    :cond_20
    move-object v6, v13

    .line 647
    const/4 v13, 0x0

    .line 648
    sget-object v10, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->OAUTH:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 649
    .line 650
    if-ne v9, v10, :cond_28

    .line 651
    .line 652
    const v9, 0x2100894

    .line 653
    .line 654
    .line 655
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 656
    .line 657
    .line 658
    if-eqz v8, :cond_21

    .line 659
    .line 660
    iget-boolean v8, v8, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 661
    .line 662
    goto :goto_13

    .line 663
    :cond_21
    move v8, v13

    .line 664
    :goto_13
    iget-object v7, v7, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 665
    .line 666
    if-eqz v7, :cond_22

    .line 667
    .line 668
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    goto :goto_14

    .line 673
    :cond_22
    move v7, v13

    .line 674
    :goto_14
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v9

    .line 678
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 679
    .line 680
    const/high16 v10, 0x41800000    # 16.0f

    .line 681
    .line 682
    invoke-static {v9, v5, v10, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 683
    .line 684
    .line 685
    const/16 v10, 0x20

    .line 686
    .line 687
    if-ne v1, v10, :cond_23

    .line 688
    .line 689
    const/4 v1, 0x1

    .line 690
    goto :goto_15

    .line 691
    :cond_23
    move v1, v13

    .line 692
    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v9

    .line 696
    if-nez v1, :cond_24

    .line 697
    .line 698
    if-ne v9, v11, :cond_25

    .line 699
    .line 700
    :cond_24
    new-instance v9, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 701
    .line 702
    const/4 v1, 0x5

    .line 703
    invoke-direct {v9, v1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    :cond_25
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 710
    .line 711
    if-nez v8, :cond_27

    .line 712
    .line 713
    if-eqz v7, :cond_26

    .line 714
    .line 715
    goto :goto_16

    .line 716
    :cond_26
    move v8, v13

    .line 717
    goto :goto_17

    .line 718
    :cond_27
    :goto_16
    const/4 v8, 0x1

    .line 719
    :goto_17
    shr-int/lit8 v1, v22, 0x9

    .line 720
    .line 721
    and-int/lit8 v10, v1, 0x70

    .line 722
    .line 723
    const/4 v11, 0x4

    .line 724
    const/4 v7, 0x0

    .line 725
    move-object v1, v5

    .line 726
    move-object v5, v9

    .line 727
    const/4 v12, 0x1

    .line 728
    move-object v9, v6

    .line 729
    move-object/from16 v6, p4

    .line 730
    .line 731
    invoke-static/range {v5 .. v11}, Landroidx/work/Operation$State;->AccountOAuthView(Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 735
    .line 736
    .line 737
    goto :goto_18

    .line 738
    :cond_28
    move-object v1, v5

    .line 739
    move-object v9, v6

    .line 740
    const/4 v12, 0x1

    .line 741
    const v5, 0x217bf22

    .line 742
    .line 743
    .line 744
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 748
    .line 749
    .line 750
    :goto_18
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 751
    .line 752
    .line 753
    move-object v7, v1

    .line 754
    goto :goto_19

    .line 755
    :cond_29
    move-object v9, v10

    .line 756
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 757
    .line 758
    .line 759
    move-object/from16 v7, p6

    .line 760
    .line 761
    :goto_19
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 762
    .line 763
    .line 764
    move-result-object v10

    .line 765
    if-eqz v10, :cond_2a

    .line 766
    .line 767
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 768
    .line 769
    const/4 v9, 0x3

    .line 770
    move-object/from16 v1, p0

    .line 771
    .line 772
    move-object/from16 v5, p4

    .line 773
    .line 774
    move-object/from16 v6, p5

    .line 775
    .line 776
    move/from16 v8, p8

    .line 777
    .line 778
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 779
    .line 780
    .line 781
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 782
    .line 783
    :cond_2a
    return-void
.end method

.method public static final toAutoDiscoveryValidationErrorString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    check-cast p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError;

    .line 13
    .line 14
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$EmptyEmailAddress;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$EmptyEmailAddress;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const p0, 0x7f120178

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$NotAllowed;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$NotAllowed;

    .line 34
    .line 35
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const p0, 0x7f120176

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidOrNotSupported;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidOrNotSupported;

    .line 53
    .line 54
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const p0, 0x7f120177

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_2
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidEmailAddress;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidEmailAddress;

    .line 72
    .line 73
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    const p0, 0x7f120175

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_4
    instance-of v0, p0, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidatePassword$ValidatePasswordError$EmptyPassword;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    check-cast p0, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidatePassword$ValidatePasswordError$EmptyPassword;

    .line 99
    .line 100
    sget-object v0, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidatePassword$ValidatePasswordError$EmptyPassword;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidatePassword$ValidatePasswordError$EmptyPassword;

    .line 101
    .line 102
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    const p0, 0x7f120179

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 120
    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_6
    instance-of v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    check-cast p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;

    .line 128
    .line 129
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;

    .line 130
    .line 131
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_7

    .line 136
    .line 137
    const p0, 0x7f12016d

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_8
    const-string p1, "Unknown error: "

    .line 153
    .line 154
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v1
.end method
