.class public final Lcoil3/video/internal/VideoFrameDecoderServiceLoaderTarget;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/util/DecoderServiceLoaderTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic factory()Lcoil3/decode/Decoder$Factory;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcoil3/video/internal/VideoFrameDecoderServiceLoaderTarget;->factory()Lcoil3/video/VideoFrameDecoder$Factory;

    move-result-object p0

    return-object p0
.end method

.method public factory()Lcoil3/video/VideoFrameDecoder$Factory;
    .locals 0

    .line 1
    new-instance p0, Lcoil3/video/VideoFrameDecoder$Factory;

    .line 2
    .line 3
    invoke-direct {p0}, Lcoil3/video/VideoFrameDecoder$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final synthetic priority()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
