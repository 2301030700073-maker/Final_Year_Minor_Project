.class public abstract Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$193229973:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, 0xb847495

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->lambda$193229973:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final SettingView$default(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    move-object/from16 v8, p6

    .line 2
    .line 3
    move/from16 v9, p8

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-object/from16 v6, p7

    .line 21
    .line 22
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    const v0, 0x73dae06f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v0, v9, 0x6

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x2

    .line 43
    :goto_0
    or-int/2addr v2, v9

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v2, v9

    .line 46
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 47
    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    and-int/lit8 v3, v9, 0x40

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_2
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const/16 v3, 0x20

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    const/16 v3, 0x10

    .line 69
    .line 70
    :goto_3
    or-int/2addr v2, v3

    .line 71
    :cond_4
    and-int/lit16 v3, v9, 0x180

    .line 72
    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    move-object/from16 v3, p2

    .line 76
    .line 77
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    const/16 v4, 0x100

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/16 v4, 0x80

    .line 87
    .line 88
    :goto_4
    or-int/2addr v2, v4

    .line 89
    goto :goto_5

    .line 90
    :cond_6
    move-object/from16 v3, p2

    .line 91
    .line 92
    :goto_5
    and-int/lit16 v4, v9, 0xc00

    .line 93
    .line 94
    if-nez v4, :cond_8

    .line 95
    .line 96
    move-object/from16 v4, p3

    .line 97
    .line 98
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_7

    .line 103
    .line 104
    const/16 v5, 0x800

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_7
    const/16 v5, 0x400

    .line 108
    .line 109
    :goto_6
    or-int/2addr v2, v5

    .line 110
    goto :goto_7

    .line 111
    :cond_8
    move-object/from16 v4, p3

    .line 112
    .line 113
    :goto_7
    and-int/lit16 v5, v9, 0x6000

    .line 114
    .line 115
    if-nez v5, :cond_a

    .line 116
    .line 117
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 118
    .line 119
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_9

    .line 124
    .line 125
    const/16 v5, 0x4000

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_9
    const/16 v5, 0x2000

    .line 129
    .line 130
    :goto_8
    or-int/2addr v2, v5

    .line 131
    :cond_a
    const/high16 v5, 0x30000

    .line 132
    .line 133
    and-int/2addr v5, v9

    .line 134
    if-nez v5, :cond_c

    .line 135
    .line 136
    move-object/from16 v5, p4

    .line 137
    .line 138
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_b

    .line 143
    .line 144
    const/high16 v7, 0x20000

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_b
    const/high16 v7, 0x10000

    .line 148
    .line 149
    :goto_9
    or-int/2addr v2, v7

    .line 150
    goto :goto_a

    .line 151
    :cond_c
    move-object/from16 v5, p4

    .line 152
    .line 153
    :goto_a
    and-int/lit8 v7, p9, 0x40

    .line 154
    .line 155
    const/high16 v10, 0x180000

    .line 156
    .line 157
    if-eqz v7, :cond_e

    .line 158
    .line 159
    or-int/2addr v2, v10

    .line 160
    :cond_d
    move-object/from16 v10, p5

    .line 161
    .line 162
    goto :goto_c

    .line 163
    :cond_e
    and-int/2addr v10, v9

    .line 164
    if-nez v10, :cond_d

    .line 165
    .line 166
    move-object/from16 v10, p5

    .line 167
    .line 168
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-eqz v11, :cond_f

    .line 173
    .line 174
    const/high16 v11, 0x100000

    .line 175
    .line 176
    goto :goto_b

    .line 177
    :cond_f
    const/high16 v11, 0x80000

    .line 178
    .line 179
    :goto_b
    or-int/2addr v2, v11

    .line 180
    :goto_c
    const/high16 v11, 0xc00000

    .line 181
    .line 182
    and-int/2addr v11, v9

    .line 183
    if-nez v11, :cond_12

    .line 184
    .line 185
    const/high16 v11, 0x1000000

    .line 186
    .line 187
    and-int/2addr v11, v9

    .line 188
    if-nez v11, :cond_10

    .line 189
    .line 190
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    goto :goto_d

    .line 195
    :cond_10
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    :goto_d
    if-eqz v11, :cond_11

    .line 200
    .line 201
    const/high16 v11, 0x800000

    .line 202
    .line 203
    goto :goto_e

    .line 204
    :cond_11
    const/high16 v11, 0x400000

    .line 205
    .line 206
    :goto_e
    or-int/2addr v2, v11

    .line 207
    :cond_12
    const v11, 0x492493

    .line 208
    .line 209
    .line 210
    and-int/2addr v11, v2

    .line 211
    const v12, 0x492492

    .line 212
    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    if-eq v11, v12, :cond_13

    .line 216
    .line 217
    const/4 v11, 0x1

    .line 218
    goto :goto_f

    .line 219
    :cond_13
    move v11, v13

    .line 220
    :goto_f
    and-int/lit8 v12, v2, 0x1

    .line 221
    .line 222
    invoke-virtual {v6, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    if-eqz v11, :cond_15

    .line 227
    .line 228
    if-eqz v7, :cond_14

    .line 229
    .line 230
    sget-object v7, Lnet/thunderbird/core/ui/setting/SettingViewProvider$ComposeDefaultImpls;->lambda$193229973:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 231
    .line 232
    move-object v5, v7

    .line 233
    goto :goto_10

    .line 234
    :cond_14
    move-object v5, v10

    .line 235
    :goto_10
    const v7, -0x7c755cb0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 239
    .line 240
    .line 241
    const v7, 0x3ffffe

    .line 242
    .line 243
    .line 244
    and-int/2addr v7, v2

    .line 245
    move-object v0, p0

    .line 246
    move-object v1, p1

    .line 247
    move-object v2, v3

    .line 248
    move-object v3, v4

    .line 249
    move-object/from16 v4, p4

    .line 250
    .line 251
    invoke-static/range {v0 .. v7}, Lokhttp3/Handshake$Companion;->DialogSettingView(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 255
    .line 256
    .line 257
    move-object v10, v5

    .line 258
    goto :goto_11

    .line 259
    :cond_15
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 260
    .line 261
    .line 262
    :goto_11
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    if-eqz v11, :cond_16

    .line 267
    .line 268
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;

    .line 269
    .line 270
    move-object v6, v10

    .line 271
    const/4 v10, 0x2

    .line 272
    move-object v1, p0

    .line 273
    move-object v2, p1

    .line 274
    move-object/from16 v3, p2

    .line 275
    .line 276
    move-object/from16 v4, p3

    .line 277
    .line 278
    move-object/from16 v5, p4

    .line 279
    .line 280
    move-object v7, v8

    .line 281
    move v8, v9

    .line 282
    move/from16 v9, p9

    .line 283
    .line 284
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 285
    .line 286
    .line 287
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 288
    .line 289
    :cond_16
    return-void
.end method
