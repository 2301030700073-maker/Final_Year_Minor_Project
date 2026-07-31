.class public final Lcom/airbnb/lottie/parser/PathParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/PathParser;

.field public static final INSTANCE$1:Lcom/airbnb/lottie/parser/PathParser;

.field public static final INSTANCE$2:Lcom/airbnb/lottie/parser/PathParser;

.field public static final INSTANCE$3:Lcom/airbnb/lottie/parser/PathParser;

.field public static final INSTANCE$4:Lcom/airbnb/lottie/parser/PathParser;

.field public static final INSTANCE$5:Lcom/airbnb/lottie/parser/PathParser;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$1:Lcom/airbnb/lottie/parser/PathParser;

    .line 8
    .line 9
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$2:Lcom/airbnb/lottie/parser/PathParser;

    .line 16
    .line 17
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$3:Lcom/airbnb/lottie/parser/PathParser;

    .line 24
    .line 25
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE:Lcom/airbnb/lottie/parser/PathParser;

    .line 32
    .line 33
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$4:Lcom/airbnb/lottie/parser/PathParser;

    .line 40
    .line 41
    new-instance v0, Lcom/airbnb/lottie/parser/PathParser;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/PathParser;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$5:Lcom/airbnb/lottie/parser/PathParser;

    .line 48
    .line 49
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/parser/PathParser;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/parser/PathParser;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 13
    .line 14
    if-ne p0, v2, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    double-to-float p0, v1

    .line 27
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    double-to-float v1, v1

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 45
    .line 46
    .line 47
    :cond_3
    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 48
    .line 49
    const/high16 v0, 0x42c80000    # 100.0f

    .line 50
    .line 51
    div-float/2addr p0, v0

    .line 52
    mul-float/2addr p0, p2

    .line 53
    div-float/2addr v1, v0

    .line 54
    mul-float/2addr v1, p2

    .line 55
    invoke-direct {p1, p0, v1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 64
    .line 65
    if-ne p0, v0, :cond_4

    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 73
    .line 74
    if-ne p0, v0, :cond_5

    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 82
    .line 83
    if-ne p0, v0, :cond_6

    .line 84
    .line 85
    new-instance p0, Landroid/graphics/PointF;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    double-to-float v0, v0

    .line 92
    mul-float/2addr v0, p2

    .line 93
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    double-to-float v1, v1

    .line 98
    mul-float/2addr v1, p2

    .line 99
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const-string p1, "Cannot convert json to point. Next token is "

    .line 113
    .line 114
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    :cond_7
    :goto_2
    return-object p0

    .line 119
    :pswitch_1
    invoke-static {p1}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    mul-float/2addr p0, p2

    .line 124
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_2
    invoke-static {p1}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    mul-float/2addr p0, p2

    .line 138
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    sget-object p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 148
    .line 149
    if-ne p0, p2, :cond_8

    .line 150
    .line 151
    move v0, v1

    .line 152
    :cond_8
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 174
    .line 175
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 176
    .line 177
    if-ne p0, p2, :cond_a

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    goto :goto_3

    .line 184
    :cond_a
    move-wide v9, v7

    .line 185
    :goto_3
    if-eqz v0, :cond_b

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 188
    .line 189
    .line 190
    :cond_b
    cmpg-double p0, v1, v7

    .line 191
    .line 192
    if-gtz p0, :cond_c

    .line 193
    .line 194
    cmpg-double p0, v3, v7

    .line 195
    .line 196
    if-gtz p0, :cond_c

    .line 197
    .line 198
    cmpg-double p0, v5, v7

    .line 199
    .line 200
    if-gtz p0, :cond_c

    .line 201
    .line 202
    const-wide p0, 0x406fe00000000000L    # 255.0

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    mul-double/2addr v1, p0

    .line 208
    mul-double/2addr v3, p0

    .line 209
    mul-double/2addr v5, p0

    .line 210
    cmpg-double p2, v9, v7

    .line 211
    .line 212
    if-gtz p2, :cond_c

    .line 213
    .line 214
    mul-double/2addr v9, p0

    .line 215
    :cond_c
    double-to-int p0, v9

    .line 216
    double-to-int p1, v1

    .line 217
    double-to-int p2, v3

    .line 218
    double-to-int v0, v5

    .line 219
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :pswitch_4
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
