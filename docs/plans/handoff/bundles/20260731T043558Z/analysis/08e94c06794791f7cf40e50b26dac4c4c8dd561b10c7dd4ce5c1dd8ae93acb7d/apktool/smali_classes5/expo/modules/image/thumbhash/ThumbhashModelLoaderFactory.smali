.class public final Lexpo/modules/image/thumbhash/ThumbhashModelLoaderFactory;
.super Ljava/lang/Object;
.source "ThumbhashModelLoaderFactory.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lexpo/modules/image/thumbhash/ThumbhashModel;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashModelLoaderFactory;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
        "Lexpo/modules/image/thumbhash/ThumbhashModel;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "()V",
        "build",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "multiFactory",
        "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
        "teardown",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lexpo/modules/image/thumbhash/ThumbhashModel;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "multiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lexpo/modules/image/thumbhash/ThumbhashModelLoader;

    invoke-direct {p1}, Lexpo/modules/image/thumbhash/ThumbhashModelLoader;-><init>()V

    check-cast p1, Lcom/bumptech/glide/load/model/ModelLoader;

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
