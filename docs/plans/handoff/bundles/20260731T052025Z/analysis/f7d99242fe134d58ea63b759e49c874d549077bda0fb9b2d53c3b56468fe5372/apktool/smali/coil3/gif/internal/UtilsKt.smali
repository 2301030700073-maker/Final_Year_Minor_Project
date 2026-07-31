.class public final Lcoil3/gif/internal/UtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/gif/internal/UtilsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$wwnSochLAQaHu98AcUuYd_hhM90(Lcoil3/gif/AnimatedTransformation;Landroid/graphics/Canvas;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcoil3/gif/internal/UtilsKt;->asPostProcessor$lambda$0(Lcoil3/gif/AnimatedTransformation;Landroid/graphics/Canvas;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final animatable2CallbackOf(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcoil3/gif/internal/UtilsKt$animatable2CallbackOf$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcoil3/gif/internal/UtilsKt$animatable2CallbackOf$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final animatable2CompatCallbackOf(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcoil3/gif/internal/UtilsKt$animatable2CompatCallbackOf$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcoil3/gif/internal/UtilsKt$animatable2CompatCallbackOf$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final asPostProcessor(Lcoil3/gif/AnimatedTransformation;)Landroid/graphics/PostProcessor;
    .locals 1

    .line 1
    new-instance v0, Lcoil3/gif/internal/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcoil3/gif/internal/UtilsKt$$ExternalSyntheticLambda0;-><init>(Lcoil3/gif/AnimatedTransformation;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final asPostProcessor$lambda$0(Lcoil3/gif/AnimatedTransformation;Landroid/graphics/Canvas;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcoil3/gif/AnimatedTransformation;->transform(Landroid/graphics/Canvas;)Lcoil3/gif/PixelOpacity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcoil3/gif/internal/UtilsKt;->getFlag(Lcoil3/gif/PixelOpacity;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final getFlag(Lcoil3/gif/PixelOpacity;)I
    .locals 1

    .line 1
    sget-object v0, Lcoil3/gif/internal/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, -0x3

    .line 26
    return p0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static final squashToDirectByteBuffer(Lokio/BufferedSource;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 14
    .line 15
    long-to-int v0, v0

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method
