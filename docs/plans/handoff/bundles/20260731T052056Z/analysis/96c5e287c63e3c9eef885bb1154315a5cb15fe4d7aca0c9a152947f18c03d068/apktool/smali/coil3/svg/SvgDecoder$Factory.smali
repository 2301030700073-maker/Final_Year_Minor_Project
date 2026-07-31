.class public final Lcoil3/svg/SvgDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# instance fields
.field public final density:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcoil3/svg/SvgDecoder;->NO_DENSITY:Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    iput-object v0, p0, Lcoil3/svg/SvgDecoder$Factory;->density:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 4

    .line 1
    iget-object v0, p1, Lcoil3/fetch/SourceFetchResult;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 4
    .line 5
    const-string v1, "image/svg+xml"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    sget-object v3, Lcoil3/svg/DecodeUtilsKt;->LEFT_ANGLE_BRACKET:Lokio/ByteString;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcoil3/svg/DecodeUtilsKt;->SVG_TAG:Lokio/ByteString;

    .line 28
    .line 29
    const-wide/16 v2, 0x400

    .line 30
    .line 31
    invoke-interface {v0, v2, v3, v1}, Lokio/BufferedSource;->indexOf(JLokio/ByteString;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, -0x1

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_1
    :goto_0
    new-instance v0, Lcoil3/svg/SvgDecoder;

    .line 45
    .line 46
    iget-object p0, p0, Lcoil3/svg/SvgDecoder$Factory;->density:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2, p0}, Lcoil3/svg/SvgDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
