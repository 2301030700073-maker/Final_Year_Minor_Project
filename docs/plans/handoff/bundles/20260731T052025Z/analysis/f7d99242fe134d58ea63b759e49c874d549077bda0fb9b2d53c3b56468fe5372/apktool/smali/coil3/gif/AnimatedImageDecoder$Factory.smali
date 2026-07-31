.class public final Lcoil3/gif/AnimatedImageDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/gif/AnimatedImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final enforceMinimumFrameDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcoil3/gif/AnimatedImageDecoder$Factory;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcoil3/gif/AnimatedImageDecoder$Factory;->enforceMinimumFrameDelay:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 p2, 0x22

    .line 8
    .line 9
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    move p1, p3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcoil3/gif/AnimatedImageDecoder$Factory;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final isApplicable(Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    sget-object p0, Lcoil3/decode/DecodeUtils;->INSTANCE:Lcoil3/decode/DecodeUtils;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil3/gif/DecodeUtilsKt;->isGif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcoil3/gif/DecodeUtilsKt;->isAnimatedWebP(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcoil3/gif/DecodeUtilsKt;->isAnimatedHeif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method


# virtual methods
.method public create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcoil3/fetch/SourceFetchResult;->getSource()Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-direct {p0, p3}, Lcoil3/gif/AnimatedImageDecoder$Factory;->isApplicable(Lokio/BufferedSource;)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p3, Lcoil3/gif/AnimatedImageDecoder;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcoil3/fetch/SourceFetchResult;->getSource()Lcoil3/decode/ImageSource;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-boolean p0, p0, Lcoil3/gif/AnimatedImageDecoder$Factory;->enforceMinimumFrameDelay:Z

    .line 24
    .line 25
    invoke-direct {p3, p1, p2, p0}, Lcoil3/gif/AnimatedImageDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V

    .line 26
    .line 27
    .line 28
    return-object p3
.end method
