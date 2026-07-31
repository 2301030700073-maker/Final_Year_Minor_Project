.class public abstract Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final FAVOURITE_ICON_COLOR:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0xfff4c430L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt;->FAVOURITE_ICON_COLOR:J

    .line 11
    .line 12
    return-void
.end method

.method public static final FavouriteButtonIcon--jt2gSs(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v9, p4

    .line 9
    .line 10
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x6644520a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x4

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p5, v0

    .line 29
    .line 30
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/16 v5, 0x20

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    move v4, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v4, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v4

    .line 43
    move-object/from16 v12, p2

    .line 44
    .line 45
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const/16 v4, 0x100

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v4, 0x80

    .line 55
    .line 56
    :goto_2
    or-int/2addr v0, v4

    .line 57
    move/from16 v13, p3

    .line 58
    .line 59
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    const/16 v4, 0x800

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    const/16 v4, 0x400

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v4

    .line 71
    and-int/lit16 v4, v0, 0x493

    .line 72
    .line 73
    const/16 v6, 0x492

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    if-eq v4, v6, :cond_4

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move v4, v7

    .line 81
    :goto_4
    and-int/lit8 v6, v0, 0x1

    .line 82
    .line 83
    invoke-virtual {v9, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_e

    .line 88
    .line 89
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 90
    .line 91
    .line 92
    and-int/lit8 v4, p5, 0x1

    .line 93
    .line 94
    if-eqz v4, :cond_6

    .line 95
    .line 96
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Star:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Star:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 115
    .line 116
    :goto_6
    if-eqz v1, :cond_8

    .line 117
    .line 118
    const v6, -0x1987d4c2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 125
    .line 126
    .line 127
    sget-wide v10, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt;->FAVOURITE_ICON_COLOR:J

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_8
    const v6, -0x1987cf6d

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    .line 135
    .line 136
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 143
    .line 144
    iget-wide v10, v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 145
    .line 146
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    :goto_7
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 150
    .line 151
    const v6, 0x3ec28f5c    # 0.38f

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v21

    .line 158
    sget-object v14, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    check-cast v14, Landroidx/compose/material3/ColorScheme;

    .line 165
    .line 166
    sget-object v7, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 167
    .line 168
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Landroidx/compose/ui/graphics/Color;

    .line 173
    .line 174
    move-object/from16 v32, v9

    .line 175
    .line 176
    iget-wide v8, v7, Landroidx/compose/ui/graphics/Color;->value:J

    .line 177
    .line 178
    iget-object v7, v14, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 179
    .line 180
    if-nez v7, :cond_9

    .line 181
    .line 182
    new-instance v23, Landroidx/compose/material3/IconButtonColors;

    .line 183
    .line 184
    sget-wide v24, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 185
    .line 186
    sget v7, Landroidx/compose/material3/tokens/ListTokens;->DisabledOpacity$1:F

    .line 187
    .line 188
    invoke-static {v6, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v30

    .line 192
    move-wide/from16 v28, v24

    .line 193
    .line 194
    move-wide/from16 v26, v8

    .line 195
    .line 196
    invoke-direct/range {v23 .. v31}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v7, v23

    .line 200
    .line 201
    iput-object v7, v14, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 202
    .line 203
    :cond_9
    move-object v14, v7

    .line 204
    move-wide/from16 v19, v15

    .line 205
    .line 206
    move-wide/from16 v17, v10

    .line 207
    .line 208
    invoke-virtual/range {v14 .. v22}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v6}, Landroidx/compose/ui/unit/IntRectKt;->toButtonIconColors(Landroidx/compose/material3/IconButtonColors;)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-static/range {p2 .. p3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    const-string v7, "MessageItem_FavouriteButtonIcon"

    .line 221
    .line 222
    invoke-static {v6, v7}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    and-int/lit8 v7, v0, 0x70

    .line 227
    .line 228
    if-ne v7, v5, :cond_a

    .line 229
    .line 230
    const/4 v5, 0x1

    .line 231
    goto :goto_8

    .line 232
    :cond_a
    const/4 v5, 0x0

    .line 233
    :goto_8
    and-int/lit8 v0, v0, 0xe

    .line 234
    .line 235
    if-ne v0, v3, :cond_b

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    goto :goto_9

    .line 239
    :cond_b
    const/4 v7, 0x0

    .line 240
    :goto_9
    or-int v0, v5, v7

    .line 241
    .line 242
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    if-nez v0, :cond_d

    .line 247
    .line 248
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 249
    .line 250
    if-ne v3, v0, :cond_c

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_c
    move-object/from16 v9, v32

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_d
    :goto_a
    new-instance v3, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;

    .line 257
    .line 258
    const/4 v0, 0x5

    .line 259
    invoke-direct {v3, v2, v1, v0}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;ZI)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v9, v32

    .line 263
    .line 264
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :goto_b
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 268
    .line 269
    const/4 v10, 0x0

    .line 270
    const/16 v11, 0x18

    .line 271
    .line 272
    move-object v5, v6

    .line 273
    const/4 v6, 0x0

    .line 274
    const/4 v7, 0x0

    .line 275
    invoke-static/range {v3 .. v11}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 276
    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 280
    .line 281
    .line 282
    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-eqz v6, :cond_f

    .line 287
    .line 288
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;

    .line 289
    .line 290
    move/from16 v5, p5

    .line 291
    .line 292
    move-object v3, v12

    .line 293
    move v4, v13

    .line 294
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;FI)V

    .line 295
    .line 296
    .line 297
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 298
    .line 299
    :cond_f
    return-void
.end method
