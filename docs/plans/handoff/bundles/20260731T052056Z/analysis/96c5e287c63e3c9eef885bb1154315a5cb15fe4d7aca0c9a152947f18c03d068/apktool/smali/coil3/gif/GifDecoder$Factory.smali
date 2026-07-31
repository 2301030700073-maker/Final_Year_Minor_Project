.class public final Lcoil3/gif/GifDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# virtual methods
.method public final create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 3

    .line 1
    iget-object p0, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    invoke-interface {p0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_89A:Lokio/ByteString;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_87A:Lokio/ByteString;

    .line 18
    .line 19
    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    new-instance p0, Lcoil3/gif/GifDecoder;

    .line 29
    .line 30
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lcoil3/gif/GifDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
