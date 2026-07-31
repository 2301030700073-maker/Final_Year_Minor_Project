.class public final Lexpo/modules/image/svg/SVGDrawableTranscoder;
.super Ljava/lang/Object;
.source "SVGDrawableTranscoder.kt"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/caverock/androidsvg/SVG;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/image/svg/SVGDrawableTranscoder;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;",
        "Lcom/caverock/androidsvg/SVG;",
        "Landroid/graphics/drawable/Drawable;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "transcode",
        "Lcom/bumptech/glide/load/engine/Resource;",
        "toTranscode",
        "options",
        "Lcom/bumptech/glide/load/Options;",
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
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/image/svg/SVGDrawableTranscoder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/image/svg/SVGDrawableTranscoder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/caverock/androidsvg/SVG;",
            ">;",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-string v0, "toTranscode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/caverock/androidsvg/SVG;

    .line 32
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 35
    :cond_1
    sget-object v2, Lexpo/modules/image/CustomOptions;->INSTANCE:Lexpo/modules/image/CustomOptions;

    invoke-virtual {v2}, Lexpo/modules/image/CustomOptions;->getTintColor()Lcom/bumptech/glide/load/Option;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVGStylerKt;->applyTintColor(Lcom/caverock/androidsvg/SVG;I)V

    .line 40
    :cond_2
    new-instance p2, Lexpo/modules/image/svg/SVGPictureDrawable;

    .line 41
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object p1

    const-string v2, "renderToPicture(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p2, p1, v0, v1}, Lexpo/modules/image/svg/SVGPictureDrawable;-><init>(Landroid/graphics/Picture;II)V

    .line 45
    new-instance p1, Lcom/bumptech/glide/load/resource/SimpleResource;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    return-object p1
.end method
