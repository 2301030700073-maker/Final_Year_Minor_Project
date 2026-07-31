.class public final Lcoil3/gif/internal/FrameDelayRewritingSourceKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcoil3/decode/DecodeUtils;->INSTANCE:Lcoil3/decode/DecodeUtils;

    .line 4
    .line 5
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcoil3/gif/DecodeUtilsKt;->isGif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcoil3/gif/internal/FrameDelayRewritingSource;

    .line 16
    .line 17
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Lcoil3/gif/internal/FrameDelayRewritingSource;-><init>(Lokio/Source;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lokio/RealBufferedSource;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 p1, 0x4

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v0, p0, v1, p1, v1}, Lcoil3/decode/ImageSourceKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;ILjava/lang/Object;)Lcoil3/decode/ImageSource;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_0
    return-object p0
.end method
