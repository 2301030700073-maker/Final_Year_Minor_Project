.class public abstract Landroidx/compose/material3/ColorSchemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 15
    .line 16
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 24
    .line 25
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    return-void
.end method

.method public static final contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    .line 4
    .line 5
    iget-wide v4, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    .line 6
    .line 7
    iget-wide v6, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    .line 8
    .line 9
    iget-wide v8, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 10
    .line 11
    sget v10, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 12
    .line 13
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 20
    .line 21
    return-wide p0

    .line 22
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 23
    .line 24
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 31
    .line 32
    return-wide p0

    .line 33
    :cond_1
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 34
    .line 35
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 42
    .line 43
    return-wide p0

    .line 44
    :cond_2
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 45
    .line 46
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 53
    .line 54
    return-wide p0

    .line 55
    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 56
    .line 57
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 64
    .line 65
    return-wide p0

    .line 66
    :cond_4
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 67
    .line 68
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 75
    .line 76
    return-wide p0

    .line 77
    :cond_5
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 78
    .line 79
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 86
    .line 87
    return-wide p0

    .line 88
    :cond_6
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 89
    .line 90
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 97
    .line 98
    return-wide p0

    .line 99
    :cond_7
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 100
    .line 101
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 108
    .line 109
    return-wide p0

    .line 110
    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 111
    .line 112
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 119
    .line 120
    return-wide p0

    .line 121
    :cond_9
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 122
    .line 123
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_a
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 131
    .line 132
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 139
    .line 140
    return-wide p0

    .line 141
    :cond_b
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 142
    .line 143
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_c
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 151
    .line 152
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_d

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_d
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 160
    .line 161
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_e

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_e
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 169
    .line 170
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_f

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_f
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 178
    .line 179
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_10

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_10
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 187
    .line 188
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_11

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_11
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 196
    .line 197
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_12

    .line 202
    .line 203
    :goto_0
    return-wide v8

    .line 204
    :cond_12
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    .line 205
    .line 206
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_13

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_13
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    .line 214
    .line 215
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_14

    .line 220
    .line 221
    :goto_1
    return-wide v6

    .line 222
    :cond_14
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    .line 223
    .line 224
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_15

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_15
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    .line 232
    .line 233
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_16

    .line 238
    .line 239
    :goto_2
    return-wide v4

    .line 240
    :cond_16
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    .line 241
    .line 242
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_17

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_17
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    .line 250
    .line 251
    invoke-static {p1, p2, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-eqz p0, :cond_18

    .line 256
    .line 257
    :goto_3
    return-wide v2

    .line 258
    :cond_18
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 259
    .line 260
    return-wide p0
.end method

.method public static final contentColorFor-ek8zF_U(JLandroidx/compose/runtime/GapComposer;)J
    .locals 2

    .line 1
    const v0, 0x553c0da

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 14
    .line 15
    invoke-static {v0, p0, p1}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    const-wide/16 v0, 0x10

    .line 20
    .line 21
    cmp-long v0, p0, v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 33
    .line 34
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 38
    .line 39
    .line 40
    return-wide p0
.end method

.method public static final fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 13
    .line 14
    .line 15
    const-wide/16 p0, 0x0

    .line 16
    .line 17
    return-wide p0

    .line 18
    :pswitch_0
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    .line 19
    .line 20
    return-wide p0

    .line 21
    :pswitch_1
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    .line 22
    .line 23
    return-wide p0

    .line 24
    :pswitch_2
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    .line 25
    .line 26
    return-wide p0

    .line 27
    :pswitch_3
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    .line 28
    .line 29
    return-wide p0

    .line 30
    :pswitch_4
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    .line 31
    .line 32
    return-wide p0

    .line 33
    :pswitch_5
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    .line 34
    .line 35
    return-wide p0

    .line 36
    :pswitch_6
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    .line 37
    .line 38
    return-wide p0

    .line 39
    :pswitch_7
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    .line 40
    .line 41
    return-wide p0

    .line 42
    :pswitch_8
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    .line 43
    .line 44
    return-wide p0

    .line 45
    :pswitch_9
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    .line 46
    .line 47
    return-wide p0

    .line 48
    :pswitch_a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    .line 49
    .line 50
    return-wide p0

    .line 51
    :pswitch_b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    .line 52
    .line 53
    return-wide p0

    .line 54
    :pswitch_c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 55
    .line 56
    return-wide p0

    .line 57
    :pswitch_d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 58
    .line 59
    return-wide p0

    .line 60
    :pswitch_e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 61
    .line 62
    return-wide p0

    .line 63
    :pswitch_f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 64
    .line 65
    return-wide p0

    .line 66
    :pswitch_10
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 67
    .line 68
    return-wide p0

    .line 69
    :pswitch_11
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 70
    .line 71
    return-wide p0

    .line 72
    :pswitch_12
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 73
    .line 74
    return-wide p0

    .line 75
    :pswitch_13
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 76
    .line 77
    return-wide p0

    .line 78
    :pswitch_14
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 79
    .line 80
    return-wide p0

    .line 81
    :pswitch_15
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 82
    .line 83
    return-wide p0

    .line 84
    :pswitch_16
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 85
    .line 86
    return-wide p0

    .line 87
    :pswitch_17
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 88
    .line 89
    return-wide p0

    .line 90
    :pswitch_18
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 91
    .line 92
    return-wide p0

    .line 93
    :pswitch_19
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    .line 94
    .line 95
    return-wide p0

    .line 96
    :pswitch_1a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 97
    .line 98
    return-wide p0

    .line 99
    :pswitch_1b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 100
    .line 101
    return-wide p0

    .line 102
    :pswitch_1c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    .line 103
    .line 104
    return-wide p0

    .line 105
    :pswitch_1d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 106
    .line 107
    return-wide p0

    .line 108
    :pswitch_1e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 109
    .line 110
    return-wide p0

    .line 111
    :pswitch_1f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 112
    .line 113
    return-wide p0

    .line 114
    :pswitch_20
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 115
    .line 116
    return-wide p0

    .line 117
    :pswitch_21
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 118
    .line 119
    return-wide p0

    .line 120
    :pswitch_22
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 121
    .line 122
    return-wide p0

    .line 123
    :pswitch_23
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 124
    .line 125
    return-wide p0

    .line 126
    :pswitch_24
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 127
    .line 128
    return-wide p0

    .line 129
    :pswitch_25
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 130
    .line 131
    return-wide p0

    .line 132
    :pswitch_26
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 133
    .line 134
    return-wide p0

    .line 135
    :pswitch_27
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 136
    .line 137
    return-wide p0

    .line 138
    :pswitch_28
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 139
    .line 140
    return-wide p0

    .line 141
    :pswitch_29
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 142
    .line 143
    return-wide p0

    .line 144
    :pswitch_2a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 145
    .line 146
    return-wide p0

    .line 147
    :pswitch_2b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    .line 148
    .line 149
    return-wide p0

    .line 150
    :pswitch_2c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 151
    .line 152
    return-wide p0

    .line 153
    :pswitch_2d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 154
    .line 155
    return-wide p0

    .line 156
    :pswitch_2e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 157
    .line 158
    return-wide p0

    .line 159
    :pswitch_2f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 160
    .line 161
    return-wide p0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
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

.method public static final getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/material3/ColorScheme;

    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method
