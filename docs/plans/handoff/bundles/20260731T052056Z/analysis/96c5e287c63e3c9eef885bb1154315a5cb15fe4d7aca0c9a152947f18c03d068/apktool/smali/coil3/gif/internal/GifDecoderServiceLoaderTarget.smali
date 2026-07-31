.class public final Lcoil3/gif/internal/GifDecoderServiceLoaderTarget;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/util/DecoderServiceLoaderTarget;


# virtual methods
.method public final factory()Lcoil3/decode/Decoder$Factory;
    .locals 1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1c

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcoil3/gif/AnimatedImageDecoder$Factory;

    .line 8
    .line 9
    invoke-direct {p0}, Lcoil3/gif/AnimatedImageDecoder$Factory;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcoil3/gif/GifDecoder$Factory;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
