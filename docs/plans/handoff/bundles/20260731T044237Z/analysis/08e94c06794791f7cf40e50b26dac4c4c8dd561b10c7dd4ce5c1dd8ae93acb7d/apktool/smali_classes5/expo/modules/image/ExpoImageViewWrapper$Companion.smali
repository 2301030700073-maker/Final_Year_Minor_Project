.class public final Lexpo/modules/image/ExpoImageViewWrapper$Companion;
.super Ljava/lang/Object;
.source "ExpoImageViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/ExpoImageViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/image/ExpoImageViewWrapper$Companion;",
        "",
        "<init>",
        "()V",
        "requestManager",
        "Lcom/bumptech/glide/RequestManager;",
        "appContextRef",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/AppContext;",
        "activityRef",
        "Landroid/app/Activity;",
        "getOrCreateRequestManager",
        "appContext",
        "activity",
        "createNewRequestManager",
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
.method private constructor <init>()V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/image/ExpoImageViewWrapper$Companion;-><init>()V

    return-void
.end method

.method private final createNewRequestManager(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 626
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const-string v0, "with(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getOrCreateRequestManager(Lexpo/modules/kotlin/AppContext;Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 3

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    sget-object v0, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    monitor-enter v0

    .line 607
    :try_start_0
    invoke-static {}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getRequestManager$cp()Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 608
    sget-object v1, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    invoke-direct {v1, p2}, Lexpo/modules/image/ExpoImageViewWrapper$Companion;->createNewRequestManager(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 609
    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    invoke-static {v1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setRequestManager$cp(Lcom/bumptech/glide/RequestManager;)V

    .line 610
    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setAppContextRef$cp(Ljava/lang/ref/WeakReference;)V

    .line 611
    sget-object p1, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setActivityRef$cp(Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit v0

    return-object v1

    .line 615
    :cond_0
    :try_start_1
    invoke-static {}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getAppContextRef$cp()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lexpo/modules/image/ExpoImageViewWrapper;->access$getActivityRef$cp()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 623
    :cond_1
    monitor-exit v0

    return-object v1

    .line 616
    :cond_2
    :goto_0
    :try_start_2
    sget-object v1, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    invoke-direct {v1, p2}, Lexpo/modules/image/ExpoImageViewWrapper$Companion;->createNewRequestManager(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 617
    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    invoke-static {v1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setRequestManager$cp(Lcom/bumptech/glide/RequestManager;)V

    .line 618
    sget-object v2, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setAppContextRef$cp(Ljava/lang/ref/WeakReference;)V

    .line 619
    sget-object p1, Lexpo/modules/image/ExpoImageViewWrapper;->Companion:Lexpo/modules/image/ExpoImageViewWrapper$Companion;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lexpo/modules/image/ExpoImageViewWrapper;->access$setActivityRef$cp(Ljava/lang/ref/WeakReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 623
    monitor-exit v0

    throw p1
.end method
