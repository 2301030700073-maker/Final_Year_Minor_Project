.class public final Lexpo/modules/image/thumbhash/ThumbhashDecoder;
.super Ljava/lang/Object;
.source "ThumbhashDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;,
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;,
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThumbhashDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbhashDecoder.kt\nexpo/modules/image/thumbhash/ThumbhashDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,368:1\n1#2:369\n11175#3:370\n11510#3,3:371\n*S KotlinDebug\n*F\n+ 1 ThumbhashDecoder.kt\nexpo/modules/image/thumbhash/ThumbhashDecoder\n*L\n252#1:370\n252#1:371,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0013\u0014\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0005\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder;",
        "",
        "<init>",
        "()V",
        "rgbaToThumbHash",
        "",
        "w",
        "",
        "h",
        "rgba",
        "thumbHashToRGBA",
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;",
        "hash",
        "thumbHashToBitmap",
        "Landroid/graphics/Bitmap;",
        "thumbHashToAverageRGBA",
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;",
        "thumbHashToApproximateAspectRatio",
        "",
        "Image",
        "RGBA",
        "Channel",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    invoke-direct {v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;-><init>()V

    sput-object v0, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rgbaToThumbHash(II[B)[B
    .locals 24

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "rgba"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x64

    if-gt v0, v3, :cond_e

    if-gt v1, v3, :cond_e

    const/4 v3, 0x0

    move v6, v3

    move v8, v6

    move v9, v8

    move v10, v9

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    mul-int v11, v0, v1

    const/4 v12, 0x4

    const/high16 v13, 0x437f0000    # 255.0f

    if-ge v5, v11, :cond_0

    add-int/lit8 v11, v7, 0x3

    .line 28
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float/2addr v11, v13

    div-float v13, v11, v13

    .line 29
    aget-byte v14, v2, v7

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v8, v14

    add-int/lit8 v14, v7, 0x1

    .line 30
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v9, v14

    add-int/lit8 v14, v7, 0x2

    .line 31
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    add-float/2addr v6, v11

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v7, v12

    goto :goto_0

    :cond_0
    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    div-float/2addr v8, v6

    div-float/2addr v9, v6

    div-float/2addr v10, v6

    :cond_1
    int-to-float v3, v11

    cmpg-float v3, v6, v3

    const/4 v5, 0x1

    if-gez v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const/4 v7, 0x5

    goto :goto_2

    :cond_3
    const/4 v7, 0x7

    :goto_2
    mul-int v14, v7, v0

    int-to-float v14, v14

    .line 44
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int/2addr v7, v1

    int-to-float v7, v7

    .line 45
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 46
    new-array v15, v11, [F

    .line 47
    new-array v4, v11, [F

    .line 48
    new-array v5, v11, [F

    .line 49
    new-array v6, v11, [F

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    add-int/lit8 v17, v16, 0x3

    .line 55
    aget-byte v13, v2, v17

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v13, v13, v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    mul-float v19, v8, v18

    div-float v20, v13, v17

    move/from16 v21, v8

    .line 56
    aget-byte v8, v2, v16

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float v8, v8, v20

    add-float v19, v19, v8

    mul-float v8, v9, v18

    add-int/lit8 v22, v16, 0x1

    move/from16 v23, v9

    .line 57
    aget-byte v9, v2, v22

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float v9, v9, v20

    add-float/2addr v8, v9

    mul-float v18, v18, v10

    add-int/lit8 v9, v16, 0x2

    .line 58
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float v20, v20, v9

    add-float v18, v18, v20

    add-float v9, v19, v8

    add-float v20, v9, v18

    const/high16 v22, 0x40400000    # 3.0f

    div-float v20, v20, v22

    .line 59
    aput v20, v15, v12

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v9, v20

    sub-float v9, v9, v18

    .line 60
    aput v9, v4, v12

    sub-float v19, v19, v8

    .line 61
    aput v19, v5, v12

    .line 62
    aput v13, v6, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x4

    add-int/lit8 v16, v16, 0x4

    move/from16 v13, v17

    move/from16 v8, v21

    move/from16 v9, v23

    goto :goto_3

    .line 68
    :cond_4
    new-instance v2, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    const/4 v8, 0x3

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-direct {v2, v9, v10}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    invoke-virtual {v2, v0, v1, v15}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    move-result-object v2

    .line 69
    new-instance v9, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v9, v8, v8}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    invoke-virtual {v9, v0, v1, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    move-result-object v4

    .line 70
    new-instance v9, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v9, v8, v8}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    invoke-virtual {v9, v0, v1, v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    move-result-object v5

    if-eqz v3, :cond_5

    .line 71
    new-instance v9, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v10}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    invoke-virtual {v9, v0, v1, v6}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    move-result-object v6

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 76
    :goto_5
    invoke-virtual {v2}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getDc()F

    move-result v1

    const/high16 v9, 0x427c0000    # 63.0f

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 77
    invoke-virtual {v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getDc()F

    move-result v10

    const/high16 v11, 0x41fc0000    # 31.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v12, 0x6

    shl-int/2addr v10, v12

    or-int/2addr v1, v10

    .line 78
    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getDc()F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v1, v10

    const/high16 v10, 0x41f80000    # 31.0f

    .line 79
    invoke-virtual {v2}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getScale()F

    move-result v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    shl-int/lit8 v10, v10, 0x12

    or-int/2addr v1, v10

    if-eqz v3, :cond_7

    const/high16 v10, 0x800000

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    or-int/2addr v1, v10

    if-eqz v0, :cond_8

    move v14, v7

    .line 84
    :cond_8
    invoke-virtual {v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getScale()F

    move-result v7

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    shl-int/2addr v7, v8

    or-int/2addr v7, v14

    .line 85
    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getScale()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    shl-int/lit8 v9, v9, 0x9

    or-int/2addr v7, v9

    if-eqz v0, :cond_9

    const v0, 0x8000

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v7

    if-eqz v3, :cond_a

    move v10, v12

    goto :goto_8

    :cond_a
    const/4 v10, 0x5

    .line 90
    :goto_8
    invoke-virtual {v2}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v9

    array-length v9, v9

    add-int/2addr v7, v9

    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v9

    array-length v9, v9

    add-int/2addr v7, v9

    if-eqz v3, :cond_b

    .line 91
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v9

    array-length v9, v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    add-int/2addr v7, v9

    const/4 v9, 0x1

    add-int/2addr v7, v9

    const/4 v11, 0x2

    .line 93
    div-int/2addr v7, v11

    add-int/2addr v7, v10

    new-array v7, v7, [B

    int-to-byte v12, v1

    const/4 v13, 0x0

    .line 94
    aput-byte v12, v7, v13

    shr-int/lit8 v12, v1, 0x8

    int-to-byte v12, v12

    .line 95
    aput-byte v12, v7, v9

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 96
    aput-byte v1, v7, v11

    int-to-byte v1, v0

    .line 97
    aput-byte v1, v7, v8

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 98
    aput-byte v0, v7, v1

    if-eqz v3, :cond_c

    .line 101
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getDc()F

    move-result v0

    const/high16 v8, 0x41700000    # 15.0f

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 102
    invoke-virtual {v6}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getScale()F

    move-result v9

    mul-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    shl-int/lit8 v1, v8, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 103
    aput-byte v0, v7, v1

    :cond_c
    const/4 v0, 0x0

    .line 108
    invoke-virtual {v2, v7, v10, v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->writeTo([BII)I

    move-result v0

    .line 109
    invoke-virtual {v4, v7, v10, v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->writeTo([BII)I

    move-result v0

    .line 110
    invoke-virtual {v5, v7, v10, v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->writeTo([BII)I

    move-result v0

    if-eqz v3, :cond_d

    .line 111
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v10, v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->writeTo([BII)I

    :cond_d
    return-object v7

    .line 18
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t fit in 100x100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final thumbHashToApproximateAspectRatio([B)F
    .locals 5

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 295
    aget-byte v0, p1, v0

    const/4 v1, 0x2

    .line 296
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x4

    .line 297
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/4 p1, 0x5

    const/4 v3, 0x7

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    and-int/lit8 v4, v0, 0x7

    :goto_2
    if-eqz v2, :cond_4

    and-int/lit8 p1, v0, 0x7

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v3

    :goto_3
    int-to-float v0, v4

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final thumbHashToAverageRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;
    .locals 6

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x3f

    int-to-float v1, v1

    const/high16 v2, 0x427c0000    # 63.0f

    div-float/2addr v1, v2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-float v2, v2

    const/high16 v3, 0x41fc0000    # 31.5f

    div-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v5, v4

    shr-int/lit8 v0, v0, 0x17

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 276
    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    int-to-float p1, p1

    const/high16 v0, 0x41700000    # 15.0f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    const v0, 0x3f2aaaab

    mul-float/2addr v2, v0

    sub-float v0, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, v1, v5

    .line 280
    new-instance v3, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;

    .line 281
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 282
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 283
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 280
    invoke-direct {v3, v1, v2, v0, p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;-><init>(FFFF)V

    return-object v3
.end method

.method public final thumbHashToBitmap([B)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->thumbHashToRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 252
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getRgba()[B

    move-result-object v1

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 371
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-byte v6, v1, v5

    .line 252
    invoke-static {v6}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 372
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 373
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 253
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    invoke-static {v4, v1, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-ltz v1, :cond_1

    .line 254
    :goto_1
    div-int/lit8 v3, v4, 0x4

    add-int/lit8 v5, v4, 0x3

    .line 255
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 256
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    .line 257
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/lit8 v8, v4, 0x2

    .line 258
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 254
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v0, v3

    if-eq v4, v1, :cond_1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getHeight()I

    move-result p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final thumbHashToRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "hash"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 123
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x3

    .line 124
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x4

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x3f

    int-to-float v7, v7

    const/high16 v8, 0x427c0000    # 63.0f

    div-float/2addr v7, v8

    shr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    int-to-float v9, v9

    const/high16 v10, 0x41fc0000    # 31.5f

    div-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v9, v11

    shr-int/lit8 v12, v2, 0xc

    and-int/lit8 v12, v12, 0x3f

    int-to-float v12, v12

    div-float/2addr v12, v10

    sub-float/2addr v12, v11

    shr-int/lit8 v10, v2, 0x12

    and-int/lit8 v10, v10, 0x1f

    int-to-float v10, v10

    const/high16 v13, 0x41f80000    # 31.0f

    div-float/2addr v10, v13

    shr-int/lit8 v2, v2, 0x17

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    shr-int/lit8 v13, v5, 0x3

    and-int/lit8 v13, v13, 0x3f

    int-to-float v13, v13

    div-float/2addr v13, v8

    shr-int/lit8 v14, v5, 0x9

    and-int/lit8 v14, v14, 0x3f

    int-to-float v14, v14

    div-float/2addr v14, v8

    shr-int/lit8 v8, v5, 0xf

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    const/4 v15, 0x7

    const/4 v3, 0x5

    if-eqz v8, :cond_3

    if-eqz v2, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v15

    goto :goto_2

    :cond_3
    and-int/lit8 v16, v5, 0x7

    move/from16 v11, v16

    .line 133
    :goto_2
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v8, :cond_4

    and-int/2addr v15, v5

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    move v15, v3

    .line 134
    :cond_5
    :goto_3
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v8, 0x41700000    # 15.0f

    if-eqz v2, :cond_6

    .line 135
    aget-byte v15, v0, v3

    and-int/lit8 v15, v15, 0xf

    int-to-float v15, v15

    div-float/2addr v15, v8

    goto :goto_4

    :cond_6
    const/high16 v15, 0x3f800000    # 1.0f

    .line 136
    :goto_4
    aget-byte v16, v0, v3

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v6, v16, 0xf

    int-to-float v6, v6

    div-float/2addr v6, v8

    if-eqz v2, :cond_7

    const/4 v8, 0x6

    goto :goto_5

    :cond_7
    move v8, v3

    .line 141
    :goto_5
    new-instance v3, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v3, v11, v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    .line 142
    new-instance v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v1, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    move/from16 v18, v7

    .line 143
    new-instance v7, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v7, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v3, v0, v8, v4, v10}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v10

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v13, v4

    .line 146
    invoke-virtual {v1, v0, v8, v10, v13}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v10

    mul-float/2addr v14, v4

    .line 147
    invoke-virtual {v7, v0, v8, v10, v14}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v4

    const/4 v10, 0x0

    if-eqz v2, :cond_8

    .line 149
    new-instance v13, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    const/4 v14, 0x5

    invoke-direct {v13, v14, v14}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    .line 150
    invoke-virtual {v13, v0, v8, v4, v6}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    goto :goto_6

    :cond_8
    move-object v13, v10

    .line 152
    :goto_6
    invoke-virtual {v3}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v3

    .line 153
    invoke-virtual {v1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v1

    .line 154
    invoke-virtual {v7}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v4

    if-eqz v2, :cond_9

    .line 155
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v10

    .line 158
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->thumbHashToApproximateAspectRatio([B)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v0, v6

    const/high16 v6, 0x42000000    # 32.0f

    if-lez v7, :cond_a

    move v8, v6

    goto :goto_7

    :cond_a
    mul-float v8, v0, v6

    .line 159
    :goto_7
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-lez v7, :cond_b

    div-float/2addr v6, v0

    .line 160
    :cond_b
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int v6, v8, v0

    const/4 v7, 0x4

    mul-int/2addr v6, v7

    .line 161
    new-array v6, v6, [B

    if-eqz v2, :cond_c

    const/4 v14, 0x5

    goto :goto_8

    :cond_c
    const/4 v14, 0x3

    .line 162
    :goto_8
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v2, :cond_d

    const/4 v14, 0x5

    goto :goto_9

    :cond_d
    const/4 v14, 0x3

    .line 163
    :goto_9
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 164
    new-array v14, v7, [F

    move/from16 v17, v9

    .line 165
    new-array v9, v13, [F

    move/from16 v20, v12

    const/4 v12, 0x0

    const/16 v21, 0x0

    :goto_a
    if-ge v12, v0, :cond_1b

    move/from16 v22, v15

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v8, :cond_1a

    move-object/from16 p1, v6

    const/4 v6, 0x0

    :goto_c
    const-wide v23, 0x400921fb54442d18L    # Math.PI

    if-ge v6, v7, :cond_e

    move-object/from16 v26, v1

    move/from16 v25, v2

    int-to-double v1, v8

    div-double v23, v23, v1

    int-to-float v1, v15

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v1, v1

    mul-double v23, v23, v1

    int-to-double v1, v6

    mul-double v23, v23, v1

    .line 177
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v14, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v25

    move-object/from16 v1, v26

    goto :goto_c

    :cond_e
    move-object/from16 v26, v1

    move/from16 v25, v2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v13, :cond_f

    move v2, v7

    int-to-double v6, v0

    div-double v6, v23, v6

    move/from16 v27, v2

    int-to-float v2, v12

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v2, v2, v28

    move/from16 v29, v12

    move/from16 v28, v13

    float-to-double v12, v2

    mul-double/2addr v6, v12

    int-to-double v12, v1

    mul-double/2addr v6, v12

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v27

    move/from16 v13, v28

    move/from16 v12, v29

    goto :goto_d

    :cond_f
    move/from16 v27, v7

    move/from16 v29, v12

    move/from16 v28, v13

    .line 181
    move-object/from16 v1, p0

    check-cast v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    move/from16 v6, v18

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v1, v5, :cond_12

    .line 185
    aget v12, v9, v1

    mul-float/2addr v12, v7

    if-lez v1, :cond_10

    const/4 v7, 0x0

    goto :goto_f

    :cond_10
    const/4 v7, 0x1

    :goto_f
    mul-int v13, v7, v5

    sub-int v23, v5, v1

    move/from16 v24, v5

    mul-int v5, v11, v23

    if-ge v13, v5, :cond_11

    .line 188
    aget v5, v3, v2

    aget v13, v14, v7

    mul-float/2addr v5, v13

    mul-float/2addr v5, v12

    add-float/2addr v6, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v24

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v24

    goto :goto_e

    :cond_12
    move/from16 v24, v5

    move/from16 v5, v17

    move/from16 v12, v20

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    const/4 v13, 0x3

    if-ge v1, v13, :cond_15

    .line 200
    aget v19, v9, v1

    mul-float v19, v19, v7

    if-lez v1, :cond_13

    const/16 v23, 0x0

    goto :goto_11

    :cond_13
    const/16 v23, 0x1

    :goto_11
    move/from16 v13, v23

    :goto_12
    rsub-int/lit8 v7, v1, 0x3

    if-ge v13, v7, :cond_14

    .line 203
    aget v7, v14, v13

    mul-float v7, v7, v19

    .line 204
    aget v30, v26, v2

    mul-float v30, v30, v7

    add-float v5, v5, v30

    .line 205
    aget v30, v4, v2

    mul-float v30, v30, v7

    add-float v12, v12, v30

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v2, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_12

    :cond_14
    add-int/lit8 v1, v1, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_10

    :cond_15
    if-eqz v25, :cond_19

    move/from16 v7, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    const/4 v13, 0x5

    if-ge v1, v13, :cond_18

    .line 217
    aget v16, v9, v1

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v16, v16, v19

    if-lez v1, :cond_16

    const/16 v19, 0x0

    goto :goto_14

    :cond_16
    const/16 v19, 0x1

    :goto_14
    move/from16 v13, v19

    :goto_15
    move-object/from16 v30, v3

    rsub-int/lit8 v3, v1, 0x5

    if-ge v13, v3, :cond_17

    .line 220
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v3, v10, v2

    aget v31, v14, v13

    mul-float v3, v3, v31

    mul-float v3, v3, v16

    add-float/2addr v7, v3

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v30

    goto :goto_15

    :cond_17
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v30

    goto :goto_13

    :cond_18
    move-object/from16 v30, v3

    goto :goto_16

    :cond_19
    move-object/from16 v30, v3

    move/from16 v7, v22

    :goto_16
    const v1, 0x3f2aaaab

    mul-float/2addr v5, v1

    sub-float v1, v6, v5

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float/2addr v6, v1

    add-float/2addr v6, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v6, v2

    sub-float v2, v6, v12

    const/high16 v3, 0x3f800000    # 1.0f

    .line 232
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p1, v21

    add-int/lit8 v5, v21, 0x1

    .line 233
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    add-int/lit8 v2, v21, 0x2

    .line 234
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v1, v21, 0x3

    .line 235
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    move-object/from16 v6, p1

    move/from16 v5, v24

    move/from16 v2, v25

    move-object/from16 v1, v26

    move/from16 v7, v27

    move/from16 v13, v28

    move/from16 v12, v29

    move-object/from16 v3, v30

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v26, v1

    move/from16 v25, v2

    move-object/from16 v30, v3

    move/from16 v24, v5

    move-object/from16 p1, v6

    move/from16 v27, v7

    move/from16 v29, v12

    move/from16 v28, v13

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    add-int/lit8 v1, v29, 0x1

    move v12, v1

    move/from16 v15, v22

    move-object/from16 v1, v26

    move-object/from16 v3, v30

    goto/16 :goto_a

    :cond_1b
    move-object/from16 p1, v6

    .line 241
    new-instance v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;

    move-object/from16 v2, p1

    invoke-direct {v1, v8, v0, v2}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;-><init>(II[B)V

    return-object v1
.end method
