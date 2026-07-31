.class public final Lcoil3/gif/AnimatedImageDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# instance fields
.field public final enforceMinimumFrameDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-boolean v0, p0, Lcoil3/gif/AnimatedImageDecoder$Factory;->enforceMinimumFrameDelay:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 6

    .line 1
    iget-object v0, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_89A:Lokio/ByteString;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_87A:Lokio/ByteString;

    .line 18
    .line 19
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_RIFF:Lokio/ByteString;

    .line 27
    .line 28
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-wide/16 v2, 0x8

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_WEBP:Lokio/ByteString;

    .line 37
    .line 38
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-wide/16 v4, 0xc

    .line 45
    .line 46
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_VPX8:Lokio/ByteString;

    .line 47
    .line 48
    invoke-interface {v0, v4, v5, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-wide/16 v4, 0x15

    .line 55
    .line 56
    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-wide/16 v4, 0x14

    .line 67
    .line 68
    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    and-int/lit8 v1, v1, 0x2

    .line 73
    .line 74
    int-to-byte v1, v1

    .line 75
    if-lez v1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v4, 0x1e

    .line 81
    .line 82
    if-lt v1, v4, :cond_2

    .line 83
    .line 84
    const-wide/16 v4, 0x4

    .line 85
    .line 86
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_FTYP:Lokio/ByteString;

    .line 87
    .line 88
    invoke-interface {v0, v4, v5, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_MSF1:Lokio/ByteString;

    .line 95
    .line 96
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVC:Lokio/ByteString;

    .line 103
    .line 104
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    sget-object v1, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVX:Lokio/ByteString;

    .line 111
    .line 112
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 p0, 0x0

    .line 120
    return-object p0

    .line 121
    :cond_3
    :goto_0
    new-instance v0, Lcoil3/gif/AnimatedImageDecoder;

    .line 122
    .line 123
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 124
    .line 125
    iget-boolean p0, p0, Lcoil3/gif/AnimatedImageDecoder$Factory;->enforceMinimumFrameDelay:Z

    .line 126
    .line 127
    invoke-direct {v0, p1, p2, p0}, Lcoil3/gif/AnimatedImageDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method
