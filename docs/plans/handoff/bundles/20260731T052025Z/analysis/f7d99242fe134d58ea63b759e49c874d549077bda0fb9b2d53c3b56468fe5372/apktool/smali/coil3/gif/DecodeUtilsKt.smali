.class public final Lcoil3/gif/DecodeUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field private static final GIF_HEADER_87A:Lokio/ByteString;

.field private static final GIF_HEADER_89A:Lokio/ByteString;

.field private static final HEIF_HEADER_FTYP:Lokio/ByteString;

.field private static final HEIF_HEADER_HEVC:Lokio/ByteString;

.field private static final HEIF_HEADER_HEVX:Lokio/ByteString;

.field private static final HEIF_HEADER_MSF1:Lokio/ByteString;

.field private static final WEBP_HEADER_RIFF:Lokio/ByteString;

.field private static final WEBP_HEADER_VPX8:Lokio/ByteString;

.field private static final WEBP_HEADER_WEBP:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    const-string v0, "GIF87a"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_87A:Lokio/ByteString;

    .line 10
    .line 11
    const-string v0, "GIF89a"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_89A:Lokio/ByteString;

    .line 18
    .line 19
    const-string v0, "RIFF"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_RIFF:Lokio/ByteString;

    .line 26
    .line 27
    const-string v0, "WEBP"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_WEBP:Lokio/ByteString;

    .line 34
    .line 35
    const-string v0, "VP8X"

    .line 36
    .line 37
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_VPX8:Lokio/ByteString;

    .line 42
    .line 43
    const-string v0, "ftyp"

    .line 44
    .line 45
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_FTYP:Lokio/ByteString;

    .line 50
    .line 51
    const-string v0, "msf1"

    .line 52
    .line 53
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_MSF1:Lokio/ByteString;

    .line 58
    .line 59
    const-string v0, "hevc"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVC:Lokio/ByteString;

    .line 66
    .line 67
    const-string v0, "hevx"

    .line 68
    .line 69
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVX:Lokio/ByteString;

    .line 74
    .line 75
    return-void
.end method

.method public static final isAnimatedHeif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcoil3/gif/DecodeUtilsKt;->isHeif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_MSF1:Lokio/ByteString;

    .line 8
    .line 9
    const-wide/16 v0, 0x8

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVC:Lokio/ByteString;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_HEVX:Lokio/ByteString;

    .line 26
    .line 27
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final isAnimatedWebP(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcoil3/gif/DecodeUtilsKt;->isWebP(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0xc

    .line 8
    .line 9
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_VPX8:Lokio/ByteString;

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-wide/16 v0, 0x15

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-wide/16 v0, 0x14

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    and-int/lit8 p0, p0, 0x2

    .line 36
    .line 37
    int-to-byte p0, p0

    .line 38
    if-lez p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static final isGif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_89A:Lokio/ByteString;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->GIF_HEADER_87A:Lokio/ByteString;

    .line 12
    .line 13
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public static final isHeif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->HEIF_HEADER_FTYP:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final isWebP(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_RIFF:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x8

    .line 12
    .line 13
    sget-object p0, Lcoil3/gif/DecodeUtilsKt;->WEBP_HEADER_WEBP:Lokio/ByteString;

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method
