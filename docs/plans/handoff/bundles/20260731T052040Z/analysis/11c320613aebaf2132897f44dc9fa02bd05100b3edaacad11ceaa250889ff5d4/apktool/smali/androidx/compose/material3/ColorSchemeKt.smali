.class public abstract Landroidx/compose/material3/ColorSchemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J
    .locals 11

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x553bcda

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 18
    .line 19
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 20
    .line 21
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    .line 22
    .line 23
    iget-wide v5, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    .line 24
    .line 25
    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    .line 26
    .line 27
    iget-wide v9, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 28
    .line 29
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 40
    .line 41
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 52
    .line 53
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 64
    .line 65
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 76
    .line 77
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_4
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 88
    .line 89
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_5
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 100
    .line 101
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_6
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 112
    .line 113
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_7
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 124
    .line 125
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_8
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 136
    .line 137
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_9
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 148
    .line 149
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_a

    .line 154
    .line 155
    :goto_0
    move-wide v3, v9

    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_a
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 159
    .line 160
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_b
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 171
    .line 172
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_c

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_c
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 180
    .line 181
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_d

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_d
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 189
    .line 190
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_e

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_e
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 198
    .line 199
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_f

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_f
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 207
    .line 208
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_10

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_10
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 216
    .line 217
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_11

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_11
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 225
    .line 226
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_12

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_12
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    .line 234
    .line 235
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_13

    .line 240
    .line 241
    :goto_1
    move-wide v3, v7

    .line 242
    goto :goto_3

    .line 243
    :cond_13
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    .line 244
    .line 245
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_14

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_14
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    .line 253
    .line 254
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_15

    .line 259
    .line 260
    :goto_2
    move-wide v3, v5

    .line 261
    goto :goto_3

    .line 262
    :cond_15
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    .line 263
    .line 264
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_16

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_16
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    .line 272
    .line 273
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_17

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_17
    iget-wide v0, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    .line 281
    .line 282
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    if-eqz p0, :cond_18

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_18
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 290
    .line 291
    :goto_3
    const-wide/16 p0, 0x10

    .line 292
    .line 293
    cmp-long p0, v3, p0

    .line 294
    .line 295
    if-eqz p0, :cond_19

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_19
    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 299
    .line 300
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 305
    .line 306
    iget-wide v3, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 307
    .line 308
    :goto_4
    const/4 p0, 0x0

    .line 309
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 310
    .line 311
    .line 312
    return-wide v3
.end method

.method public static darkColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;
    .locals 100

    move/from16 v0, p70

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Primary:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimary:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p2

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 3
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InversePrimary:J

    move-wide v12, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v12, p8

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 4
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Secondary:J

    move-wide v14, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v14, p10

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 5
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondary:J

    move-wide/from16 v16, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v16, p12

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 6
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SecondaryContainer:J

    move-wide/from16 v18, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v18, p14

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 7
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondaryContainer:J

    move-wide/from16 v20, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v20, p16

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 8
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Tertiary:J

    move-wide/from16 v22, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v22, p18

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 9
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiary:J

    move-wide/from16 v24, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v24, p20

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 10
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->TertiaryContainer:J

    move-wide/from16 v26, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v26, p22

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 11
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiaryContainer:J

    move-wide/from16 v28, v1

    goto :goto_a

    :cond_a
    move-wide/from16 v28, p24

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 12
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Background:J

    move-wide/from16 v30, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v30, p26

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    .line 13
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnBackground:J

    move-wide/from16 v32, v1

    goto :goto_c

    :cond_c
    move-wide/from16 v32, p28

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 14
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Surface:J

    move-wide/from16 v34, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v34, p30

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 15
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurface:J

    move-wide/from16 v36, v1

    goto :goto_e

    :cond_e
    move-wide/from16 v36, p32

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 16
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceVariant:J

    move-wide/from16 v38, v1

    goto :goto_f

    :cond_f
    move-wide/from16 v38, p34

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 17
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSurfaceVariant:J

    move-wide/from16 v40, v1

    goto :goto_10

    :cond_10
    move-wide/from16 v40, p36

    :goto_10
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 18
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseSurface:J

    move-wide/from16 v44, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v44, p38

    :goto_11
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 19
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->InverseOnSurface:J

    move-wide/from16 v46, v1

    goto :goto_12

    :cond_12
    move-wide/from16 v46, p40

    :goto_12
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 20
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Error:J

    move-wide/from16 v48, v1

    goto :goto_13

    :cond_13
    move-wide/from16 v48, p42

    :goto_13
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 21
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnError:J

    move-wide/from16 v50, v1

    goto :goto_14

    :cond_14
    move-wide/from16 v50, p44

    :goto_14
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 22
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->ErrorContainer:J

    move-wide/from16 v52, v1

    goto :goto_15

    :cond_15
    move-wide/from16 v52, p46

    :goto_15
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 23
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnErrorContainer:J

    move-wide/from16 v54, v1

    goto :goto_16

    :cond_16
    move-wide/from16 v54, p48

    :goto_16
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 24
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Outline:J

    move-wide/from16 v56, v1

    goto :goto_17

    :cond_17
    move-wide/from16 v56, p50

    :goto_17
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    .line 25
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->OutlineVariant:J

    move-wide/from16 v58, v1

    goto :goto_18

    :cond_18
    move-wide/from16 v58, p52

    :goto_18
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    .line 26
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->Scrim:J

    move-wide/from16 v60, v1

    goto :goto_19

    :cond_19
    move-wide/from16 v60, p54

    :goto_19
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    .line 27
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceBright:J

    move-wide/from16 v62, v1

    goto :goto_1a

    :cond_1a
    move-wide/from16 v62, p56

    :goto_1a
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    .line 28
    sget-wide v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceContainer:J

    move-wide/from16 v66, v1

    goto :goto_1b

    :cond_1b
    move-wide/from16 v66, p58

    :goto_1b
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 29
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceContainerHigh:J

    move-wide/from16 v68, v0

    goto :goto_1c

    :cond_1c
    move-wide/from16 v68, p60

    :goto_1c
    and-int/lit8 v0, p71, 0x1

    if-eqz v0, :cond_1d

    .line 30
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceContainerHighest:J

    move-wide/from16 v70, v0

    goto :goto_1d

    :cond_1d
    move-wide/from16 v70, p62

    :goto_1d
    and-int/lit8 v0, p71, 0x2

    if-eqz v0, :cond_1e

    .line 31
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceContainerLow:J

    move-wide/from16 v72, v0

    goto :goto_1e

    :cond_1e
    move-wide/from16 v72, p64

    :goto_1e
    and-int/lit8 v0, p71, 0x4

    if-eqz v0, :cond_1f

    .line 32
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceContainerLowest:J

    move-wide/from16 v74, v0

    goto :goto_1f

    :cond_1f
    move-wide/from16 v74, p66

    :goto_1f
    and-int/lit8 v0, p71, 0x8

    if-eqz v0, :cond_20

    .line 33
    sget-wide v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->SurfaceDim:J

    move-wide/from16 v64, v0

    goto :goto_20

    :cond_20
    move-wide/from16 v64, p68

    .line 34
    :goto_20
    sget-wide v76, Landroidx/compose/material3/tokens/ColorDarkTokens;->PrimaryFixed:J

    .line 35
    sget-wide v78, Landroidx/compose/material3/tokens/ColorDarkTokens;->PrimaryFixedDim:J

    .line 36
    sget-wide v80, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimaryFixed:J

    .line 37
    sget-wide v82, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnPrimaryFixedVariant:J

    .line 38
    sget-wide v84, Landroidx/compose/material3/tokens/ColorDarkTokens;->SecondaryFixed:J

    .line 39
    sget-wide v86, Landroidx/compose/material3/tokens/ColorDarkTokens;->SecondaryFixedDim:J

    .line 40
    sget-wide v88, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondaryFixed:J

    .line 41
    sget-wide v90, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnSecondaryFixedVariant:J

    .line 42
    sget-wide v92, Landroidx/compose/material3/tokens/ColorDarkTokens;->TertiaryFixed:J

    .line 43
    sget-wide v94, Landroidx/compose/material3/tokens/ColorDarkTokens;->TertiaryFixedDim:J

    .line 44
    sget-wide v96, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiaryFixed:J

    .line 45
    sget-wide v98, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnTertiaryFixedVariant:J

    .line 46
    new-instance v3, Landroidx/compose/material3/ColorScheme;

    move-wide/from16 v42, v4

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v3 .. v99}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v3
.end method

.method public static final fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 9
    .line 10
    .line 11
    const-wide/16 p0, 0x0

    .line 12
    .line 13
    return-wide p0

    .line 14
    :pswitch_0
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    .line 15
    .line 16
    return-wide p0

    .line 17
    :pswitch_1
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    .line 18
    .line 19
    return-wide p0

    .line 20
    :pswitch_2
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 21
    .line 22
    return-wide p0

    .line 23
    :pswitch_3
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 24
    .line 25
    return-wide p0

    .line 26
    :pswitch_4
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 27
    .line 28
    return-wide p0

    .line 29
    :pswitch_5
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 30
    .line 31
    return-wide p0

    .line 32
    :pswitch_6
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 33
    .line 34
    return-wide p0

    .line 35
    :pswitch_7
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 36
    .line 37
    return-wide p0

    .line 38
    :pswitch_8
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 39
    .line 40
    return-wide p0

    .line 41
    :pswitch_9
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 42
    .line 43
    return-wide p0

    .line 44
    :pswitch_a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 45
    .line 46
    return-wide p0

    .line 47
    :pswitch_b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 48
    .line 49
    return-wide p0

    .line 50
    :pswitch_c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 51
    .line 52
    return-wide p0

    .line 53
    :pswitch_d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 54
    .line 55
    return-wide p0

    .line 56
    :pswitch_e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    .line 57
    .line 58
    return-wide p0

    .line 59
    :pswitch_f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    .line 60
    .line 61
    return-wide p0

    .line 62
    :pswitch_10
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 63
    .line 64
    return-wide p0

    .line 65
    :pswitch_11
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 66
    .line 67
    return-wide p0

    .line 68
    :pswitch_12
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    .line 69
    .line 70
    return-wide p0

    .line 71
    :pswitch_13
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    .line 72
    .line 73
    return-wide p0

    .line 74
    :pswitch_14
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    .line 75
    .line 76
    return-wide p0

    .line 77
    :pswitch_15
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 78
    .line 79
    return-wide p0

    .line 80
    :pswitch_16
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 81
    .line 82
    return-wide p0

    .line 83
    :pswitch_17
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    .line 84
    .line 85
    return-wide p0

    .line 86
    :pswitch_18
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 87
    .line 88
    return-wide p0

    .line 89
    :pswitch_19
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    .line 90
    .line 91
    return-wide p0

    .line 92
    :pswitch_1a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    .line 93
    .line 94
    return-wide p0

    .line 95
    :pswitch_1b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 96
    .line 97
    return-wide p0

    .line 98
    :pswitch_1c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 99
    .line 100
    return-wide p0

    .line 101
    :pswitch_1d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 102
    .line 103
    return-wide p0

    .line 104
    :pswitch_1e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 105
    .line 106
    return-wide p0

    .line 107
    :pswitch_1f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    .line 108
    .line 109
    return-wide p0

    .line 110
    :pswitch_20
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    .line 111
    .line 112
    return-wide p0

    .line 113
    :pswitch_21
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 114
    .line 115
    return-wide p0

    .line 116
    :pswitch_22
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 117
    .line 118
    return-wide p0

    .line 119
    :pswitch_23
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    .line 120
    .line 121
    return-wide p0

    .line 122
    :pswitch_24
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    .line 123
    .line 124
    return-wide p0

    .line 125
    :pswitch_25
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 126
    .line 127
    return-wide p0

    .line 128
    :pswitch_26
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 129
    .line 130
    return-wide p0

    .line 131
    :pswitch_27
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 132
    .line 133
    return-wide p0

    .line 134
    :pswitch_28
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 135
    .line 136
    return-wide p0

    .line 137
    :pswitch_29
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 138
    .line 139
    return-wide p0

    .line 140
    :pswitch_2a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 141
    .line 142
    return-wide p0

    .line 143
    :pswitch_2b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    .line 144
    .line 145
    return-wide p0

    .line 146
    :pswitch_2c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 147
    .line 148
    return-wide p0

    .line 149
    :pswitch_2d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 150
    .line 151
    return-wide p0

    .line 152
    :pswitch_2e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 153
    .line 154
    return-wide p0

    .line 155
    :pswitch_2f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 156
    .line 157
    return-wide p0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public static final getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/compose/material3/MaterialTheme$Values;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method public static lightColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;
    .locals 100

    move/from16 v0, p70

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Primary:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimary:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 3
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryContainer:J

    move-wide v8, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p4

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 4
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryContainer:J

    move-wide v10, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p6

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    .line 5
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InversePrimary:J

    move-wide v12, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p8

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    .line 6
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Secondary:J

    move-wide v14, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p10

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    .line 7
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondary:J

    move-wide/from16 v16, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v16, p12

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    .line 8
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryContainer:J

    move-wide/from16 v18, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p14

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    .line 9
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryContainer:J

    move-wide/from16 v20, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p16

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    .line 10
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Tertiary:J

    move-wide/from16 v22, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p18

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    .line 11
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiary:J

    move-wide/from16 v24, v1

    goto :goto_a

    :cond_a
    move-wide/from16 v24, p20

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    .line 12
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryContainer:J

    move-wide/from16 v26, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v26, p22

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    .line 13
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryContainer:J

    move-wide/from16 v28, v1

    goto :goto_c

    :cond_c
    move-wide/from16 v28, p24

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    .line 14
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Background:J

    move-wide/from16 v30, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v30, p26

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    .line 15
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnBackground:J

    move-wide/from16 v32, v1

    goto :goto_e

    :cond_e
    move-wide/from16 v32, p28

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 16
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Surface:J

    move-wide/from16 v34, v1

    goto :goto_f

    :cond_f
    move-wide/from16 v34, p30

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 17
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurface:J

    move-wide/from16 v36, v1

    goto :goto_10

    :cond_10
    move-wide/from16 v36, p32

    :goto_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 18
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceVariant:J

    move-wide/from16 v38, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v38, p34

    :goto_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 19
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurfaceVariant:J

    move-wide/from16 v40, v1

    goto :goto_12

    :cond_12
    move-wide/from16 v40, p36

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 20
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseSurface:J

    move-wide/from16 v44, v1

    goto :goto_13

    :cond_13
    move-wide/from16 v44, p38

    :goto_13
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 21
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseOnSurface:J

    move-wide/from16 v46, v1

    goto :goto_14

    :cond_14
    move-wide/from16 v46, p40

    :goto_14
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 22
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Error:J

    move-wide/from16 v48, v1

    goto :goto_15

    :cond_15
    move-wide/from16 v48, p42

    :goto_15
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 23
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnError:J

    move-wide/from16 v50, v1

    goto :goto_16

    :cond_16
    move-wide/from16 v50, p44

    :goto_16
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 24
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->ErrorContainer:J

    move-wide/from16 v52, v1

    goto :goto_17

    :cond_17
    move-wide/from16 v52, p46

    :goto_17
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    .line 25
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnErrorContainer:J

    move-wide/from16 v54, v1

    goto :goto_18

    :cond_18
    move-wide/from16 v54, p48

    :goto_18
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    .line 26
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Outline:J

    move-wide/from16 v56, v1

    goto :goto_19

    :cond_19
    move-wide/from16 v56, p50

    :goto_19
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    .line 27
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OutlineVariant:J

    move-wide/from16 v58, v1

    goto :goto_1a

    :cond_1a
    move-wide/from16 v58, p52

    :goto_1a
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    .line 28
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Scrim:J

    move-wide/from16 v60, v1

    goto :goto_1b

    :cond_1b
    move-wide/from16 v60, p54

    :goto_1b
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1c

    .line 29
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceBright:J

    move-wide/from16 v62, v1

    goto :goto_1c

    :cond_1c
    move-wide/from16 v62, p56

    :goto_1c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1d

    .line 30
    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainer:J

    move-wide/from16 v66, v1

    goto :goto_1d

    :cond_1d
    move-wide/from16 v66, p58

    :goto_1d
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 31
    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHigh:J

    move-wide/from16 v68, v0

    goto :goto_1e

    :cond_1e
    move-wide/from16 v68, p60

    :goto_1e
    and-int/lit8 v0, p71, 0x1

    if-eqz v0, :cond_1f

    .line 32
    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHighest:J

    move-wide/from16 v70, v0

    goto :goto_1f

    :cond_1f
    move-wide/from16 v70, p62

    :goto_1f
    and-int/lit8 v0, p71, 0x2

    if-eqz v0, :cond_20

    .line 33
    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLow:J

    move-wide/from16 v72, v0

    goto :goto_20

    :cond_20
    move-wide/from16 v72, p64

    :goto_20
    and-int/lit8 v0, p71, 0x4

    if-eqz v0, :cond_21

    .line 34
    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLowest:J

    move-wide/from16 v74, v0

    goto :goto_21

    :cond_21
    move-wide/from16 v74, p66

    :goto_21
    and-int/lit8 v0, p71, 0x8

    if-eqz v0, :cond_22

    .line 35
    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceDim:J

    move-wide/from16 v64, v0

    goto :goto_22

    :cond_22
    move-wide/from16 v64, p68

    .line 36
    :goto_22
    sget-wide v76, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixed:J

    .line 37
    sget-wide v78, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryFixedDim:J

    .line 38
    sget-wide v80, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixed:J

    .line 39
    sget-wide v82, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryFixedVariant:J

    .line 40
    sget-wide v84, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixed:J

    .line 41
    sget-wide v86, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryFixedDim:J

    .line 42
    sget-wide v88, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixed:J

    .line 43
    sget-wide v90, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryFixedVariant:J

    .line 44
    sget-wide v92, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixed:J

    .line 45
    sget-wide v94, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryFixedDim:J

    .line 46
    sget-wide v96, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixed:J

    .line 47
    sget-wide v98, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryFixedVariant:J

    .line 48
    new-instance v3, Landroidx/compose/material3/ColorScheme;

    move-wide/from16 v42, v4

    invoke-direct/range {v3 .. v99}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v3
.end method
