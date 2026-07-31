.class public final Lexpo/modules/image/ImageViewWrapperTarget;
.super Ljava/lang/Object;
.source "ImageViewWrapperTarget.kt"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageViewWrapperTarget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageViewWrapperTarget.kt\nexpo/modules/image/ImageViewWrapperTarget\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,351:1\n61#2:352\n12#3:353\n*S KotlinDebug\n*F\n+ 1 ImageViewWrapperTarget.kt\nexpo/modules/image/ImageViewWrapperTarget\n*L\n87#1:352\n95#1:353\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011J\u0008\u0010-\u001a\u00020!H\u0002J\"\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020\u00022\u0010\u00100\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020!H\u0016J\u0008\u00103\u001a\u00020!H\u0016J\u0008\u00104\u001a\u00020!H\u0016J\u0012\u00105\u001a\u00020!2\u0008\u00106\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u00107\u001a\u00020!2\u0008\u00108\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u00109\u001a\u00020!2\u0008\u00106\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010:\u001a\u00020!2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020!2\u0006\u0010;\u001a\u00020<H\u0016J\u0012\u0010>\u001a\u00020!2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\n\u0010?\u001a\u0004\u0018\u00010*H\u0016J\u000e\u0010@\u001a\u00020!2\u0006\u0010A\u001a\u00020BR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R\u000e\u0010\u001f\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lexpo/modules/image/ImageViewWrapperTarget;",
        "Lcom/bumptech/glide/request/target/Target;",
        "Landroid/graphics/drawable/Drawable;",
        "imageViewHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "hasSource",
        "",
        "getHasSource",
        "()Z",
        "setHasSource",
        "(Z)V",
        "isUsed",
        "setUsed",
        "sourceHeight",
        "",
        "getSourceHeight",
        "()I",
        "setSourceHeight",
        "(I)V",
        "sourceWidth",
        "getSourceWidth",
        "setSourceWidth",
        "placeholderHeight",
        "getPlaceholderHeight",
        "setPlaceholderHeight",
        "placeholderWidth",
        "getPlaceholderWidth",
        "setPlaceholderWidth",
        "cookie",
        "setCookie",
        "",
        "newValue",
        "placeholderContentFit",
        "Lexpo/modules/image/enums/ContentFit;",
        "getPlaceholderContentFit",
        "()Lexpo/modules/image/enums/ContentFit;",
        "setPlaceholderContentFit",
        "(Lexpo/modules/image/enums/ContentFit;)V",
        "request",
        "Lcom/bumptech/glide/request/Request;",
        "sizeDeterminer",
        "Lexpo/modules/image/SizeDeterminer;",
        "endLoadingNewImageTraceBlock",
        "onResourceReady",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "onStart",
        "onStop",
        "onDestroy",
        "onLoadStarted",
        "placeholder",
        "onLoadFailed",
        "errorDrawable",
        "onLoadCleared",
        "getSize",
        "cb",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "removeCallback",
        "setRequest",
        "getRequest",
        "clear",
        "requestManager",
        "Lcom/bumptech/glide/RequestManager;",
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
.field private cookie:I

.field private hasSource:Z

.field private final imageViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private isUsed:Z

.field private placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

.field private placeholderHeight:I

.field private placeholderWidth:I

.field private request:Lcom/bumptech/glide/request/Request;

.field private sizeDeterminer:Lexpo/modules/image/SizeDeterminer;

.field private sourceHeight:I

.field private sourceWidth:I


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

    const-string v0, "imageViewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->imageViewHolder:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceHeight:I

    .line 53
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceWidth:I

    .line 58
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderHeight:I

    .line 63
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderWidth:I

    .line 65
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->cookie:I

    .line 80
    new-instance v0, Lexpo/modules/image/SizeDeterminer;

    invoke-direct {v0, p1}, Lexpo/modules/image/SizeDeterminer;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sizeDeterminer:Lexpo/modules/image/SizeDeterminer;

    return-void
.end method

.method private final endLoadingNewImageTraceBlock()V
    .locals 5

    const-string v0, "["

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget v1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->cookie:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v1}, Lexpo/modules/image/Trace;->getTag()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lexpo/modules/image/Trace;->INSTANCE:Lexpo/modules/image/Trace;

    invoke-virtual {v2}, Lexpo/modules/image/Trace;->getLoadNewImageBlock()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lexpo/modules/image/ImageViewWrapperTarget;->cookie:I

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/tracing/Trace;->endAsyncSection(Ljava/lang/String;I)V

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->cookie:I

    .line 89
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final clear(Lcom/bumptech/glide/RequestManager;)V
    .locals 1

    const-string v0, "requestManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sizeDeterminer:Lexpo/modules/image/SizeDeterminer;

    invoke-virtual {v0}, Lexpo/modules/image/SizeDeterminer;->clearCallbacksAndListener()V

    .line 156
    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public final getHasSource()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->hasSource:Z

    return v0
.end method

.method public final getPlaceholderContentFit()Lexpo/modules/image/enums/ContentFit;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

    return-object v0
.end method

.method public final getPlaceholderHeight()I
    .locals 1

    .line 58
    iget v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderHeight:I

    return v0
.end method

.method public final getPlaceholderWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderWidth:I

    return v0
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1

    .line 152
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->imageViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 137
    invoke-interface {p1, v0, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sizeDeterminer:Lexpo/modules/image/SizeDeterminer;

    invoke-virtual {v0, p1}, Lexpo/modules/image/SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public final getSourceHeight()I
    .locals 1

    .line 48
    iget v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceHeight:I

    return v0
.end method

.method public final getSourceWidth()I
    .locals 1

    .line 53
    iget v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceWidth:I

    return v0
.end method

.method public final isUsed()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->isUsed:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lexpo/modules/image/ImageViewWrapperTarget;->endLoadingNewImageTraceBlock()V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lexpo/modules/image/ImageViewWrapperTarget;->imageViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 96
    invoke-direct {p0}, Lexpo/modules/image/ImageViewWrapperTarget;->endLoadingNewImageTraceBlock()V

    .line 97
    const-string p1, "ExpoImage"

    const-string p2, "The `ExpoImageViewWrapper` was deallocated, but the target wasn\'t canceled in time."

    invoke-static {p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    check-cast p2, Lexpo/modules/image/ExpoImageViewWrapper;

    .line 103
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->request:Lcom/bumptech/glide/request/Request;

    instance-of v1, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 104
    instance-of v1, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 105
    invoke-static {v0}, Lexpo/modules/image/ThumbnailRequestCoordinatorExtensionKt;->getPrivateFullRequest(Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 112
    invoke-direct {p0}, Lexpo/modules/image/ImageViewWrapperTarget;->endLoadingNewImageTraceBlock()V

    .line 115
    :cond_3
    invoke-virtual {p2, p0, p1, v2}, Lexpo/modules/image/ExpoImageViewWrapper;->onResourceReady(Lexpo/modules/image/ImageViewWrapperTarget;Landroid/graphics/drawable/Drawable;Z)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ImageViewWrapperTarget;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sizeDeterminer:Lexpo/modules/image/SizeDeterminer;

    invoke-virtual {v0, p1}, Lexpo/modules/image/SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public final setCookie(I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lexpo/modules/image/ImageViewWrapperTarget;->endLoadingNewImageTraceBlock()V

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iput p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->cookie:I

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setHasSource(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->hasSource:Z

    return-void
.end method

.method public final setPlaceholderContentFit(Lexpo/modules/image/enums/ContentFit;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderContentFit:Lexpo/modules/image/enums/ContentFit;

    return-void
.end method

.method public final setPlaceholderHeight(I)V
    .locals 0

    .line 58
    iput p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderHeight:I

    return-void
.end method

.method public final setPlaceholderWidth(I)V
    .locals 0

    .line 63
    iput p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->placeholderWidth:I

    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->request:Lcom/bumptech/glide/request/Request;

    return-void
.end method

.method public final setSourceHeight(I)V
    .locals 0

    .line 48
    iput p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceHeight:I

    return-void
.end method

.method public final setSourceWidth(I)V
    .locals 0

    .line 53
    iput p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->sourceWidth:I

    return-void
.end method

.method public final setUsed(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lexpo/modules/image/ImageViewWrapperTarget;->isUsed:Z

    return-void
.end method
