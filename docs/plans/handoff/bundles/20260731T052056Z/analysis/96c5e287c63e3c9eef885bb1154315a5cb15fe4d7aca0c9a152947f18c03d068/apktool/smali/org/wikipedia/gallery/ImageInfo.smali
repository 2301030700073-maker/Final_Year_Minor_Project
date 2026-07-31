.class public final Lorg/wikipedia/gallery/ImageInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/gallery/ImageInfo$Companion;


# instance fields
.field public captions:Ljava/util/Map;

.field public final codecs:Ljava/util/List;

.field public final commonsUrl:Ljava/lang/String;

.field public final derivatives:Ljava/util/List;

.field public final descriptionShortUrl:Ljava/lang/String;

.field public final height:I

.field public final metadata:Lorg/wikipedia/gallery/ExtMetadata;

.field public final mime:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final originalUrl:Ljava/lang/String;

.field public final plainMetadata:Ljava/util/List;

.field public final shortName:Ljava/lang/String;

.field public final size:I

.field public source:Ljava/lang/String;

.field public final thumbHeight:I

.field public final thumbUrl:Ljava/lang/String;

.field public final thumbWidth:I

.field public final timestamp:Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ImageInfo;->Companion:Lorg/wikipedia/gallery/ImageInfo$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0xd

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v5, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v6, 0xe

    .line 35
    .line 36
    invoke-direct {v5, v6}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v7, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v8, 0xf

    .line 46
    .line 47
    invoke-direct {v7, v8}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v7, 0x14

    .line 55
    .line 56
    new-array v7, v7, [Lkotlin/Lazy;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    aput-object v10, v7, v9

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    aput-object v1, v7, v9

    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    aput-object v10, v7, v1

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    aput-object v10, v7, v1

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    aput-object v3, v7, v1

    .line 73
    .line 74
    const/4 v1, 0x5

    .line 75
    aput-object v5, v7, v1

    .line 76
    .line 77
    const/4 v1, 0x6

    .line 78
    aput-object v10, v7, v1

    .line 79
    .line 80
    const/4 v1, 0x7

    .line 81
    aput-object v10, v7, v1

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    aput-object v10, v7, v1

    .line 86
    .line 87
    const/16 v1, 0x9

    .line 88
    .line 89
    aput-object v10, v7, v1

    .line 90
    .line 91
    const/16 v1, 0xa

    .line 92
    .line 93
    aput-object v10, v7, v1

    .line 94
    .line 95
    const/16 v1, 0xb

    .line 96
    .line 97
    aput-object v10, v7, v1

    .line 98
    .line 99
    aput-object v10, v7, v2

    .line 100
    .line 101
    aput-object v0, v7, v4

    .line 102
    .line 103
    aput-object v10, v7, v6

    .line 104
    .line 105
    aput-object v10, v7, v8

    .line 106
    .line 107
    const/16 v0, 0x10

    .line 108
    .line 109
    aput-object v10, v7, v0

    .line 110
    .line 111
    const/16 v0, 0x11

    .line 112
    .line 113
    aput-object v10, v7, v0

    .line 114
    .line 115
    const/16 v0, 0x12

    .line 116
    .line 117
    aput-object v10, v7, v0

    .line 118
    .line 119
    const/16 v0, 0x13

    .line 120
    .line 121
    aput-object v10, v7, v0

    .line 122
    .line 123
    sput-object v7, Lorg/wikipedia/gallery/ImageInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 124
    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 218
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 219
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    .line 220
    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 223
    const-string v2, "*/*"

    iput-object v2, p0, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->plainMetadata:Ljava/util/List;

    .line 225
    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/gallery/ExtMetadata;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 25
    .line 26
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->shortName:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/gallery/ImageInfo;->shortName:Ljava/lang/String;

    .line 35
    .line 36
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 37
    .line 38
    if-nez p2, :cond_3

    .line 39
    .line 40
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->descriptionShortUrl:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/gallery/ImageInfo;->descriptionShortUrl:Ljava/lang/String;

    .line 44
    .line 45
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 46
    .line 47
    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 48
    .line 49
    if-nez p2, :cond_4

    .line 50
    .line 51
    iput-object p4, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    .line 55
    .line 56
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 57
    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->codecs:Ljava/util/List;

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/gallery/ImageInfo;->codecs:Ljava/util/List;

    .line 64
    .line 65
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 66
    .line 67
    if-nez p2, :cond_6

    .line 68
    .line 69
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/gallery/ImageInfo;->name:Ljava/lang/String;

    .line 73
    .line 74
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 75
    .line 76
    if-nez p2, :cond_7

    .line 77
    .line 78
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_7

    .line 81
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 82
    .line 83
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 84
    .line 85
    if-nez p2, :cond_8

    .line 86
    .line 87
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_8

    .line 90
    :cond_8
    iput-object p10, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 91
    .line 92
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 93
    .line 94
    const/4 p5, 0x0

    .line 95
    if-nez p2, :cond_9

    .line 96
    .line 97
    iput p5, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    .line 98
    .line 99
    goto :goto_9

    .line 100
    :cond_9
    iput p11, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    .line 101
    .line 102
    :goto_9
    and-int/lit16 p2, p1, 0x400

    .line 103
    .line 104
    if-nez p2, :cond_a

    .line 105
    .line 106
    iput p5, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    .line 107
    .line 108
    goto :goto_a

    .line 109
    :cond_a
    iput p12, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    .line 110
    .line 111
    :goto_a
    and-int/lit16 p2, p1, 0x800

    .line 112
    .line 113
    if-nez p2, :cond_b

    .line 114
    .line 115
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_b

    .line 118
    :cond_b
    iput-object p13, p0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 119
    .line 120
    :goto_b
    and-int/lit16 p2, p1, 0x1000

    .line 121
    .line 122
    if-nez p2, :cond_c

    .line 123
    .line 124
    const-string p2, "*/*"

    .line 125
    .line 126
    :goto_c
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_d

    .line 129
    :cond_c
    move-object/from16 p2, p14

    .line 130
    .line 131
    goto :goto_c

    .line 132
    :goto_d
    and-int/lit16 p2, p1, 0x2000

    .line 133
    .line 134
    if-nez p2, :cond_d

    .line 135
    .line 136
    iput-object p4, p0, Lorg/wikipedia/gallery/ImageInfo;->plainMetadata:Ljava/util/List;

    .line 137
    .line 138
    goto :goto_e

    .line 139
    :cond_d
    move-object/from16 p2, p15

    .line 140
    .line 141
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->plainMetadata:Ljava/util/List;

    .line 142
    .line 143
    :goto_e
    and-int/lit16 p2, p1, 0x4000

    .line 144
    .line 145
    if-nez p2, :cond_e

    .line 146
    .line 147
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 148
    .line 149
    goto :goto_f

    .line 150
    :cond_e
    move-object/from16 p2, p16

    .line 151
    .line 152
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 153
    .line 154
    :goto_f
    const p2, 0x8000

    .line 155
    .line 156
    .line 157
    and-int/2addr p2, p1

    .line 158
    if-nez p2, :cond_f

    .line 159
    .line 160
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_10

    .line 163
    :cond_f
    move-object/from16 p2, p17

    .line 164
    .line 165
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 166
    .line 167
    :goto_10
    const/high16 p2, 0x10000

    .line 168
    .line 169
    and-int/2addr p2, p1

    .line 170
    if-nez p2, :cond_10

    .line 171
    .line 172
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_11

    .line 175
    :cond_10
    move-object/from16 p2, p18

    .line 176
    .line 177
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 178
    .line 179
    :goto_11
    const/high16 p2, 0x20000

    .line 180
    .line 181
    and-int/2addr p2, p1

    .line 182
    if-nez p2, :cond_11

    .line 183
    .line 184
    iput p5, p0, Lorg/wikipedia/gallery/ImageInfo;->size:I

    .line 185
    .line 186
    goto :goto_12

    .line 187
    :cond_11
    move/from16 p2, p19

    .line 188
    .line 189
    iput p2, p0, Lorg/wikipedia/gallery/ImageInfo;->size:I

    .line 190
    .line 191
    :goto_12
    const/high16 p2, 0x40000

    .line 192
    .line 193
    and-int/2addr p2, p1

    .line 194
    if-nez p2, :cond_12

    .line 195
    .line 196
    iput p5, p0, Lorg/wikipedia/gallery/ImageInfo;->width:I

    .line 197
    .line 198
    goto :goto_13

    .line 199
    :cond_12
    move/from16 p2, p20

    .line 200
    .line 201
    iput p2, p0, Lorg/wikipedia/gallery/ImageInfo;->width:I

    .line 202
    .line 203
    :goto_13
    const/high16 p2, 0x80000

    .line 204
    .line 205
    and-int/2addr p1, p2

    .line 206
    if-nez p1, :cond_13

    .line 207
    .line 208
    iput p5, p0, Lorg/wikipedia/gallery/ImageInfo;->height:I

    .line 209
    .line 210
    return-void

    .line 211
    :cond_13
    move/from16 p1, p21

    .line 212
    .line 213
    iput p1, p0, Lorg/wikipedia/gallery/ImageInfo;->height:I

    .line 214
    .line 215
    return-void
.end method


# virtual methods
.method public final getBestDerivativeForSize()Lorg/wikipedia/gallery/ImageInfo$Derivative;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lorg/wikipedia/gallery/ImageInfo$Derivative;

    .line 19
    .line 20
    iget v2, v1, Lorg/wikipedia/gallery/ImageInfo$Derivative;->width:I

    .line 21
    .line 22
    iget-object v3, v1, Lorg/wikipedia/gallery/ImageInfo$Derivative;->type:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-gt v4, v2, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x500

    .line 28
    .line 29
    if-ge v2, v4, :cond_0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v4, v0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->width:I

    .line 34
    .line 35
    if-le v2, v4, :cond_0

    .line 36
    .line 37
    :cond_1
    const-string v2, "ogg"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    const-string v2, "ogv"

    .line 47
    .line 48
    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method
