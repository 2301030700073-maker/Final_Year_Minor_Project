.class public abstract Landroidx/compose/material3/IconKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->IconSize:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    return-void
.end method

.method public static final Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v3, -0x7faffaf9

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v4

    .line 25
    :goto_0
    or-int v3, p6, v3

    .line 26
    .line 27
    and-int/lit8 v5, p6, 0x30

    .line 28
    .line 29
    const/16 v6, 0x20

    .line 30
    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    move v5, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v5, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v3, v5

    .line 44
    :cond_2
    or-int/lit16 v3, v3, 0x580

    .line 45
    .line 46
    and-int/lit16 v5, v3, 0x493

    .line 47
    .line 48
    const/16 v7, 0x492

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x0

    .line 52
    if-eq v5, v7, :cond_3

    .line 53
    .line 54
    move v5, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v5, v9

    .line 57
    :goto_2
    and-int/lit8 v7, v3, 0x1

    .line 58
    .line 59
    invoke-virtual {v0, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_f

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 66
    .line 67
    .line 68
    and-int/lit8 v5, p6, 0x1

    .line 69
    .line 70
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 71
    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 82
    .line 83
    .line 84
    and-int/lit16 v3, v3, -0x1c01

    .line 85
    .line 86
    move-wide/from16 v10, p3

    .line 87
    .line 88
    move v5, v3

    .line 89
    move-object/from16 v3, p2

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 99
    .line 100
    iget-wide v10, v5, Landroidx/compose/ui/graphics/Color;->value:J

    .line 101
    .line 102
    and-int/lit16 v3, v3, -0x1c01

    .line 103
    .line 104
    move v5, v3

    .line 105
    move-object v3, v7

    .line 106
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 118
    .line 119
    if-nez v12, :cond_6

    .line 120
    .line 121
    if-ne v13, v14, :cond_8

    .line 122
    .line 123
    :cond_6
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 124
    .line 125
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_7

    .line 130
    .line 131
    const/4 v12, 0x0

    .line 132
    :goto_5
    move-object v13, v12

    .line 133
    goto :goto_6

    .line 134
    :cond_7
    new-instance v12, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 135
    .line 136
    const/4 v13, 0x5

    .line 137
    invoke-direct {v12, v10, v11, v13}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :goto_6
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_8
    check-cast v13, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 145
    .line 146
    if-eqz v2, :cond_c

    .line 147
    .line 148
    const v12, -0x20020383

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 152
    .line 153
    .line 154
    and-int/lit8 v5, v5, 0x70

    .line 155
    .line 156
    if-ne v5, v6, :cond_9

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_9
    move v8, v9

    .line 160
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-nez v8, :cond_a

    .line 165
    .line 166
    if-ne v5, v14, :cond_b

    .line 167
    .line 168
    :cond_a
    new-instance v5, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {v5, v2, v4}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_b
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 177
    .line 178
    invoke-static {v7, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_c
    const v4, -0x1fff9745

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 193
    .line 194
    .line 195
    move-object v4, v7

    .line 196
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    .line 197
    .line 198
    .line 199
    move-result-wide v14

    .line 200
    move/from16 p5, v6

    .line 201
    .line 202
    move-object v5, v7

    .line 203
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    invoke-static {v14, v15, v6, v7}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_e

    .line 213
    .line 214
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    .line 215
    .line 216
    .line 217
    move-result-wide v6

    .line 218
    shr-long v14, v6, p5

    .line 219
    .line 220
    long-to-int v8, v14

    .line 221
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_d

    .line 230
    .line 231
    const-wide v14, 0xffffffffL

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    and-long/2addr v6, v14

    .line 237
    long-to-int v6, v6

    .line 238
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_d

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_d
    move-object v7, v5

    .line 250
    goto :goto_a

    .line 251
    :cond_e
    :goto_9
    sget-object v7, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    :goto_a
    invoke-interface {v3, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const/4 v6, 0x0

    .line 258
    const/16 v7, 0x16

    .line 259
    .line 260
    invoke-static {v5, v1, v6, v13, v7}, Landroidx/compose/ui/draw/ClipKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;FLandroidx/compose/ui/graphics/BlendModeColorFilter;I)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-interface {v5, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v4, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 269
    .line 270
    .line 271
    move-wide v4, v10

    .line 272
    goto :goto_b

    .line 273
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 274
    .line 275
    .line 276
    move-object/from16 v3, p2

    .line 277
    .line 278
    move-wide/from16 v4, p3

    .line 279
    .line 280
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    if-eqz v7, :cond_10

    .line 285
    .line 286
    new-instance v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 287
    .line 288
    move/from16 v6, p6

    .line 289
    .line 290
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JI)V

    .line 291
    .line 292
    .line 293
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 294
    .line 295
    :cond_10
    return-void
.end method
