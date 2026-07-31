.class public final Lexpo/modules/image/events/GlideRequestListener;
.super Ljava/lang/Object;
.source "GlideRequestListener.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J2\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J6\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\tH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/image/events/GlideRequestListener;",
        "Lcom/bumptech/glide/request/RequestListener;",
        "Landroid/graphics/drawable/Drawable;",
        "expoImageViewWrapper",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "onLoadFailed",
        "",
        "e",
        "Lcom/bumptech/glide/load/engine/GlideException;",
        "model",
        "",
        "target",
        "Lcom/bumptech/glide/request/target/Target;",
        "isFirstResource",
        "onResourceReady",
        "resource",
        "dataSource",
        "Lcom/bumptech/glide/load/DataSource;",
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
.field private final expoImageViewWrapper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "expoImageViewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lexpo/modules/image/events/GlideRequestListener;->expoImageViewWrapper:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const-string p2, "target"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 33
    const-string p3, "\n call GlideException#logRootCauses(String) for more detail"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p2, p3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string p2, "Unknown error"

    .line 36
    :goto_0
    iget-object p3, p0, Lexpo/modules/image/events/GlideRequestListener;->expoImageViewWrapper:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lexpo/modules/image/ExpoImageViewWrapper;

    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {p3}, Lexpo/modules/image/ExpoImageViewWrapper;->getOnError$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 39
    new-instance p4, Lexpo/modules/image/records/ImageErrorEvent;

    invoke-direct {p4, p2}, Lexpo/modules/image/records/ImageErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p4}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 41
    :cond_1
    const-string p3, "ExpoImage"

    invoke-static {p3, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v6, p1

    const-string v0, "resource"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, v6, Lexpo/modules/image/svg/SVGPictureDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v6

    check-cast v4, Lexpo/modules/image/svg/SVGPictureDrawable;

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lexpo/modules/image/svg/SVGPictureDrawable;->getSvgIntrinsicWidth()I

    move-result v4

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_1
    if-eqz v0, :cond_2

    .line 55
    move-object v1, v6

    check-cast v1, Lexpo/modules/image/svg/SVGPictureDrawable;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lexpo/modules/image/svg/SVGPictureDrawable;->getSvgIntrinsicHeight()I

    move-result v0

    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_2
    move-object/from16 v8, p0

    move v5, v0

    .line 58
    iget-object v0, v8, Lexpo/modules/image/events/GlideRequestListener;->expoImageViewWrapper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lexpo/modules/image/ExpoImageViewWrapper;

    const/4 v9, 0x0

    if-nez v1, :cond_4

    return v9

    .line 59
    :cond_4
    invoke-virtual {v1}, Lexpo/modules/image/ExpoImageViewWrapper;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    new-instance v11, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;-><init>(Lexpo/modules/image/ExpoImageViewWrapper;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Object;IILandroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)V

    move-object v13, v11

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v9
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 20
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lexpo/modules/image/events/GlideRequestListener;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
