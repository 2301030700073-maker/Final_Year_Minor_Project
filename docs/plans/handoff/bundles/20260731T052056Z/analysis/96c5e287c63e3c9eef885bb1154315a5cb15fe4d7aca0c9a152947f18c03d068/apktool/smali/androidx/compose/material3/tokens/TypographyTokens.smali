.class public abstract Landroidx/compose/material3/tokens/TypographyTokens;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final BodyLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final BodyMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final BodySmall:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplayLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplayMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplaySmall:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

.field public static final LabelLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final LabelMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final LabelSmall:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleSmall:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 4
    .line 5
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 6
    .line 7
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeSize:J

    .line 8
    .line 9
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeLineHeight:J

    .line 10
    .line 11
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeTracking:J

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const v12, 0xfdff59

    .line 15
    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 26
    .line 27
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 28
    .line 29
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumSize:J

    .line 30
    .line 31
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumLineHeight:J

    .line 32
    .line 33
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumTracking:J

    .line 34
    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 42
    .line 43
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 44
    .line 45
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 46
    .line 47
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallSize:J

    .line 48
    .line 49
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    .line 50
    .line 51
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallTracking:J

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 62
    .line 63
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 64
    .line 65
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeSize:J

    .line 66
    .line 67
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeLineHeight:J

    .line 68
    .line 69
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeTracking:J

    .line 70
    .line 71
    const-wide/16 v1, 0x0

    .line 72
    .line 73
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    .line 78
    .line 79
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 80
    .line 81
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 82
    .line 83
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumSize:J

    .line 84
    .line 85
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumLineHeight:J

    .line 86
    .line 87
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumTracking:J

    .line 88
    .line 89
    const-wide/16 v1, 0x0

    .line 90
    .line 91
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    .line 96
    .line 97
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 98
    .line 99
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 100
    .line 101
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallSize:J

    .line 102
    .line 103
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallLineHeight:J

    .line 104
    .line 105
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallTracking:J

    .line 106
    .line 107
    const-wide/16 v1, 0x0

    .line 108
    .line 109
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    .line 114
    .line 115
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 116
    .line 117
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 118
    .line 119
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeSize:J

    .line 120
    .line 121
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeLineHeight:J

    .line 122
    .line 123
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeTracking:J

    .line 124
    .line 125
    const-wide/16 v1, 0x0

    .line 126
    .line 127
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 132
    .line 133
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 134
    .line 135
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 136
    .line 137
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumSize:J

    .line 138
    .line 139
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumLineHeight:J

    .line 140
    .line 141
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumTracking:J

    .line 142
    .line 143
    const-wide/16 v1, 0x0

    .line 144
    .line 145
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 150
    .line 151
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 152
    .line 153
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 154
    .line 155
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallSize:J

    .line 156
    .line 157
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallLineHeight:J

    .line 158
    .line 159
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallTracking:J

    .line 160
    .line 161
    const-wide/16 v1, 0x0

    .line 162
    .line 163
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 168
    .line 169
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 170
    .line 171
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 172
    .line 173
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeSize:J

    .line 174
    .line 175
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeLineHeight:J

    .line 176
    .line 177
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeTracking:J

    .line 178
    .line 179
    const-wide/16 v1, 0x0

    .line 180
    .line 181
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 186
    .line 187
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 188
    .line 189
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 190
    .line 191
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumSize:J

    .line 192
    .line 193
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumLineHeight:J

    .line 194
    .line 195
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumTracking:J

    .line 196
    .line 197
    const-wide/16 v1, 0x0

    .line 198
    .line 199
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 204
    .line 205
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 206
    .line 207
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 208
    .line 209
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallSize:J

    .line 210
    .line 211
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallLineHeight:J

    .line 212
    .line 213
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallTracking:J

    .line 214
    .line 215
    const-wide/16 v1, 0x0

    .line 216
    .line 217
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    .line 222
    .line 223
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 224
    .line 225
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 226
    .line 227
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeSize:J

    .line 228
    .line 229
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeLineHeight:J

    .line 230
    .line 231
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeTracking:J

    .line 232
    .line 233
    const-wide/16 v1, 0x0

    .line 234
    .line 235
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 240
    .line 241
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 242
    .line 243
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 244
    .line 245
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumSize:J

    .line 246
    .line 247
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumLineHeight:J

    .line 248
    .line 249
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumTracking:J

    .line 250
    .line 251
    const-wide/16 v1, 0x0

    .line 252
    .line 253
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 258
    .line 259
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 260
    .line 261
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 262
    .line 263
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallSize:J

    .line 264
    .line 265
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallLineHeight:J

    .line 266
    .line 267
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallTracking:J

    .line 268
    .line 269
    const-wide/16 v1, 0x0

    .line 270
    .line 271
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 276
    .line 277
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 278
    .line 279
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 280
    .line 281
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedSize:J

    .line 282
    .line 283
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedLineHeight:J

    .line 284
    .line 285
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedTracking:J

    .line 286
    .line 287
    const-wide/16 v1, 0x0

    .line 288
    .line 289
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 290
    .line 291
    .line 292
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 293
    .line 294
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 295
    .line 296
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedSize:J

    .line 297
    .line 298
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedLineHeight:J

    .line 299
    .line 300
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedTracking:J

    .line 301
    .line 302
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 303
    .line 304
    .line 305
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 306
    .line 307
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 308
    .line 309
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedSize:J

    .line 310
    .line 311
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedLineHeight:J

    .line 312
    .line 313
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedTracking:J

    .line 314
    .line 315
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 316
    .line 317
    .line 318
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 319
    .line 320
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 321
    .line 322
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedSize:J

    .line 323
    .line 324
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedLineHeight:J

    .line 325
    .line 326
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedTracking:J

    .line 327
    .line 328
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 329
    .line 330
    .line 331
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 332
    .line 333
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 334
    .line 335
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedSize:J

    .line 336
    .line 337
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedLineHeight:J

    .line 338
    .line 339
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedTracking:J

    .line 340
    .line 341
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 342
    .line 343
    .line 344
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 345
    .line 346
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 347
    .line 348
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedSize:J

    .line 349
    .line 350
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedLineHeight:J

    .line 351
    .line 352
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedTracking:J

    .line 353
    .line 354
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 355
    .line 356
    .line 357
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 358
    .line 359
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 360
    .line 361
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedSize:J

    .line 362
    .line 363
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedLineHeight:J

    .line 364
    .line 365
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedTracking:J

    .line 366
    .line 367
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 368
    .line 369
    .line 370
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 371
    .line 372
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 373
    .line 374
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedSize:J

    .line 375
    .line 376
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedLineHeight:J

    .line 377
    .line 378
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedTracking:J

    .line 379
    .line 380
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 381
    .line 382
    .line 383
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 384
    .line 385
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 386
    .line 387
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedSize:J

    .line 388
    .line 389
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedLineHeight:J

    .line 390
    .line 391
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedTracking:J

    .line 392
    .line 393
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 394
    .line 395
    .line 396
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 397
    .line 398
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 399
    .line 400
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedSize:J

    .line 401
    .line 402
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedLineHeight:J

    .line 403
    .line 404
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedTracking:J

    .line 405
    .line 406
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 407
    .line 408
    .line 409
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 410
    .line 411
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 412
    .line 413
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedSize:J

    .line 414
    .line 415
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedLineHeight:J

    .line 416
    .line 417
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedTracking:J

    .line 418
    .line 419
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 420
    .line 421
    .line 422
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 423
    .line 424
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 425
    .line 426
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedSize:J

    .line 427
    .line 428
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedLineHeight:J

    .line 429
    .line 430
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedTracking:J

    .line 431
    .line 432
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 433
    .line 434
    .line 435
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 436
    .line 437
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 438
    .line 439
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedSize:J

    .line 440
    .line 441
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedLineHeight:J

    .line 442
    .line 443
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedTracking:J

    .line 444
    .line 445
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 446
    .line 447
    .line 448
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 449
    .line 450
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 451
    .line 452
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedSize:J

    .line 453
    .line 454
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedLineHeight:J

    .line 455
    .line 456
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedTracking:J

    .line 457
    .line 458
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 459
    .line 460
    .line 461
    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 462
    .line 463
    sget-object v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 464
    .line 465
    sget-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedSize:J

    .line 466
    .line 467
    sget-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedLineHeight:J

    .line 468
    .line 469
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedTracking:J

    .line 470
    .line 471
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 472
    .line 473
    .line 474
    return-void
.end method
