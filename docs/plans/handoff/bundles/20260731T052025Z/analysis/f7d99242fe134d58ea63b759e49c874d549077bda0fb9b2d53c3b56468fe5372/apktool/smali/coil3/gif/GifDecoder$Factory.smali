.class public final Lcoil3/gif/GifDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/gif/GifDecoder;
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

    .line 12
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcoil3/gif/GifDecoder$Factory;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcoil3/gif/GifDecoder$Factory;->enforceMinimumFrameDelay:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcoil3/gif/GifDecoder$Factory;-><init>(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/Decoder;
    .locals 1

    .line 1
    sget-object p3, Lcoil3/decode/DecodeUtils;->INSTANCE:Lcoil3/decode/DecodeUtils;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil3/fetch/SourceFetchResult;->getSource()Lcoil3/decode/ImageSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p3, v0}, Lcoil3/gif/DecodeUtilsKt;->isGif(Lcoil3/decode/DecodeUtils;Lokio/BufferedSource;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p3, Lcoil3/gif/GifDecoder;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcoil3/fetch/SourceFetchResult;->getSource()Lcoil3/decode/ImageSource;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-boolean p0, p0, Lcoil3/gif/GifDecoder$Factory;->enforceMinimumFrameDelay:Z

    .line 26
    .line 27
    invoke-direct {p3, p1, p2, p0}, Lcoil3/gif/GifDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V

    .line 28
    .line 29
    .line 30
    return-object p3
.end method

.method public final getEnforceMinimumFrameDelay()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/gif/GifDecoder$Factory;->enforceMinimumFrameDelay:Z

    .line 2
    .line 3
    return p0
.end method
