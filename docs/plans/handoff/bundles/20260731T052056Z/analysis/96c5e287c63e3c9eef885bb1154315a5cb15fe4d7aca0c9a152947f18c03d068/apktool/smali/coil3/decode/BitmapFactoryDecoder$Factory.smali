.class public final Lcoil3/decode/BitmapFactoryDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# instance fields
.field public final exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

.field public final parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/SemaphoreImpl;Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 2

    .line 1
    new-instance v0, Lcoil3/decode/BitmapFactoryDecoder;

    .line 2
    .line 3
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1, p0}, Lcoil3/decode/BitmapFactoryDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/SemaphoreImpl;Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
