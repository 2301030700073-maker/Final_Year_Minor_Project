.class final Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;
.super Ljava/lang/Object;
.source "ExpoImageViewWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageViewWrapper;->onResourceReady(Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/image/ImageViewWrapperTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $previousView:Lexpo/modules/image/ExpoImageView;

.field final synthetic $target:Lexpo/modules/image/ImageViewWrapperTarget;

.field final synthetic this$0:Lexpo/modules/image/ExpoImageViewWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/image/ExpoImageView;Lexpo/modules/image/ImageViewWrapperTarget;Lexpo/modules/image/ExpoImageViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->$previousView:Lexpo/modules/image/ExpoImageView;

    iput-object p2, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->$target:Lexpo/modules/image/ImageViewWrapperTarget;

    iput-object p3, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->this$0:Lexpo/modules/image/ExpoImageViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/image/ImageViewWrapperTarget;
    .locals 3

    .line 265
    iget-object v0, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->$previousView:Lexpo/modules/image/ExpoImageView;

    .line 266
    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageView;->recycleView()Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->$target:Lexpo/modules/image/ImageViewWrapperTarget;

    iget-object v2, p0, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->this$0:Lexpo/modules/image/ExpoImageViewWrapper;

    .line 270
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-virtual {v2}, Lexpo/modules/image/ExpoImageViewWrapper;->getRequestManager$expo_image_release()Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/image/ImageViewWrapperTarget;->clear(Lcom/bumptech/glide/RequestManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageViewWrapper$onResourceReady$1$1$clearPreviousView$1;->invoke()Lexpo/modules/image/ImageViewWrapperTarget;

    move-result-object v0

    return-object v0
.end method
