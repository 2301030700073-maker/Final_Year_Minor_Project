.class public final Lcoil3/gif/internal/GifDecoderServiceLoaderTarget;
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
.method public factory()Lcoil3/decode/Decoder$Factory;
    .locals 4

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1c

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-lt p0, v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcoil3/gif/AnimatedImageDecoder$Factory;

    .line 11
    .line 12
    invoke-direct {p0, v3, v2, v1}, Lcoil3/gif/AnimatedImageDecoder$Factory;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcoil3/gif/GifDecoder$Factory;

    .line 17
    .line 18
    invoke-direct {p0, v3, v2, v1}, Lcoil3/gif/GifDecoder$Factory;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final synthetic priority()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
