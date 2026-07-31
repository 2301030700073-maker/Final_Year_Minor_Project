.class public final Lcoil3/decode/StaticImageDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# instance fields
.field public final parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 2

    .line 1
    invoke-static {p2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 14
    .line 15
    invoke-static {v0, p2}, Lcoil3/decode/StaticImageDecoderKt;->toImageDecoderSourceOrNull(Lcoil3/decode/ImageSource;Lcoil3/request/Options;)Landroid/graphics/ImageDecoder$Source;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance v1, Lcoil3/decode/StaticImageDecoder;

    .line 24
    .line 25
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 26
    .line 27
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1, p2, p0}, Lcoil3/decode/StaticImageDecoder;-><init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lcoil3/request/Options;Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
