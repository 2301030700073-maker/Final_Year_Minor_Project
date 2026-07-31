.class public final Lexpo/modules/image/blurhash/BlurHashFetcher;
.super Ljava/lang/Object;
.source "BlurHashFetcher.kt"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J \u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0017H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/image/blurhash/BlurHashFetcher;",
        "Lcom/bumptech/glide/load/data/DataFetcher;",
        "Landroid/graphics/Bitmap;",
        "blurHash",
        "",
        "width",
        "",
        "height",
        "punch",
        "",
        "<init>",
        "(Ljava/lang/String;IIF)V",
        "cleanup",
        "",
        "cancel",
        "getDataClass",
        "Ljava/lang/Class;",
        "getDataSource",
        "Lcom/bumptech/glide/load/DataSource;",
        "loadData",
        "priority",
        "Lcom/bumptech/glide/Priority;",
        "callback",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final blurHash:Ljava/lang/String;

.field private final height:I

.field private final punch:F

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIF)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->blurHash:Ljava/lang/String;

    .line 15
    iput p2, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->width:I

    .line 16
    iput p3, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->height:I

    .line 17
    iput p4, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->punch:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 21
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 22
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

    iget-object v1, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->blurHash:Ljava/lang/String;

    iget v2, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->width:I

    iget v3, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->height:I

    iget v4, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->punch:F

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode$default(Lexpo/modules/image/blurhash/BlurhashDecoder;Ljava/lang/String;IIFZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lexpo/modules/image/blurhash/BlurhashDecodingFailure;

    iget-object v0, p0, Lexpo/modules/image/blurhash/BlurHashFetcher;->blurHash:Ljava/lang/String;

    invoke-direct {p1, v0}, Lexpo/modules/image/blurhash/BlurhashDecodingFailure;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 30
    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
