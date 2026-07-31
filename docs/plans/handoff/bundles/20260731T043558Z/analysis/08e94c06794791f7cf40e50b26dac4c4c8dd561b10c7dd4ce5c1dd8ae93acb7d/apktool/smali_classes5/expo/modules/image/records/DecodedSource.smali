.class public final Lexpo/modules/image/records/DecodedSource;
.super Ljava/lang/Object;
.source "SourceMap.kt"

# interfaces
.implements Lexpo/modules/image/records/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/image/records/DecodedSource;",
        "Lexpo/modules/image/records/Source;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;)V",
        "getDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "createGlideModelProvider",
        "Lexpo/modules/image/GlideModelProvider;",
        "context",
        "Landroid/content/Context;",
        "width",
        "",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "scale",
        "",
        "getScale",
        "()D",
        "createGlideOptions",
        "Lcom/bumptech/glide/request/RequestOptions;",
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
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final height:I

.field private final scale:D

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lexpo/modules/image/records/DecodedSource;->drawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lexpo/modules/image/records/DecodedSource;->width:I

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lexpo/modules/image/records/DecodedSource;->height:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 51
    iput-wide v0, p0, Lexpo/modules/image/records/DecodedSource;->scale:D

    return-void
.end method


# virtual methods
.method public createGlideModelProvider(Landroid/content/Context;)Lexpo/modules/image/GlideModelProvider;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lexpo/modules/image/DecodedModelProvider;

    iget-object v0, p0, Lexpo/modules/image/records/DecodedSource;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Lexpo/modules/image/DecodedModelProvider;-><init>(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Lexpo/modules/image/GlideModelProvider;

    return-object p1
.end method

.method public createGlideOptions(Landroid/content/Context;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 57
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    const-string v0, "diskCacheStrategy(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    return-object p1
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/image/records/DecodedSource;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Lexpo/modules/image/records/DecodedSource;->height:I

    return v0
.end method

.method public getPixelCount()D
    .locals 2

    .line 42
    invoke-static {p0}, Lexpo/modules/image/records/Source$DefaultImpls;->getPixelCount(Lexpo/modules/image/records/Source;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lexpo/modules/image/records/DecodedSource;->scale:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 49
    iget v0, p0, Lexpo/modules/image/records/DecodedSource;->width:I

    return v0
.end method

.method public usesPlaceholderContentFit()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lexpo/modules/image/records/Source$DefaultImpls;->usesPlaceholderContentFit(Lexpo/modules/image/records/Source;)Z

    move-result v0

    return v0
.end method
