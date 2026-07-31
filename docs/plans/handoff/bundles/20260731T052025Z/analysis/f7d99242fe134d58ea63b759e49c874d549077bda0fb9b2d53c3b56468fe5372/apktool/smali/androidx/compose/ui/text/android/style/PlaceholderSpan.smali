.class public final Landroidx/compose/ui/text/android/style/PlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public final height:F

.field public final heightAsSpInPx:F

.field public heightPx:I

.field public final heightUnit:I

.field public isLaidOut:Z

.field public final verticalAlign:I

.field public final width:F

.field public final widthAsSpInPx:F

.field public widthPx:I

.field public final widthUnit:I


# direct methods
.method public constructor <init>(FIFILandroidx/compose/ui/unit/Density;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, 0x100000000L

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v1, v2}, Landroidx/sqlite/SQLite;->pack(FJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-interface {p5, v3, v4}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v0

    .line 19
    :goto_0
    if-nez p4, :cond_1

    .line 20
    .line 21
    invoke-static {p3, v1, v2}, Landroidx/sqlite/SQLite;->pack(FJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-interface {p5, v0, v1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 33
    .line 34
    iput p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 35
    .line 36
    iput p3, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 37
    .line 38
    iput p4, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 39
    .line 40
    iput v3, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthAsSpInPx:F

    .line 41
    .line 42
    iput v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightAsSpInPx:F

    .line 43
    .line 44
    iput p6, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "fontMetrics"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getHeightPx()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PlaceholderSpan is not laid out yet."

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 11
    .line 12
    return p0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 25
    .line 26
    if-le p1, p4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Invalid fontMetrics: line height can not be negative."

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p1, 0x0

    .line 35
    const-string p4, "Unsupported unit."

    .line 36
    .line 37
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    if-ne v0, p2, :cond_1

    .line 42
    .line 43
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 44
    .line 45
    mul-float/2addr v0, p3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p4}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :cond_2
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthAsSpInPx:F

    .line 55
    .line 56
    :goto_1
    float-to-double v0, v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    double-to-float v0, v0

    .line 62
    float-to-int v0, v0

    .line 63
    iput v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 64
    .line 65
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    if-ne v0, p2, :cond_3

    .line 70
    .line 71
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 72
    .line 73
    mul-float/2addr p1, p3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {p4}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 79
    .line 80
    .line 81
    return p1

    .line 82
    :cond_4
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightAsSpInPx:F

    .line 83
    .line 84
    :goto_2
    float-to-double p1, p1

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide p1

    .line 89
    double-to-float p1, p1

    .line 90
    float-to-int p1, p1

    .line 91
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 92
    .line 93
    if-eqz p5, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 100
    .line 101
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 108
    .line 109
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 116
    .line 117
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 118
    .line 119
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 120
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 122
    .line 123
    .line 124
    const-string p1, "Unknown verticalAlign."

    .line 125
    .line 126
    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_0
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 131
    .line 132
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 133
    .line 134
    sub-int/2addr p1, p2

    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-ge p1, p2, :cond_5

    .line 140
    .line 141
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 148
    .line 149
    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    .line 151
    sub-int/2addr p3, p4

    .line 152
    sub-int/2addr p2, p3

    .line 153
    div-int/lit8 p2, p2, 0x2

    .line 154
    .line 155
    sub-int/2addr p1, p2

    .line 156
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    add-int/2addr p2, p1

    .line 163
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :pswitch_1
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 167
    .line 168
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    sub-int/2addr p2, p3

    .line 175
    if-le p1, p2, :cond_5

    .line 176
    .line 177
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    sub-int/2addr p1, p2

    .line 184
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :pswitch_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    add-int/2addr p2, p1

    .line 194
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 195
    .line 196
    if-le p2, p1, :cond_5

    .line 197
    .line 198
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    add-int/2addr p2, p1

    .line 205
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :pswitch_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 209
    .line 210
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    neg-int p2, p2

    .line 215
    if-le p1, p2, :cond_5

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    neg-int p1, p1

    .line 222
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 223
    .line 224
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 229
    .line 230
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 231
    .line 232
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 243
    .line 244
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 245
    .line 246
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 251
    .line 252
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    return p0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWidthPx()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PlaceholderSpan is not laid out yet."

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 11
    .line 12
    return p0
.end method
