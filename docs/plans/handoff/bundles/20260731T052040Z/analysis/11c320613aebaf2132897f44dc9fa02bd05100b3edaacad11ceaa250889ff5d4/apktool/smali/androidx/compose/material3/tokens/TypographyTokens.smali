.class public final Landroidx/compose/material3/tokens/TypographyTokens;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final BodyLarge:Landroidx/compose/ui/text/TextStyle;

.field public final BodyMedium:Landroidx/compose/ui/text/TextStyle;

.field public final BodySmall:Landroidx/compose/ui/text/TextStyle;

.field public final DisplayLarge:Landroidx/compose/ui/text/TextStyle;

.field public final DisplayMedium:Landroidx/compose/ui/text/TextStyle;

.field public final DisplaySmall:Landroidx/compose/ui/text/TextStyle;

.field public final HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

.field public final HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

.field public final HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

.field public final LabelLarge:Landroidx/compose/ui/text/TextStyle;

.field public final LabelMedium:Landroidx/compose/ui/text/TextStyle;

.field public final LabelSmall:Landroidx/compose/ui/text/TextStyle;

.field public final TitleLarge:Landroidx/compose/ui/text/TextStyle;

.field public final TitleMedium:Landroidx/compose/ui/text/TextStyle;

.field public final TitleSmall:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 5
    .line 6
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 7
    .line 8
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 9
    .line 10
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeSize:J

    .line 11
    .line 12
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeLineHeight:J

    .line 13
    .line 14
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeTracking:J

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const v10, 0xfdff59

    .line 18
    .line 19
    .line 20
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 25
    .line 26
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 29
    .line 30
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumSize:J

    .line 31
    .line 32
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumLineHeight:J

    .line 33
    .line 34
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumTracking:J

    .line 35
    .line 36
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 41
    .line 42
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 43
    .line 44
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 45
    .line 46
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallSize:J

    .line 47
    .line 48
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    .line 49
    .line 50
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallTracking:J

    .line 51
    .line 52
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 57
    .line 58
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 59
    .line 60
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 61
    .line 62
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeSize:J

    .line 63
    .line 64
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeLineHeight:J

    .line 65
    .line 66
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeTracking:J

    .line 67
    .line 68
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    .line 73
    .line 74
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 75
    .line 76
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 77
    .line 78
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumSize:J

    .line 79
    .line 80
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumLineHeight:J

    .line 81
    .line 82
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumTracking:J

    .line 83
    .line 84
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    .line 89
    .line 90
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 91
    .line 92
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 93
    .line 94
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallSize:J

    .line 95
    .line 96
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallLineHeight:J

    .line 97
    .line 98
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallTracking:J

    .line 99
    .line 100
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    .line 105
    .line 106
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 107
    .line 108
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 109
    .line 110
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeSize:J

    .line 111
    .line 112
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeLineHeight:J

    .line 113
    .line 114
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeTracking:J

    .line 115
    .line 116
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 121
    .line 122
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 123
    .line 124
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 125
    .line 126
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumSize:J

    .line 127
    .line 128
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumLineHeight:J

    .line 129
    .line 130
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumTracking:J

    .line 131
    .line 132
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 137
    .line 138
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 139
    .line 140
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 141
    .line 142
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallSize:J

    .line 143
    .line 144
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallLineHeight:J

    .line 145
    .line 146
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallTracking:J

    .line 147
    .line 148
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 153
    .line 154
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 155
    .line 156
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 157
    .line 158
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeSize:J

    .line 159
    .line 160
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeLineHeight:J

    .line 161
    .line 162
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeTracking:J

    .line 163
    .line 164
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 169
    .line 170
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 171
    .line 172
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 173
    .line 174
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumSize:J

    .line 175
    .line 176
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumLineHeight:J

    .line 177
    .line 178
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumTracking:J

    .line 179
    .line 180
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 185
    .line 186
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 187
    .line 188
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 189
    .line 190
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallSize:J

    .line 191
    .line 192
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallLineHeight:J

    .line 193
    .line 194
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallTracking:J

    .line 195
    .line 196
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    .line 201
    .line 202
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 203
    .line 204
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 205
    .line 206
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeSize:J

    .line 207
    .line 208
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeLineHeight:J

    .line 209
    .line 210
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeTracking:J

    .line 211
    .line 212
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 217
    .line 218
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 219
    .line 220
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 221
    .line 222
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumSize:J

    .line 223
    .line 224
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumLineHeight:J

    .line 225
    .line 226
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumTracking:J

    .line 227
    .line 228
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 233
    .line 234
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 235
    .line 236
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 237
    .line 238
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallSize:J

    .line 239
    .line 240
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallLineHeight:J

    .line 241
    .line 242
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallTracking:J

    .line 243
    .line 244
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iput-object v1, p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 249
    .line 250
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 251
    .line 252
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 253
    .line 254
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedSize:J

    .line 255
    .line 256
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedLineHeight:J

    .line 257
    .line 258
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeEmphasizedTracking:J

    .line 259
    .line 260
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 261
    .line 262
    .line 263
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 264
    .line 265
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 266
    .line 267
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedSize:J

    .line 268
    .line 269
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedLineHeight:J

    .line 270
    .line 271
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumEmphasizedTracking:J

    .line 272
    .line 273
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 274
    .line 275
    .line 276
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 277
    .line 278
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 279
    .line 280
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedSize:J

    .line 281
    .line 282
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedLineHeight:J

    .line 283
    .line 284
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallEmphasizedTracking:J

    .line 285
    .line 286
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 287
    .line 288
    .line 289
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 290
    .line 291
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 292
    .line 293
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedSize:J

    .line 294
    .line 295
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedLineHeight:J

    .line 296
    .line 297
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeEmphasizedTracking:J

    .line 298
    .line 299
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 300
    .line 301
    .line 302
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 303
    .line 304
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 305
    .line 306
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedSize:J

    .line 307
    .line 308
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedLineHeight:J

    .line 309
    .line 310
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumEmphasizedTracking:J

    .line 311
    .line 312
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 313
    .line 314
    .line 315
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 316
    .line 317
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 318
    .line 319
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedSize:J

    .line 320
    .line 321
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedLineHeight:J

    .line 322
    .line 323
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallEmphasizedTracking:J

    .line 324
    .line 325
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 326
    .line 327
    .line 328
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 329
    .line 330
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 331
    .line 332
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedSize:J

    .line 333
    .line 334
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedLineHeight:J

    .line 335
    .line 336
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeEmphasizedTracking:J

    .line 337
    .line 338
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 339
    .line 340
    .line 341
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 342
    .line 343
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 344
    .line 345
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedSize:J

    .line 346
    .line 347
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedLineHeight:J

    .line 348
    .line 349
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumEmphasizedTracking:J

    .line 350
    .line 351
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 352
    .line 353
    .line 354
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 355
    .line 356
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 357
    .line 358
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedSize:J

    .line 359
    .line 360
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedLineHeight:J

    .line 361
    .line 362
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallEmphasizedTracking:J

    .line 363
    .line 364
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 365
    .line 366
    .line 367
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 368
    .line 369
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 370
    .line 371
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedSize:J

    .line 372
    .line 373
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedLineHeight:J

    .line 374
    .line 375
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeEmphasizedTracking:J

    .line 376
    .line 377
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 378
    .line 379
    .line 380
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 381
    .line 382
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 383
    .line 384
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedSize:J

    .line 385
    .line 386
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedLineHeight:J

    .line 387
    .line 388
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumEmphasizedTracking:J

    .line 389
    .line 390
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 391
    .line 392
    .line 393
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 394
    .line 395
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 396
    .line 397
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedSize:J

    .line 398
    .line 399
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedLineHeight:J

    .line 400
    .line 401
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallEmphasizedTracking:J

    .line 402
    .line 403
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 404
    .line 405
    .line 406
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 407
    .line 408
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 409
    .line 410
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedSize:J

    .line 411
    .line 412
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedLineHeight:J

    .line 413
    .line 414
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeEmphasizedTracking:J

    .line 415
    .line 416
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 417
    .line 418
    .line 419
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 420
    .line 421
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 422
    .line 423
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedSize:J

    .line 424
    .line 425
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedLineHeight:J

    .line 426
    .line 427
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumEmphasizedTracking:J

    .line 428
    .line 429
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 430
    .line 431
    .line 432
    sget-object v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 433
    .line 434
    sget-object v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 435
    .line 436
    sget-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedSize:J

    .line 437
    .line 438
    sget-wide v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedLineHeight:J

    .line 439
    .line 440
    sget-wide v5, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallEmphasizedTracking:J

    .line 441
    .line 442
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 443
    .line 444
    .line 445
    return-void
.end method
